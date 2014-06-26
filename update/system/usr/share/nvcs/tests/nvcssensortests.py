# Copyright (c) 2012-2013 NVIDIA Corporation.  All rights reserved.
#
# NVIDIA Corporation and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA Corporation is strictly prohibited.
#

from nvcstestcore import *
import nvcstestutils

class NvCSGainTest(NvCSTestBase):
    "Gain test"

    startGainVal = 0.0
    stopGainVal = 0.0
    step = 0.0
    errMargin = 10.0/100.0

    def __init__(self, options):
        NvCSTestBase.__init__(self, "Gain")
        self.options = options

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)
        self.obGraph.setGraphType(GraphType.RAW)

        return NvCSTestResult.SUCCESS

    def runTest(self, args):
        # get the gain range
        gainRange = self.obCamera.getAttr(nvcamera.attr_gainrange)
        self.startGainVal = gainRange[0]
        self.stopGainVal = gainRange[1]
        self.step = (gainRange[1] - gainRange[0])/10.0

        while(self.startGainVal <= self.stopGainVal):
            self.obCamera.startPreview()
            self.obCamera.setAttr(nvcamera.attr_bayergains, [self.startGainVal] * 4)

            # take an image
            fileName = "%s_%s_test" % (self.testID, str(self.startGainVal).replace('.', '_'))
            rawFilePath = os.path.join(self.testDir, fileName + ".nvraw")
            self.logger.info("capturing raw image with gains set to %.2f..." % self.startGainVal)

            # capture raw image
            try:
                self.obCamera.captureRAWImage(rawFilePath, False)
            except nvcamera.NvCameraException, err:
                if (err.value == nvcamera.NvError_NotSupported):
                    self.logger.info("raw capture is not supported")
                    return NvCSTestResult.SKIPPED
                else:
                    raise

            self.obCamera.stopPreview()

            if not self.nvrf.readFile(rawFilePath):
                self.logger.error("couldn't open the file: %s" % rawFilePath)
                return NvCSTestResult.ERROR

            if (abs(self.nvrf._sensorGains[0] -  self.startGainVal) > self.errMargin):
                self.logger.error("SensorGains value is not correct in the raw header: %f" % self.nvrf._sensorGains[0])
                return NvCSTestResult.ERROR
            self.startGainVal = self.startGainVal + self.step

        return NvCSTestResult.SUCCESS

class NvCSExposureTimeTest(NvCSTestBase):
    "Exposure Time Test"

    errMargin = 10.0/100.0

    # cap long exposure time since driver might not
    # support very long exposure time
    exposureTimeCap = 200.0 # this is in ms

    def __init__(self, options):
        NvCSTestBase.__init__(self, "Exposure_Time")
        self.options = options

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)
        self.obGraph.setGraphType(GraphType.RAW)

        return NvCSTestResult.SUCCESS

    def runTest(self, args):
        if (args != None):
            self.exposureTimeValues = args

        # query and print exposuretime range
        # we need to start preview to get correct exposure time range
        self.obCamera.startPreview()
        exposureTimeRange = self.obCamera.getAttr(nvcamera.attr_exposuretimerange)
        self.obCamera.stopPreview()
        self.logger.info("exposuretime range: [%fsec, %fsec]" %  (exposureTimeRange[0], exposureTimeRange[1]))

        if(exposureTimeRange[0] <= 0 or exposureTimeRange[1] <= 0):
            self.logger.error("exposuretime range is invalid")
            return NvCSTestResult.ERROR

        retVal = NvCSTestResult.SUCCESS

        # clamp minimum exposure to 100us
        if (exposureTimeRange[0] >= 0.0001):
            startExpTimeValue = exposureTimeRange[0]
        else:
            startExpTimeValue = 0.0001
        stopExpTimeValue = self.exposureTimeCap/1000 # convert it to seconds
        step = (stopExpTimeValue - startExpTimeValue)/4

        while startExpTimeValue <= stopExpTimeValue:
            # take an image specified exposure time
            self.logger.info("capturing raw image with exposure time set to %fs..." % startExpTimeValue)
            self.obCamera.startPreview()

            self.obCamera.setAttr(nvcamera.attr_exposuretime, startExpTimeValue)

            fileName = ("%s_%.5f_test" % (self.testID, startExpTimeValue)).replace('.','_') \
                                                                          .replace('-','_')
            rawFilePath = os.path.join(self.testDir, fileName + ".nvraw")

            # capture raw image
            try:
                self.obCamera.captureRAWImage(rawFilePath, False)
            except nvcamera.NvCameraException, err:
                if (err.value == nvcamera.NvError_NotSupported):
                    self.logger.info("raw capture is not supported")
                    return NvCSTestResult.SKIPPED
                else:
                    raise

            self.obCamera.stopPreview()

            if not self.nvrf.readFile(rawFilePath):
                self.logger.error("couldn't open the file: %s" % rawFilePath)
                retVal = NvCSTestResult.ERROR
                break
            minExpectedExpTime = startExpTimeValue - (startExpTimeValue * self.errMargin)
            maxExpectedExpTime = startExpTimeValue + (startExpTimeValue * self.errMargin)

            # check SensorExposure value
            if ((self.nvrf._exposureTime) < minExpectedExpTime or
                (self.nvrf._exposureTime) > maxExpectedExpTime):
                self.logger.error( "exposure time value is not correct in the raw header: %.6f" %
                                    self.nvrf._exposureTime)
                self.logger.error( "exposure time value should be between %.6f and %.6f" %
                                    (minExpectedExpTime, maxExpectedExpTime))
                retVal = NvCSTestResult.ERROR
                break

            expTime = self.obCamera.getAttr(nvcamera.attr_exposuretime)
            if (expTime < minExpectedExpTime or expTime > maxExpectedExpTime):
                self.logger.error("exposuretime is not set in the driver...")
                self.logger.error( "exposure value %.6f should be between %.6f and %.6f" %
                                    (expTime, minExpectedExpTime, maxExpectedExpTime))
                retVal = NvCSTestResult.ERROR
                break

            startExpTimeValue = startExpTimeValue + step

        return retVal

class NvCSLinearityRawTest(NvCSTestBase):
    "Linearity Raw Image Test"

    RunUsingClassicRanges = False

    GainStartVal = 2.0
    GainStopVal = 6.0
    GainExpo = 0.050
    GainStep = 1.0

    ExpTimeStart = 0.050
    ExpTimeStop = 0.250 # This is referenced for both query and non query runs
    ExpTimeGain = 2.0
    ExpTimeStep = 0.333

    qMaxExpTime = 0.0
    qMinExpTime = 0.0
    qMaxGain = 0.0
    qMinGain = 0.0

    defFocusPos = 450
    qMinFocusPos = 0
    qMaxFocusPos = 0
    NumImages = 6.0
    noShuffle = False
    TestSensorRangeMax = 0.95
    TestSensorGainRange = 0.60
    BayerPhaseConfirmed = True
    MaxPixelVal = 0

    def __init__(self, options):
        NvCSTestBase.__init__(self, "Linearity")
        self.options = options

    def needTestSetup(self):
        return True

    def getSetupString(self):
        return "\n\nThis test is best ran with a controlled uniform neutral lighting scene. Please cover the sensor with the provided light panel TURNED OFF. A second prompt will ask you to turn on after black level captures.\n\n"

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)
        self.obGraph.setGraphType(GraphType.RAW)

        return NvCSTestResult.SUCCESS

    def getBlackLevel(self):

        # Test BlackLevel using minimum settings reported
        # Also test a smaller exposure as the driver should be limiting the config
        BLList = []
        BLList.append(NvCSTestConfiguration(
                "BlackLevel", "BL_%.5f_%.2f" % (self.qMinExpTime, self.qMinGain),
                self.qMinExpTime, self.qMinGain))
        BLList.append(NvCSTestConfiguration(
                "BlackLevel", "BL_%.5f_%.2f" % (self.qMinExpTime*0.1, self.qMinGain),
                self.qMinExpTime*0.1, self.qMinGain))

        self.logger.info("\n\nThe test will now take captures for black levels.\n\n")

        NvCSTestConfiguration.runConfigList(self, BLList)

        self.MaxPixelVal = math.pow(2, BLList[0].BitsPerPixel) - 1.0

        # Setting initial black levels to be overwritten
        BlackLevel = [self.MaxPixelVal, self.MaxPixelVal, self.MaxPixelVal]

        for imageStat in BLList:
            # Leaving in a sanity check of the blacklevel configuration
            if (imageStat.testing == "BlackLevel"):
                if(BlackLevel[0] > imageStat.Avg["Color"][0]):
                    BlackLevel[0] = imageStat.Avg["Color"][0]
                if(BlackLevel[1] > imageStat.Avg["Color"][1]):
                    BlackLevel[1] = imageStat.Avg["Color"][1]
                if(BlackLevel[2] > imageStat.Avg["Color"][2]):
                    BlackLevel[2] = imageStat.Avg["Color"][2]
            else:
                self.logger.info("\nIT SHOULD NOT HAVE REACHED THIS CODE. IT RAN INTO NON BLACKLEVEL CONFIG\n")

        self.logger.info("\nPerceived Black Level:  %.1f, %.1f, %.1f\tMax Pixel Intensity: %d\n" %
            (BlackLevel[0], BlackLevel[1], BlackLevel[2], self.MaxPixelVal))
        self.confirmPrompt("\n\nThe test took its black level captures. Please TURN THE LIGHT ON.\n\n")

        return BlackLevel


    def runLinearity(self, configList, testName, bias):
        MIN_RSQUARED_ERROR = 0.970
        MIN_SLOPE = 10.0
        Linearity = True
        OverExposed = True
        UnderExposed = True
        logStr = ""
        rSquared = [0.0, 0.0, 0.0] # Correlation Coefficient
        a = [0.0, 0.0, 0.0] # Slope
        b = [0.0, 0.0, 0.0] # Y-intercept

        NvCSTestConfiguration.runConfigList(self, configList)
        logStr, rSquared, a, b, OverExposed, UnderExposed = NvCSTestConfiguration.processLinearityStats(testName, configList, bias)

        # These two conditions should not be reached because of earlier environment check
        if (OverExposed):
            logStr += ("\n\nPlease make sure you are using the light panel to keep a controlled uniform lighting\n")
            logStr += ("The sample set may have been overexposed.  Re-Run the test with lower lights or darker colors.\n")
            Linearity = False
        if (UnderExposed):
            logStr += ("\n\nPlease make sure you are using the light panel to keep a controlled uniform lighting\n")
            logStr += ("The sample set may have been underexposed.  Re-Run the test with more light or brighter colors.\n")
            Linearity = False

        for j in range(0, 3):
            if (rSquared[j] < MIN_RSQUARED_ERROR):
                Linearity = False
                logStr += ("\n\n%s FAILED, minimum R^2 value is %f, minimum slope value is %f\n" % (testName, MIN_RSQUARED_ERROR, MIN_SLOPE))
                logStr += ("The minimum R^2 (correlation coefficient) value has not been met. (%f vs %f)\n" % (rSquared[j], MIN_RSQUARED_ERROR))
            if (a[j] < MIN_SLOPE):
                Linearity = False
                logStr += ("%s FAILED, minimum R^2 value is %f, minimum slope value is %f\n" % (testName, MIN_RSQUARED_ERROR, MIN_SLOPE))
                logStr += ("The minimum slope value has not been met. (%f vs %f)\n" % (a[j], MIN_SLOPE))

        return Linearity, logStr

    def runSNR(self, configList, testName, bias=[0.0, 0.0, 0.0]):
        MIN_SNR_dB = 30.0
        Linearity = True
        SNR = [0.0, 0.0, 0.0]
        MaxTracker = -1
        MinTracker = -1
        logStr = ""

        NvCSTestConfiguration.runConfigList(self, configList)
        logStr, SNR, MaxTracker, MinTracker = NvCSTestConfiguration.processSNRStats(testName, configList, "Color", bias)

        for j in range(0, 3):
            if(SNR[j] < MIN_SNR_dB):
                Linearity = False

        return Linearity, logStr

    def runDummyEnvCheck(self, BlackLevel):
        self.RunUsingClassicRanges = True
        self.logger.info("ATTEMPTING TO RUN CLASSIC HARD CODED RANGES FOR THE LINEARITY TEST.\n\n")

        # Use old dummy ranges
        self.NumImages = 6.0
        self.GainStartVal = 2.0
        self.GainStopVal = 6.0
        self.GainStep = (self.GainStopVal-self.GainStartVal)/self.NumImages
        self.GainExpo = 0.050
        self.ExpTimeStart = 0.050
        self.ExpTimeStop = 0.250
        self.ExpTimeStep = (self.ExpTimeStop-self.ExpTimeStart)/self.NumImages
        self.ExpTimeGain = 2.0

        # Check environment
        envCheckList = []
        # The lowest configuration setting the test will run. (Used for underexposure checking)
        envCheckList.append(NvCSTestConfiguration(
            "TestMinEnv",
            "envCheck_%.5f_%.2f" % (self.ExpTimeStart, self.GainStartVal),
            self.ExpTimeStart,
            self.GainStartVal))
        # The highest exposure configuration setting the test will run. (Used for overexposure checking)
        envCheckList.append(NvCSTestConfiguration(
            "TestMaxEnv",
            "envCheck_%.5f_%.2f" % (self.ExpTimeStop, self.GainStartVal),
            self.ExpTimeStop,
            self.GainStartVal))
        # The highest gain configuration setting the test will run. (Used for overexposure checking)
        envCheckList.append(NvCSTestConfiguration(
            "TestMaxEnv",
            "envCheck_%.5f_%.2f" % (self.ExpTimeStart, self.GainStopVal),
            self.ExpTimeStart,
            self.GainStopVal))

        NvCSTestConfiguration.runConfigList(self, envCheckList)

        # Begin checking image values for overexposure and underexposure
        UnderExposed = False
        OverExposed = False
        self.BayerPhaseConfirmed = True
        BlackLevelPadding = NvCSTestConfiguration.BlackLevelPadding

        self.logger.info("Testing the environment with the limits of the capture settings the linearity test will run...")
        self.logger.info("BlackLevel reference for underexposure: [R:%.1f, G:%.1f, B:%.1f]" %
            (BlackLevel[0], BlackLevel[1], BlackLevel[2]))

        for imageStat in envCheckList:
            self.logger.info("Capture taken with exposure %.3f, gain %.2f: [R:%.1f, G:%.1f, B:%.1f]" %
                (imageStat.attr_expo, imageStat.attr_gain,
                 imageStat.Avg["Color"][0], imageStat.Avg["Color"][1], imageStat.Avg["Color"][2]))
            if (imageStat.Avg["Color"][0] < (BlackLevel[0]+BlackLevelPadding)):
                UnderExposed = True
            if (imageStat.Avg["Color"][1] < (BlackLevel[1]+BlackLevelPadding)):
                UnderExposed = True
            if (imageStat.Avg["Color"][2] < (BlackLevel[2]+BlackLevelPadding)):
                UnderExposed = True

            if (imageStat.Avg["Color"][0] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (imageStat.Avg["Color"][1] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (imageStat.Avg["Color"][2] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True

            # Run Bayer order check
            percErr = (abs(imageStat.AvgPhaseGR - imageStat.AvgPhaseGB)/max(imageStat.AvgPhaseGR, imageStat.AvgPhaseGB))
            if(percErr > 1.0):
                self.logger.error("Average GR (%f) & Average GB (%f) have a %f%% error (1%% is Passing)" %
                    (imageStat.AvgPhaseGR, imageStat.AvgPhaseGB, percErr))
                self.confirmPrompt("Average GR (%f) & Average GB (%f) should be approximately equal" %
                    (imageStat.AvgPhaseGR, imageStat.AvgPhaseGB))
                self.BayerPhaseConfirmed = False
            if(imageStat.AvgPhaseB < imageStat.AvgPhaseR):
                self.logger.error("\n\nAverage B (%f) should be GREATER than R (%f).\n\n" %
                    (imageStat.AvgPhaseB, imageStat.AvgPhaseR))
                self.BayerPhaseConfirmed = False
            if(self.BayerPhaseConfirmed == False):
                self.confirmPrompt("The bayer phase could not automatically be validated.\n\
                    Average B (%f) should be GREATER than R (%f)" %
                    (imageStat.AvgPhaseB, imageStat.AvgPhaseR))

        if (OverExposed):
            self.logger.info("")
            self.logger.info("")
            self.logger.error("All captures must have values below [%.2f, %.2f, %.2f] to reduce risk of overexposure." %
                (self.TestSensorRangeMax*self.MaxPixelVal, self.TestSensorRangeMax*self.MaxPixelVal, self.TestSensorRangeMax*self.MaxPixelVal))
            self.logger.error("Environment is too bright to run test.  Re-Run the test with lower lights, or darker colors.")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR
        if (UnderExposed):
            self.logger.info("")
            self.logger.info("")
            self.logger.error("All captures must have values above [%.2f, %.2f, %.2f] to reduce risk of underexposure." %
                (BlackLevel[0]+BlackLevelPadding, BlackLevel[1]+BlackLevelPadding, BlackLevel[2]+BlackLevelPadding))
            self.logger.error("Environment is too dark to run test.  Re-Run the test with more light or brighter colors.")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR

        return NvCSTestResult.SUCCESS

    def runEnvCheck(self, BlackLevel):
        if(self.options.useClassicRanges == True):
            self.logger.info("A command line option flag was used to run the classic hard coded ranges for the test.")
            return self.runDummyEnvCheck(BlackLevel)

        else: # Using actual queried ranges

            # Find appropriate exposure value to use in testing the gain linearity
            GainStartVal = self.qMinGain
            GainStopVal = self.qMaxGain * self.TestSensorGainRange
            GainExpo = self.qMinExpTime

            UnderExposed = True
            OverExposed = False
            self.BayerPhaseConfirmed = True
            BlackLevelPadding = NvCSTestConfiguration.BlackLevelPadding

            # First determine the lowest exposure to run with minimum gain
            # We check that the lowest exposure configuration should be at
            # least BlackLevelPadding (10) pixel values higher than reference black level
            self.logger.info("\n\nDetermining exposure to run in gain linearity to avoid dark level noise.\n\n")
            while(UnderExposed == True):
                config = NvCSTestConfiguration("TestMinGain",
                        "envCheck_%.5f_%.2f_test" % (GainExpo, GainStartVal), GainExpo, GainStartVal)
                NvCSTestConfiguration.runConfig(self, config)

                UnderExposed = False
                self.logger.info("Determining exposure to run in gain linearity.  Checking %fs [%.2f, %.2f, %.2f]" %
                    (GainExpo, config.Avg["Color"][0], config.Avg["Color"][1], config.Avg["Color"][2]))

                if (config.Avg["Color"][0] < (BlackLevel[0]+BlackLevelPadding)):
                    UnderExposed = True
                if (config.Avg["Color"][1] < (BlackLevel[1]+BlackLevelPadding)):
                    UnderExposed = True
                if (config.Avg["Color"][2] < (BlackLevel[2]+BlackLevelPadding)):
                    UnderExposed = True

                if (UnderExposed == True):
                    GainExpo += 0.010

                # If we have trouble grabbing a valid exposure setting, try
                # Dummy settings.  Arbitrarily picking half the range
                if (GainExpo > self.qMaxExpTime/2.0):
                    self.logger.info("\n\nExposure has reached %f, which is greater than half the queried maximum (%f)\n\n" % (GainExpo, self.qMaxExpTime))
                    self.logger.info("\n\nWill try to run classic hard coded ranges instead.\n\n")
                    # Should elaborate on reasons in document here
                    return self.runDummyEnvCheck(BlackLevel)

            # Check if highest desired gain will overexpose with
            # previously determined exposure setting
            config = NvCSTestConfiguration("TestMaxGain",
                "envCheck_%.5f_%.2f_test" % (GainExpo, GainStopVal), GainExpo, GainStopVal)
            NvCSTestConfiguration.runConfig(self, config)

            self.logger.info("Determining exposure to run in gain linearity.  Checking Gain %f [%.2f, %.2f, %.2f]" %
                (GainStopVal, config.Avg["Color"][0], config.Avg["Color"][1], config.Avg["Color"][2]))

            if (config.Avg["Color"][0] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (config.Avg["Color"][1] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (config.Avg["Color"][2] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True

            if(OverExposed == True):
                # Add a print stating the reason for using dummy values
                self.logger.info("\n\nValues captured with highest desired gain (%f) will overexpose the sensor.\n\n")
                self.logger.info("\n\nWill try to run classic hard coded ranges instead.\n\n")
                return self.runDummyEnvCheck(BlackLevel)

            self.GainStartVal = GainStartVal
            self.GainStopVal = GainStopVal
            self.GainStep = (GainStopVal-GainStartVal)/self.NumImages
            self.GainExpo = GainExpo

            # Gain test typically has shown greater intensity results, checking bayer order here
            percErr = (abs(config.AvgPhaseGR - config.AvgPhaseGB)/max(config.AvgPhaseGR, config.AvgPhaseGB))
            if(percErr > 1.0):
                self.logger.error("Average GR (%f) & Average GB (%f) have a %f%% error (1%% is Passing)" %
                    (config.AvgPhaseGR, config.AvgPhaseGB, percErr))
                self.confirmPrompt("Average GR (%f) & Average GB (%f) should be approximately equal" %
                    (config.AvgPhaseGR, config.AvgPhaseGB))
                self.BayerPhaseConfirmed = False
            if(config.AvgPhaseB < config.AvgPhaseR):
                self.logger.error("\n\nAverage B (%f) should be GREATER than R (%f).\n\n" %
                    (config.AvgPhaseB, config.AvgPhaseR))
                self.BayerPhaseConfirmed = False
            if(self.BayerPhaseConfirmed == False):
                self.confirmPrompt("The bayer phase could not automatically be validated.\n\
                Average B (%f) should be GREATER than R (%f)" %
                    (config.AvgPhaseB, config.AvgPhaseR))

            # Find appropriate staring exposure value to use in testing exposure linearity

            ExpTimeStart = self.qMinExpTime
            ExpTimeStop = self.ExpTimeStop
            if(ExpTimeStop > self.qMaxExpTime):
                ExpTimeStop = self.qMaxExpTime
            ExpTimeGain = self.ExpTimeGain

            UnderExposed = True
            OverExposed = False

            # First determine the lowest exposure to run with desired gain
            # We check that the lowest exposure configuration should be at
            # least BlackLevelPadding (10) pixel values higher than reference black level
            self.logger.info("\n\nDetermining minimum exposure to run in exposure linearity to avoid dark level noise.\n\n")
            while(UnderExposed == True):
                config = NvCSTestConfiguration("TestMinExp",
                        "envCheck_%.5f_%.2f_test" % (ExpTimeStart, ExpTimeGain), ExpTimeStart, ExpTimeGain)
                NvCSTestConfiguration.runConfig(self, config)

                UnderExposed = False
                self.logger.info("Determining mininum exposure to run in exposure linearity.  Checking %fs [%.2f, %.2f, %.2f]" %
                    (ExpTimeStart, config.Avg["Color"][0], config.Avg["Color"][1], config.Avg["Color"][2]))

                if (config.Avg["Color"][0] < (BlackLevel[0]+BlackLevelPadding)):
                    UnderExposed = True
                if (config.Avg["Color"][1] < (BlackLevel[1]+BlackLevelPadding)):
                    UnderExposed = True
                if (config.Avg["Color"][2] < (BlackLevel[2]+BlackLevelPadding)):
                    UnderExposed = True

                if (UnderExposed == True):
                    ExpTimeStart += 0.010

                # If we have trouble grabbing a valid exposure setting, try
                # Dummy settings.  Arbitrarily picking half the range
                if (ExpTimeStart > self.qMaxExpTime/2.0):
                    self.logger.info("\n\nExposure has reached %f, which is greater than half the queried maximum (%f)\n\n" % (ExpTimeStart, self.qMaxExpTime))
                    self.logger.info("\n\nWill try to run classic hard coded ranges instead.\n\n")
                    return self.runDummyEnvCheck(BlackLevel)

            # Check if highest desired exposure will overexpose with
            # previously determined exposure setting
            config = NvCSTestConfiguration("TestMaxExp",
                "envCheck_%.5f_%.2f_test" % (ExpTimeStop, ExpTimeGain), ExpTimeStop, ExpTimeGain)
            NvCSTestConfiguration.runConfig(self, config)

            self.logger.info("Determining exposure to run in exposure linearity.  Checking with stop Exposure %fs [%.2f, %.2f, %.2f]" %
                (ExpTimeStop, config.Avg["Color"][0], config.Avg["Color"][1], config.Avg["Color"][2]))
            if (config.Avg["Color"][0] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (config.Avg["Color"][1] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True
            if (config.Avg["Color"][2] > (self.TestSensorRangeMax*self.MaxPixelVal)):
                OverExposed = True

            if(OverExposed == True):
                self.logger.info("\n\nValues captured with highest desired gain (%f) will overexpose the sensor.\n\n")
                self.logger.info("\n\nWill try to run classic hard coded ranges instead.\n\n")
                return self.runDummyEnvCheck(BlackLevel)

            self.ExpTimeStart = ExpTimeStart
            self.ExpTimeStop = ExpTimeStop
            self.ExpTimeStep = (ExpTimeStop-ExpTimeStart)/self.NumImages
            self.ExpTimeGain = ExpTimeGain

        return NvCSTestResult.SUCCESS

    def shuffleCmp(self, x, y):
        return x.filename > y.filename

    def retShuffleList(self, origList):
        shuffledList = []
        length = len(origList)
        origList.sort(reverse=True, cmp=self.shuffleCmp)

        for i in range(0, int(length/2)):
            if(i%2 == 0):
                shuffledList.append(origList[i])
                shuffledList.insert(0, origList[length-1-i])
            else:
                shuffledList.insert(0, origList[i])
                shuffledList.append(origList[length-1-i])
        if(length%2 != 0):
            shuffledList.append(origList[(length/2)])

        return shuffledList

    def runGainLinearity(self, BlackLevel=[0.0, 0.0, 0.0]):
        testGainLinearityList = []

        # Create the list of capture configurations
        # Using  a *1000 trick to utilize range()
        for gainVal in range(int(self.GainStartVal*1000), int(self.GainStopVal*1000), int(self.GainStep*1000)):
            testGainLinearityList.append(NvCSTestConfiguration(
                "GainLinearity",
                "G_%.3f_%.2f" % (self.GainExpo, gainVal/1000.0),
                self.GainExpo,
                gainVal/1000.0,
                self.qMinFocusPos))

        # Shuffle the configuration list to catch any buffered configuration cases (Bug 752686)
        if(self.noShuffle == False):
            testGainLinearityList = self.retShuffleList(testGainLinearityList)

        GainIsLinear, GainLog = self.runLinearity(testGainLinearityList, "Gain Linearity", BlackLevel)

        return GainIsLinear, GainLog

    def runExposureLinearity(self, BlackLevel=[0.0, 0.0, 0.0]):
        testExposureLinearityList = []

        # Create the list of capture configurations
        # Using  a *1000 trick to utilize range()
        for expoVal in range(int(self.ExpTimeStart*1000), int(self.ExpTimeStop*1000), int(self.ExpTimeStep*1000)):
            testExposureLinearityList.append(NvCSTestConfiguration(
                "ExposureLinearity",
                "E_%.3f_%.2f" % (expoVal/1000.0, self.ExpTimeGain),
                expoVal/1000.0,
                self.ExpTimeGain,
                self.qMinFocusPos))

        # Shuffle the configuration list to catch any buffered configuration cases (Bug 752686)
        if(self.noShuffle == False):
            testExposureLinearityList = self.retShuffleList(testExposureLinearityList)

        ExpoIsLinear, ExpoLog = self.runLinearity(testExposureLinearityList, "ExposureTime Linearity", BlackLevel)

        return ExpoIsLinear, ExpoLog

    def runEVLinearity(self, BlackLevel):
        testEVSnrList = []

        # Arbitrary limits for now
        maxEV = 0.8
        maxExp = 0.250

        EV = 0.55 * maxEV
        exp = EV / self.GainStopVal
        if (exp <  self.qMinExpTime):
            exp = self.qMinExpTime
        expStop = EV / self.GainStartVal
        if (expStop > maxExp):
            expStop = maxExp
        expStep = (expStop - exp)/self.NumImages

        for expoVal in range(int(exp*1000), int(expStop*1000), int(expStep*1000)):
            gainVal = EV/(expoVal/1000.0)
            testEVSnrList.append(NvCSTestConfiguration(
                "ExposureValueLinearity",
                "EV_%.3f_%.2f" % (expoVal/1000.0, gainVal),
                expoVal/1000.0,
                gainVal,
                self.qMinFocusPos))

        # Shuffle the configuration list to catch any buffered configuration cases (Bug 752686)
        if(self.noShuffle == False):
            testEVSnrList = self.retShuffleList(testEVSnrList)

        EVIsLinear, EVLog = self.runSNR(testEVSnrList, "Exposure Value Linearity", BlackLevel)

        return EVIsLinear, EVLog

    def runTest(self, args):
        self.logger.info("NVCS Linearity Test v2.1")

        if(self.options.numTimes != 0):
            self.NumImages = self.options.numTimes - 1.0

        self.noShuffle = self.options.noShuffle

        # Query exposure, gain, and focuser range
        self.obCamera.startPreview()
        gainRange = self.obCamera.getAttr(nvcamera.attr_gainrange)
        exposureTimeRange = self.obCamera.getAttr(nvcamera.attr_exposuretimerange)
        if (self.obCamera.isFocuserSupported()):
            focusRange = self.obCamera.getAttr(nvcamera.attr_focuspositionphysicalrange)
        self.obCamera.stopPreview()

        if((gainRange[1] == 0) or (exposureTimeRange[1] == 0)):
            self.logger.info("")
            self.logger.info("")
            self.logger.error("TEST FAILED TO QUERY GAIN AND EXPOSURETIME RANGE!")
            self.logger.error("Make sure your driver supports range/limit queries like your reference driver")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR

        self.qMinGain = gainRange[0]
        self.qMaxGain = gainRange[1]
        self.qMinExpTime = exposureTimeRange[0]
        self.qMaxExpTime = exposureTimeRange[1]
        if (self.obCamera.isFocuserSupported()):
            self.qMinFocusPos = focusRange[0]
            self.qMaxFocusPos = focusRange[1]

        # Take captures to reference as black level
        BlackLevel = self.getBlackLevel()

        # Process the test conditions
        goodEnv = self.runEnvCheck(BlackLevel)
        if(goodEnv == NvCSTestResult.ERROR):
            self.logger.info("")
            self.logger.info("")
            self.logger.info("It is possible that an auto feature may also be on, preventing the test from calibrating correctly.")
            self.logger.info("All auto features (ie AGC, AWB, AEC) should be turned off.")
            self.logger.info("")
            self.logger.info("It is possible that the driver is incorrect and unusable to take valid measurements.")
            self.logger.info("Look back at the log and see if the [R:#, G:#, B:#] values make sense relative to the other capture settings.")
            self.logger.info("There was a line specifying the BlackLevel reference being used, is it a valid estimate?")
            self.logger.info("Are the captures with the lowest exposure and gain settings the smallest of the 3 captures?")
            self.logger.info("If not, validate the requested camera settings from NVCS are reaching your driver correctly.")
            self.logger.info("")
            self.logger.info("To help the debugging efforts, try removing the capture shuffling order by adding the flags --nv --noshuffle")
            self.logger.info("To help the debugging efforts, try a different number of captures by adding the flags --nv -n <# of captures>")
            self.logger.info("")
            return NvCSTestResult.ERROR

        # Run the Gain Linearity Experiment

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Starting Gain Linearity Test.")
        self.logger.info("")
        self.logger.info("")

        GainIsLinear, GainLog = self.runGainLinearity(BlackLevel)

        if (not GainIsLinear):
            self.logger.info("%s" % GainLog)
            self.logger.info("")
            self.logger.info("")
            self.logger.error("Gain Linearity Test failed.")
            self.logger.info("--Check if values are being written to the proper camera registers")
            self.logger.info("--Check if values are being translated correctly from floating-point values to register values")
            self.logger.info("--Ensure all exposure value auto features are disabled, enable manual modes (ie. AGC, AEC, AWB)")
            self.logger.info("--Check if test configuration gain values are reaching ODM correctly:")
            self.logger.info("\t-Add a print to confirm gain floating point values that are translated in the ODM driver (F32_TO_GAIN)")
            self.logger.info("\t-Compare printed floating point values from the ODM driver to the test configurations listed in the table")
            self.logger.info("\t\tIf the values are different, there is an issue outside of your driver.")
            self.logger.info("\t\tCheck if OMX or blocks-camera (camera/core) are missing logic from a patch")
            self.logger.info("")
            self.logger.info("Still not fixed?  Look at the data results to see what values don't make sense")
            self.logger.info("\t-A higher gain value should result in higher intensity values")
            self.logger.info("\t-Ensure you have not hit any boundary limitations of the sensor or another dependent register")
            self.logger.info("")
            self.logger.info("To help the debugging efforts, try removing the capture shuffling order by adding the flags --nv --noshuffle")
            self.logger.info("To help the debugging efforts, try a different number of captures by adding the flags --nv -n <# of captures>")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Gain Linearity Test Passed.")
        self.logger.info("")
        self.logger.info("")

        # Run the Exposure Linearity Experiment

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Starting Exposure Linearity Test.")
        self.logger.info("")
        self.logger.info("")

        ExpoIsLinear, ExpoLog = self.runExposureLinearity(BlackLevel)

        if (not ExpoIsLinear):
            self.logger.info("%s" % GainLog)
            self.logger.info("%s" % ExpoLog)
            self.logger.info("")
            self.logger.info("")
            self.logger.error("Exposure Linearity Test failed.")
            self.logger.info("--Check if values are being written to the proper camera registers")
            self.logger.info("--Ensure all exposure value auto features are turned off, we want manual modes (ie. AGC, AEC, AWB)")
            self.logger.info("--Check if test configuration exposure values are reaching ODM correctly:")
            self.logger.info("\t-Add a print to confirm exposure time floating point values that are translated in the ODM driver (WriteExposure, GroupHold, SetMode)")
            self.logger.info("\t-Compare printed floating point values from the ODM driver to the test configurations listed in the table")
            self.logger.info("\t\tIf the values are different, there is an issue outside of your driver.")
            self.logger.info("\t\tCheck if OMX or blocks-camera (camera/core) are missing logic from a patch")
            self.logger.info("")
            self.logger.info("Still not fixed?  Look at the data results to see what values don't make sense")
            self.logger.info("\t-A higher exposure value should result in higher intensity values")
            self.logger.info("\t-Ensure you have not hit any boundary limitations of the sensor or another dependent register")
            self.logger.info("\t\t-A common boundary is a margin of padding between the framelength (VTS) and coarse time (exposure)")
            self.logger.info("")
            self.logger.info("To help the debugging efforts, try removing the capture shuffling order by adding the flags --nv --noshuffle")
            self.logger.info("To help the debugging efforts, try a different number of captures by adding the flags --nv -n <# of captures>")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Exposure Linearity Test Passed.")
        self.logger.info("")
        self.logger.info("")

        # Run the ExposureValue Linearity Experiment

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Starting Exposure Value Linearity Test.")
        self.logger.info("")
        self.logger.info("")

        EVIsLinear, EVLog = self.runEVLinearity(BlackLevel)

        if (not EVIsLinear):
            self.logger.info("%s" % GainLog)
            self.logger.info("%s" % ExpoLog)
            self.logger.info("%s" % EVLog)
            self.logger.info("")
            self.logger.info("")
            self.logger.error("Exposure Value Linearity Test failed.")
            self.logger.info("The pixel channel values (R,G,B) values here should have remained constant throughout the test")
            self.logger.info("--Check if test configuration exposure and gain values are reaching ODM correctly:")
            self.logger.info("--Double Check gain values are translated correctly")
            self.logger.info("--Do you think the test is requesting too high of a resolution of your sensor?")
            self.logger.info("\t\tThe sensor does not have to match the exact resolution of the test to pass, but")
            self.logger.info("\t\tYou can use the '--classic' option flag to run  an 'easier' range.")
            self.logger.info("--If it passed the previous Gain and Exposure Linearity tests, try increasing brightness")
            self.logger.info("  to reduce possible low level noises")
            self.logger.info("")
            self.logger.info("To help the debugging efforts, try removing the capture shuffling order by adding the flags --nv --noshuffle")
            self.logger.info("To help the debugging efforts, try a different number of captures by adding the flags --nv -n <# of captures>")
            self.logger.info("")
            self.logger.info("")
            return NvCSTestResult.ERROR

        self.logger.info("")
        self.logger.info("")
        self.logger.info("Exposure Value Linearity Test Passed.")
        self.logger.info("")
        self.logger.info("")

        self.logger.info("Test Data Results:")
        self.logger.info("%s" % GainLog)
        self.logger.info("%s" % ExpoLog)
        self.logger.info("%s" % EVLog)

        if(self.RunUsingClassicRanges == True):
            self.logger.info("")
            self.logger.info("")
            self.logger.info("**The test was completed using the classic hard coded ranges.")
            if(self.options.useClassicRanges == True):
                self.logger.info("**This was done in accordance to the option parameter flag --classic being set")
            else:
                self.logger.info("**This was done because it ran into underexposure OR overexposure discrepancies")
                self.logger.info("**This does not mean the driver is bad, but it should be noted")
                # TODO
                # Depending on how frequent we run into the underexposure and overexposure discrepancy, will
                # determine how critical it is to implement this test to be more dynamic at varying
                # light conditions
            self.logger.info("")
            self.logger.info("")

        if(self.BayerPhaseConfirmed == False):
            self.logger.info("")
            self.logger.info("")
            self.logger.info("**The Bayer Phase could not automatically be validated in this test.")
            self.logger.info("**Please confirm the bayer phase is correct in the ODM driver.")
            self.logger.info("**You have passed linearity, but there is a phase discrepancy.")
            self.logger.info("")
            self.logger.info("")

        return NvCSTestResult.SUCCESS

class NvCSBlackLevelRawTest(NvCSTestBase):
    "Black Level Raw Image Test"

    defNumImages = 15
    defMaxTemporalDiff = 1
    MaxTemporalDiff = 0.0
    MIN_SNR_dB = 30.0

    def __init__(self, options):
        NvCSTestBase.__init__(self, "BlackLevel")
        self.options = options

    def needTestSetup(self):
        return True

    def getSetupString(self):
        return "This test requires the camera to be covered for darkest capture possible"

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)
        self.obGraph.setGraphType(GraphType.RAW)

        return NvCSTestResult.SUCCESS

    def runSNR(self, configList, testName):
        MIN_SNR_dB = 30.0
        Linearity = True
        SNR = [0.0, 0.0, 0.0]
        MaxTracker = -1
        MinTracker = -1
        logStr = ""

        NvCSTestConfiguration.runConfigList(self, configList)

        logStr, SNR, MaxTracker, MinTracker = NvCSTestConfiguration.processSNRStats(testName, configList, "Region")

        for j in range(0, 3):
            if(SNR[j] < MIN_SNR_dB):
                logStr += ("\n\nBlack Levels are fluctuating too greatly!\n\n")
                logStr += ("\n\nMinimum required SNR has not been met! Found %f, Required %f\n\n" %
                    (SNR[j], MIN_SNR_dB))
                Linearity = False

        if((MaxTracker - MinTracker) > self.MaxTemporalDiff):
            logStr += ("\n\nBlack Levels are fluctuating too greatly!\n\n")
            logStr += ("\n\nVariation of values are greater than %.2f (%.2f vs %.2f)!!!!!\n\n" %
                (self.MaxTemporalDiff, MaxTracker, MinTracker))
            Linearity = False
        else:
            logStr += ("\n\nVariation of values are within the specification of %.2f (%.2f vs %.2f)\n\n" %
                (self.MaxTemporalDiff, MaxTracker, MinTracker))

        return Linearity, logStr

    def runTest(self, args):
        self.logger.info("Black Level Test v2.0")

        numImages = self.defNumImages
        if(self.options.numTimes != 0):
            numImages = self.options.numTimes

        if(self.options.threshold != 0):
            self.MaxTemporalDiff = self.options.threshold
        else:
            self.MaxTemporalDiff = self.defMaxTemporalDiff

        # Query ranges to use minimum configuration settings
        self.obCamera.startPreview()
        gainRange = self.obCamera.getAttr(nvcamera.attr_gainrange)
        exposureTimeRange = self.obCamera.getAttr(nvcamera.attr_exposuretimerange)
        self.obCamera.stopPreview()

        qMinGain = gainRange[0]
        qMinExpTime = exposureTimeRange[0]

        gain = qMinGain
        expTime = 0.100
        if(expTime < qMinExpTime):
            expTime = qMinExpTime

        # Create the configuration list
        testBlackLevelList = []
        for index in range(0, numImages):
            testBlackLevelList.append(NvCSTestConfiguration("Testing_BlackLevel",
                "BL_%.5f_%.2f_test" % (expTime, gain), expTime, gain))

        # Run the experiment
        TestPASS, BLLog = self.runSNR(testBlackLevelList, "Black Level Test")

        self.logger.info("%s" % BLLog)

        if(TestPASS == True):
            return NvCSTestResult.SUCCESS

        return NvCSTestResult.ERROR

class NvCSBayerPhaseTest(NvCSTestBase):
    "Bayer Phase Test"

    def __init__(self, options):
        NvCSTestBase.__init__(self, "BayerPhase")
        self.options = options

    def needTestSetup(self):
        return True

    def getSetupString(self):
        return "This test requires camera to be covered with the LED light panel turned on. Be careful not to overexpose or underexpose the scene."

    def setupGraph(self):
        self.obGraph.setImager(self.options.imager_id)
        self.obGraph.setGraphType(GraphType.RAW)

        return NvCSTestResult.SUCCESS

    def runTest(self, args):
        self.logger.info("Bayer Phase Test v1.1")

        # Exposue and Gain value acquired through general testing
        # These values may need to be changed
        Expo = 0.050
        Gain = 2.00
        config = NvCSTestConfiguration("Testing_BayerPhase",
                "BP_%.5f_%.2f_test" % (Expo, Gain), Expo, Gain)


        NvCSTestConfiguration.runConfig(self, config)

        # Calculating conditions of failure
        percErr = (abs(config.AvgPhaseGR - config.AvgPhaseGB)/max(config.AvgPhaseGR, config.AvgPhaseGB))
        if(percErr > 1.0):
            self.logger.error("Average GR (%f) & Average GB (%f) should be approximately equal." %
                (config.AvgPhaseGR, config.AvgPhaseGB))
            self.logger.error("\n\nAverage GR (%f) & Average GB (%f) have a %f%% error (1%% is Passing).\n\n" %
                (config.AvgPhaseGR, config.AvgPhaseGB, percErr))
            return NvCSTestResult.ERROR
        if(config.AvgPhaseB < config.AvgPhaseR):
            self.logger.error("\n\nAverage B (%f) should be GREATER than R (%f).\n\n" %
                (config.AvgPhaseB, config.AvgPhaseR))
            return NvCSTestResult.ERROR

        self.logger.info("\n\nConditions PASS for R(%.2f) GR(%.2f) GB(%.2f) B(%.2f)\n\n" % (config.AvgPhaseR, config.AvgPhaseGR, config.AvgPhaseGB, config.AvgPhaseB))
        return NvCSTestResult.SUCCESS


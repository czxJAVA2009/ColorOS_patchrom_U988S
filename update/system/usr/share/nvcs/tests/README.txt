The purpose of these scripts is to test NVCS (Nvidia Camera Scripting) interface.
NVCS is a python scripting interface for camera. We can either run group of sanity
tests or pick and choose tests that we want to run. The usage and the description
of the tests and scripts are given below.

Usage: nvcstestmain.py <options>

Options:
  -h, --help    show this help message and exit
  -s            Run Sanity tests
  -n            Number of times to run
  -t TEST_NAME  Test name to execute
  -d TEST_NAME  Disable the test
  -i IMAGER_ID  set imager id. 0 for rear facing, 1 for front facing


==============================================
options description:

-s
    runs the sanity tests
        "jpeg_capture"
        "raw_capture"
        "concurrent_raw"
        "exposuretime"
        "iso"
        "focuspos"

-t TEST_NAME

    runs the TEST_NAME. Multiple -t arguments are supported.

-d TEST_NAME

    disables the TEST_NAME. multiple -d arguments are supported.

==============================================
Result:
    Result images and logs are stored under /data/NVCSTest directory.

    Each test will have directory under /data/NVCSTest, which should have
    result images for that test

    Summary log is saved at /data/NVCSTest/summarylog.txt


==============================================
List of tests:

"jpeg_capture"
    captures a jpeg image and checks for the existence of the image.

"raw_capture"
    captures a raw image and checks for the existence of the raw image.

"concurrent_raw"
    captures a jpeg+raw image concurrently. Checks the max pixel value (should be <= 1023)

"exposuretime"
    captures concurrent jpeg+raw images, setting the exposure time within supported exposure time range linearly. Checks the exposure value in the header and value returned from the get attribute function

"gain"
    captures concurrent jpeg+raw images, setting the gains within supported gain range linearly. Checks the sensor gains value in the raw header
    and value returned from the get attribute function.

"focuspos"
    captures concurrent jpeg+raw images, setting the focus position within supported focuser range linearly. Checks the focus position in the raw header and value returned from the get attribute function.

"multiple_raw"
    captures 100 concurrent jpeg+raw images. Checks for the existence of raw images and the max pixel value (should be <= 1023)

"linearity"
    captures a series of jpeg+raw images. Linearily increases gain and exposure values and analyzes the raw images for correlating linear pixel values.

"sharpness"
    captures concurrent raw+jpeg images from min to max focus positions and checks for the change in sharpness with the change in focus position.
    Performs the same steps going from max to min focus position and also checks if the sharpenss measurements are the same as previous iteration for the same focus position. 

"blacklevel"
    captures 15 (default) raw images and outputs statistics on image black levels

"bayerphase"
    captures 1 raw images and checks raw pattern for expected relative intensities based on light panel

==============================================
VERSION HISTORY
4.9.3
    Changing host_sensor test to use bayergains instead of iso
4.9.2
    Added a query in linearity for the focuser physical range, and adjusted the test to use the
    minimum physical range for the focuser.  This improves stability.
4.9.1
    Added "--noshuffle" to advanced options and applied number of images flag "-n" to linearity.
4.9.0
    Change sharpness test to use more relaxed constraint
4.8.5
    Add divide-by-zero protection that may occur caused by broken sensor drivers
4.8.4
    remove halfpress (converging auto algorithms) while capturing image from all sanity tests
4.8.3
    Cleanup of parameter variables in linearity.
4.8.2
    Update the content for "-h" option. Add "-l" option to list sanity and conformance test names.
    Add "--nv" to list advanced options "-h" and Move "-n" and "--threshold" to advance options.
4.8.1
    fix syntax error in multiple_raw test
4.8.0
    Use raw-only capture for all the tests except concurrent_raw test
4.7.0
    Add "-c" option to run conformance tests
4.6.1
    Output normalized sharpness values in sharpness test
4.6.0
    Restructured processing functions (used in linearity and black level) to be part of nvcstestcore.
    Enabled querying of range to linearity test.  Test is still able to run old hardcoded range values using "--classic" option flag
    Increased exposure time for blacklevel to 0.100s to prevent test passing with light
4.5.0
    start preview before asking user to setup and confirm the test setup
4.4.2
    fix output message in sharpness test.
4.4.1
    print the version information in the log file
4.4.0
    Modified sharpness test to lock AE throughout the test and added new runPostTest interface
4.3.1
    Modified exposuretime test to use exposuretimerange query. Fix focuspos test file names.
4.3.0
    Added preliminary 'bayerphase' check test.  Similar logic is also included in the linearity test. Also added version parameter (-v, --version).
4.2.2
    Modified prompt logic to include force flag.  In 4.2.1, the force flag would only affect setup, but not mid run prompts.
4.2.1
    Modified prompt logic so it can be utilized mid run.  Added prompts to linearity test.
4.2.0
    Added ignore focuser flag (--nofocus).  Updated linearity message output to detail the environment check.
    Updated blacklevel reference in linearity test to allow a variance of 10, instead of 2x the dimmest capture
    settings the test will run.
4.1.0
    Added black level test and -n option. -n option is the number of times the user wants the test to run. This meaning may vary depending on test.
    Added --threshold option. Currently only black level supports these options. Refactored linearity code.
4.0.0
    Added sharpness test. focuspos test is changed to use physical range of focuser.
3.1.0
    Added --odm option for ODM conformance tests.  Linearity test is ran multiple times to compensate for frame corruption.  Added missing math module.
    Refactored the code for better maintainability
3.0.0
    Refactored the code for better maintainability
2.0.0
    Linearity test is added.  NvCSTestConfiguration class is added to help capture images with specific exposure and gain values.

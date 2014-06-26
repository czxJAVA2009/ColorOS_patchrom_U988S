.class public final Lcom/android/server/power/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;,
        Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;,
        Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;,
        Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;,
        Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;,
        Lcom/android/server/power/PowerManagerService$SmartPowerHandler;
    }
.end annotation


# static fields
.field private static final ABORNAMAL_EVENT_COUNT_KEY:Ljava/lang/String; = "Count"

.field private static final ABORNAMAL_REASON_KEY:Ljava/lang/String; = "Reason"

.field private static final ACTION_RESET_TICKTIMER:Ljava/lang/String; = "android.intent.alarm.tick"

.field private static final ALARM_THRESHOLD_COUNT:I = 0x8

.field private static final ALARM_THRESHOLD_TIME:I = 0xea60

.field private static final APP_NNME_KEY:Ljava/lang/String; = "PkgName"

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field private static final BT_WAKEUP:I = 0x7

.field private static final DEBUG:Z = true

.field private static final DEBUG_SPEW:Z = true

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x800

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_ON_BLOCKER_RELEASED:I = 0x400

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DREAM_BATTERY_LEVEL_DRAIN_CUTOFF:I = 0x5

.field private static final EARPHONE_WAKEUP:I = 0x8

.field private static final ENTER_SLEEP_JUDGETMENT_VALUE:J = 0x1388L

.field private static final EVENT_NO_KEY:Ljava/lang/String; = "EventNo"

.field private static final MAXIMUM_SCREEN_DIM_RATIO:F = 0.2f

.field private static final MAX_ENTER_SLEEP_TIME:J = 0x1770L

.field private static MAX_HISTORY_DATA_NUM:I = 0x0

.field private static MAX_SERCH_NETWORK_TIME_MONITOR:I = 0x0

.field private static MAX_TABLE_ITEM_NUM:I = 0x0

.field private static final MAX_TIME_LEN:J = -0x296c5c00L

.field private static final MAX_TIME_OUT_IN_WAITING_MODE:J = 0x1770L

.field private static final MAX_UNSOLICIATE_EVENT_WAKEUP_NUMS:I = 0x10

.field private static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x2710

.field private static final MIN_SCREEN_TIME_OUT:J = 0x1f40L

.field private static MIN_VALIDE_HISTORY_DATA_NUM:I = 0x0

.field private static final MSG_CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x4

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_ON_BLOCKER_RELEASED:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final PROXIMITY_WAKEUP:I = 0x6

.field private static final RTC_ALARM_WAKEUP:I = 0x2

.field private static final SCREEN_DIM_DURATION:I = 0x1b58

.field private static final SENDNOTIFACTION_CHECK_TIME_DELAY:I = 0x7530

.field private static final SLEEP_CHECK_TIME_DELAY:I = 0xbb8

.field private static final SMART_POWER_SETTING_FILE:Ljava/lang/String; = "smartpowersetting.txt"

.field private static final SMART_POWER_WIRELESS_ENV_FILE:Ljava/lang/String; = "smartpowerwirelessenv.txt"

.field private static final SOURCE_ID_UNKOWN:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final USB_WAKEUP:I = 0x0

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DREAMING:I = 0x3

.field private static final WAKEFULNESS_NAPPING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final WIFI_WAKEUP:I = 0x4

.field private static final WIRELESS_MODEM_WAKEUP:I = 0x3

.field private static quickBootMode:I


# instance fields
.field private SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

.field private TableInsertPlace:I

.field private handler:Landroid/os/Handler;

.field private mAbnormalEventNotificationIntent:Landroid/content/Intent;

.field private mActiveTime:J

.field private mAlarmAppWakeupStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;",
            ">;"
        }
    .end annotation
.end field

.field private mAllScreenOnTimeLen:J

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

.field private mBatteryLevel:I

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private mBtWakeupUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

.field private mCurrentSleepTime:J

.field private mCurrentWakeupTime:J

.field private mDataTransferState:I

.field private mDirty:I

.field private mDisableAllDataTransferTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

.field private final mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mDisplayReady:Z

.field private mDockState:I

.field private mDreamManager:Lcom/android/server/dreams/DreamManagerService;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mGotoSleepStartTime:J

.field private mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHardwareIsOnpUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

.field private mHave_mCheckWakeup:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInActiveTime:J

.field private mIsPowered:Z

.field private mLastEventElapsedRealtime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenOnTime:J

.field private mLastServiceState:I

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWakeupSourceId:I

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mModemEventStats_MODEM_CALLFORWARDING_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_CELLLOCAION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_DATA_ACTIVITY_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_DATA_CONNECTION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_DATA_CONNECTION_FAILED_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_DATA_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_MESSAGE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_OTASP_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_PHONE_CALL_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_PHONE_SERVICE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mModemEventStats_MODEM_PHONE_SIGNAL_STRENTH_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mNotEnterSleepUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

.field private mPreWakeupSource:I

.field private mPrevModemEventType:I

.field private mPrevWakeupTime:J

.field private mProximityPositive:Z

.field private final mQucikBootLock:Ljava/lang/Object;

.field private mRequestSleepCount:I

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenIsOff:Z

.field private mScreenIsSwitchToOn:Z

.field private mScreenLightSaveTimeLen:J

.field private mScreenOffTimeoutSetting:I

.field private final mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

.field private mSendGoToSleepFinishedNotificationWhenReady:Z

.field private mSendWakeUpFinishedNotificationWhenReady:Z

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSleepSuccessCount:I

.field private mSleepTime:J

.field private mSmartPowerControlFlag:I

.field private mSmartPowerEventThread:Landroid/os/HandlerThread;

.field private mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

.field private mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mStopDataTransferTime:J

.field private mStopInDataTransferTime:J

.field private mStopOutDataTransferTime:J

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemBootTime:J

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mUnsociatedEventStats_BT_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_RTC_ALARM_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_WIFI_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUnsociatedEventStats_WIRELESS_MODEM_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private mWifiWakeupUidStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;",
            ">;"
        }
    .end annotation
.end field

.field private mWireLessPowerSavingTime:J

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mbsi:Lcom/android/internal/os/BatteryStatsImpl;

.field private serachNetworkTime:J

.field private tag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/PowerManagerService;->quickBootMode:I

    .line 501
    const/16 v0, 0xa

    sput v0, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    .line 502
    const/16 v0, 0x3a98

    sput v0, Lcom/android/server/power/PowerManagerService;->MAX_SERCH_NETWORK_TIME_MONITOR:I

    .line 503
    const/4 v0, 0x4

    sput v0, Lcom/android/server/power/PowerManagerService;->MAX_HISTORY_DATA_NUM:I

    .line 504
    const/4 v0, 0x2

    sput v0, Lcom/android/server/power/PowerManagerService;->MIN_VALIDE_HISTORY_DATA_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 522
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v0}, Lcom/android/server/power/DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mQucikBootLock:Ljava/lang/Object;

    .line 315
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 346
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 378
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 383
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 388
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 394
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 397
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 409
    new-instance v0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    .line 411
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 413
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    .line 414
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    .line 415
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    .line 416
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mActiveTime:J

    .line 417
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mInActiveTime:J

    .line 418
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemBootTime:J

    .line 423
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    .line 425
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mAllScreenOnTimeLen:J

    .line 426
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    .line 427
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mWireLessPowerSavingTime:J

    .line 445
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    .line 457
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    .line 458
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    .line 459
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 460
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 461
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    .line 462
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    .line 463
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    .line 482
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 483
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_RTC_ALARM_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 484
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_WIRELESS_MODEM_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 485
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 486
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 487
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_BT_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 488
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_WIFI_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 489
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 490
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SERVICE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 491
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_CALL_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 492
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SIGNAL_STRENTH_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 493
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_MESSAGE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 494
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CALLFORWARDING_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 495
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_ACTIVITY_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 496
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 497
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_FAILED_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 498
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CELLLOCAION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 499
    new-instance v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_OTASP_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 506
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastServiceState:I

    .line 507
    new-instance v0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    .line 509
    sget v0, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    new-array v0, v0, [Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    .line 588
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3818
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 523
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    const-string v0, "PowerManagerService"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 525
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 526
    new-instance v0, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    .line 527
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 529
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 530
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 533
    invoke-static {v7, v7}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 534
    return-void

    .line 530
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private CheckSystemSleepProcess()V
    .locals 15

    .prologue
    const/16 v4, 0x3e8

    const/4 v14, 0x1

    .line 1246
    const/4 v8, 0x0

    .line 1247
    .local v8, isWakeup:Z
    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1251
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1252
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(GYP)enter sleep check_in_PowerMonitorHandler,mScreenIsOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mScreenIsSwitchToOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestSleepCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOffTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    if-eq v0, v14, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    if-ne v0, v14, :cond_5

    .line 1255
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    .line 1256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1257
    .local v11, now:J
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    sub-long v0, v11, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1258
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long v0, v11, v0

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1259
    invoke-direct {p0, v11, v12}, Lcom/android/server/power/PowerManagerService;->processNotEnterSleep(J)V

    .line 1285
    :cond_1
    :goto_0
    iput-wide v11, p0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    .line 1287
    if-ne v8, v14, :cond_4

    .line 1288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1289
    .local v10, mymsg:Landroid/os/Message;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1294
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 1297
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1302
    .end local v10           #mymsg:Landroid/os/Message;
    .end local v11           #now:J
    :goto_2
    monitor-exit v13

    .line 1303
    return-void

    .line 1263
    .restart local v11       #now:J
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    .line 1264
    const/4 v8, 0x1

    .line 1265
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    sub-long v0, v11, v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    .line 1266
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    .line 1267
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    .line 1268
    iput-wide v11, p0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    .line 1270
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    .line 1271
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkHardwareIsOnWhenSleep()V

    .line 1272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iget v0, v0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    if-ne v0, v4, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1274
    .local v9, msg1:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1277
    .end local v9           #msg1:Landroid/os/Message;
    :cond_3
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    .line 1278
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->setTwoWakeTimeAndSleepTime(JJJ)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    .line 1281
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1282
    .local v7, check_userintravtive_msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1283
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(GYP)new wakeup:mPrevWakeupTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentWakeupTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSleepSuccessCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1302
    .end local v7           #check_userintravtive_msg:Landroid/os/Message;
    .end local v11           #now:J
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1291
    .restart local v11       #now:J
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1292
    .restart local v10       #mymsg:Landroid/os/Message;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    goto/16 :goto_1

    .line 1300
    .end local v10           #mymsg:Landroid/os/Message;
    .end local v11           #now:J
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private LCDBackLightAnimationProcess()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v5, 0x1b58

    const-wide/16 v6, 0x1f4

    .line 1345
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1346
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v2}, Lcom/android/server/power/DisplayPowerController;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1347
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1348
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1349
    const-string v2, "PowerManagerService"

    const-string v4, "GYP POWER DEBUG:Delay SmartLCDBackLightControl because isAnimating! "

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    monitor-exit v3

    .line 1391
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    .line 1354
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3708(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    .line 1359
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1362
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0xbb8

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4000(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v2, v4

    add-int/lit16 v0, v2, 0x1b58

    .line 1363
    .local v0, lightMillionth:I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1364
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4000(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 1365
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, -0x2

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3872(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1366
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG:End:BackLightRecoverMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FrameCounters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " light="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AnimationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .end local v0           #lightMillionth:I
    :cond_1
    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1356
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    goto/16 :goto_1

    .line 1368
    .restart local v0       #lightMillionth:I
    :cond_3
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    .line 1369
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1370
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1371
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG:(Send Message) BackLightRecoverMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FrameCounters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " light="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AnimationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1373
    .end local v0           #lightMillionth:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1374
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x251c

    div-int/lit16 v4, v4, 0x2710

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4202(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1375
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    if-ge v2, v5, :cond_5

    .line 1376
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/16 v4, 0x1b58

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4202(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1378
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1379
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4000(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 1380
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, -0x3

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3872(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1381
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG:End:BackLightRecoverMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FrameCounters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " light="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AnimationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1383
    :cond_6
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    .line 1384
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1385
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1386
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG:(Send Message) BackLightRecoverMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FrameCounters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " light="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AnimationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private LCDDimProcess()V
    .locals 5

    .prologue
    .line 1323
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 1324
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v1, v1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v1, :cond_0

    .line 1325
    const-string v1, "PowerManagerService"

    const-string v2, "GYP POWER DEBUG:Cancel SmartLCDBackLightControl because SCREEN_STATE_OFF! "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerController;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1330
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1331
    const-string v1, "PowerManagerService"

    const-string v2, "GYP POWER DEBUG:Delay SmartLCDBackLightControl because Lcd is animating! "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    .line 1335
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1336
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    and-int/lit8 v2, v2, -0x4

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1337
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1338
    const-string v1, "PowerManagerService"

    const-string v2, "GYP POWER DEBUG:set lcd dim for no user action and canceal smart backlight control!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    :cond_2
    const-string v1, "PowerManagerService"

    const-string v2, "GYP POWER DEBUG:Cancel set Dim Directly because have WAKE_LOCK_SCREEN_BRIGHT!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LCDParaProcess(I)V
    .locals 14
    .parameter "time_out_value"

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x1f4

    const/4 v9, 0x1

    .line 1396
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1397
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4300(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 1398
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4302(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1399
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    sub-int v3, p1, v4

    .line 1400
    .local v3, substract:I
    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_0

    const/16 v4, -0x7d0

    if-ge v3, v4, :cond_3

    .line 1401
    :cond_0
    if-nez p1, :cond_5

    .line 1402
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3902(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1406
    :goto_0
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GYP POWER DEBUG:set mScreenOffTimeoutSetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BackLightRecoverMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ge v4, v6, :cond_3

    .line 1408
    const/4 v1, 0x1

    .line 1409
    .local v1, isSetInfoToBatteryStatsImpl:Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1410
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    sub-int v0, v4, v6

    .line 1411
    .local v0, delta:I
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_1

    const/16 v4, -0x3e8

    if-le v0, v4, :cond_2

    .line 1413
    :cond_1
    const/4 v1, 0x0

    .line 1417
    .end local v0           #delta:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_3

    if-ne v1, v9, :cond_3

    .line 1419
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 1424
    .end local v1           #isSetInfoToBatteryStatsImpl:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    and-int/lit8 v6, v6, -0xd

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1427
    .end local v3           #substract:I
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4400(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 1428
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v4, :cond_6

    .line 1429
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4402(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1430
    const-string v4, "PowerManagerService"

    const-string v6, "GYP POWER DEBUG:Cancel LCDParaProcess because SCREEN_STATE_OFF! "

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    monitor-exit v5

    .line 1471
    :goto_1
    return-void

    .line 1404
    .restart local v3       #substract:I
    :cond_5
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v4, p1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3902(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    goto/16 :goto_0

    .line 1470
    .end local v3           #substract:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1433
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v4}, Lcom/android/server/power/DisplayPowerController;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1434
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1435
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 1436
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 1437
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1438
    const-string v4, "PowerManagerService"

    const-string v6, "GYP POWER DEBUG:Delay LCDParaProcess because isAnimating! "

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    monitor-exit v5

    goto :goto_1

    .line 1441
    .end local v2           #msg:Landroid/os/Message;
    :cond_7
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4402(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1442
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v4, p1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4102(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1443
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 1445
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1446
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    and-int/lit8 v6, v6, -0x3

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1447
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1448
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/16 v6, 0xbb8

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4202(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1450
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1451
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GYP POWER DEBUG:BackLightRecoverMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FrameCounters ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " light="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AnimationTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1453
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1454
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    div-int/lit16 v6, v6, 0x1f4

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4002(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1455
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    .line 1470
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    :goto_2
    monitor-exit v5

    goto/16 :goto_1

    .line 1456
    :cond_9
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 1457
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1458
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    and-int/lit8 v6, v6, -0x2

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1459
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1460
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/16 v6, 0x251c

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4202(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1461
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1462
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GYP POWER DEBUG:BackLightRecoverMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FrameCounters ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " light="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AnimationTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1464
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1465
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I
    invoke-static {v4, v6}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4002(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1466
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    add-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->LCDParaProcess(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->LCDDimProcess()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->LCDBackLightAnimationProcess()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->CheckSystemSleepProcess()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;IILcom/android/server/power/PowerManagerService$PowerMonitorRealTime;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->checkWakeupReason(IILcom/android/server/power/PowerManagerService$PowerMonitorRealTime;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkSendAlarmNotifaction()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerWriteSetting()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->serachNetworkTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->predictSerchAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerWriteWirelessEnv()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateStatisticalsData()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastServiceState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastServiceState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$SmartPowerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    return-object v0
.end method

.method static synthetic access$3414(Lcom/android/server/power/PowerManagerService;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mWireLessPowerSavingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mWireLessPowerSavingTime:J

    return-wide v0
.end method

.method static synthetic access$5076(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;JI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startWatchingForBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$5902(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemBootTime:J

    return-wide p1
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenOnBlockerReleased()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkIfBootAnimationFinished()V

    return-void
.end method

.method static synthetic access$6700(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$6900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    return-object v0
.end method

.method static synthetic access$7300(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$7400(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    .locals 12
    .parameter "lock"
    .parameter "flags"
    .parameter "tag"
    .parameter "ws"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2679
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2681
    :try_start_0
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLockInternal: lock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", ws="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v10

    .line 2688
    .local v10, index:I
    if-ltz v10, :cond_1

    .line 2689
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2690
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2692
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2693
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Landroid/os/WorkSource;II)V

    .line 2694
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2707
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2708
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2709
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2710
    monitor-exit v11

    .line 2711
    return-void

    .line 2697
    .end local v1           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2699
    .restart local v1       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2703
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2704
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2710
    .end local v1           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v10           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2700
    .restart local v1       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v10       #index:I
    :catch_0
    move-exception v9

    .line 2701
    .local v9, ex:Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 2
    .parameter "wakeLock"

    .prologue
    .line 2724
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 2728
    :cond_0
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 2796
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2802
    :cond_0
    return-void
.end method

.method private canDreamLocked()Z
    .locals 1

    .prologue
    .line 3679
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkHardwareIsOnWhenSleep()V
    .locals 9

    .prologue
    .line 2096
    const/4 v4, 0x0

    .line 2097
    .local v4, uid:[I
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    if-nez v5, :cond_1

    .line 2123
    :cond_0
    return-void

    .line 2098
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v5, :cond_2

    .line 2099
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2101
    :cond_2
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v4

    .line 2103
    if-eqz v4, :cond_0

    .line 2104
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 2105
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    aget v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2106
    .local v2, rst:[Ljava/lang/String;
    if-nez v2, :cond_4

    .line 2107
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot find pkgName!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2110
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 2111
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2112
    .local v3, u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-nez v3, :cond_5

    .line 2113
    new-instance v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .end local v3           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    invoke-direct {v3, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 2114
    .restart local v3       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    aget-object v6, v2, v0

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    :cond_5
    iget v5, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2117
    iget-wide v5, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    .line 2118
    iget-wide v5, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    .line 2119
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->notifyClientAlarmInfo()V

    .line 2110
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkIfBootAnimationFinished()V
    .locals 4

    .prologue
    .line 3935
    const-string v0, "PowerManagerService"

    const-string v1, "Check if boot animation finished..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3939
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3950
    :goto_0
    return-void

    .line 3944
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3945
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 3946
    const-string v0, "PowerManagerService"

    const-string v2, "Boot animation finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBootCompletedLocked()V

    .line 3949
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkSendAlarmNotifaction()V
    .locals 4

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, ev_num:I
    const-string v1, "PowerManagerService"

    const-string v2, "checkSendAlarmNotifaction"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int v0, v1, v3

    .line 1237
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    if-lez v0, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAbnormalEventNotificationIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1240
    const-string v1, "PowerManagerService"

    const-string v2, "sendBroadcast(mAbnormalEventNotificationIntent)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    return-void

    .line 1237
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkWakeupReason(IILcom/android/server/power/PowerManagerService$PowerMonitorRealTime;)V
    .locals 24
    .parameter "wakeupsource"
    .parameter "arg1"
    .parameter "rtltime"

    .prologue
    .line 2176
    if-nez p3, :cond_1

    .line 2177
    const-string v18, "PowerManagerService"

    const-string v19, "PowerMonitor System Error:rtltime == null!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    .line 2181
    .local v10, pkgName:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->getTwoWakeTimeAndSleepTime()[J

    move-result-object v13

    .line 2182
    .local v13, timeStatistics:[J
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "rtltime.getTwoWakeTimeAndSleepTime():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-wide v20, v13, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget-wide v20, v13, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " wakeupsource="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mPreWakeupSource="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mPrevModemEventType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pkgName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/4 v12, 0x0

    .line 2186
    .local v12, sendAlarm:Z
    packed-switch p1, :pswitch_data_0

    .line 2284
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v7, 0x0

    .line 2285
    .local v7, isActive:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xbb8

    add-long v20, v20, v22

    cmp-long v18, v18, v20

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xbb8

    sub-long v20, v20, v22

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    .line 2286
    const/4 v7, 0x1

    .line 2289
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    move/from16 v18, v0

    if-ltz v18, :cond_6

    .line 2291
    const/16 v18, 0x1

    aget-wide v18, v13, v18

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    sub-long v18, v18, v20

    const/16 v20, 0x2

    aget-wide v20, v13, v20

    sub-long v16, v18, v20

    .line 2292
    .local v16, wakeup_time_len:J
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-gtz v18, :cond_4

    .line 2293
    const-wide/16 v16, 0x5dc

    .line 2295
    :cond_4
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wakeup_time_len ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_15

    .line 2297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mActiveTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mActiveTime:J

    .line 2298
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OK:We set mActiveTime="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mActiveTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    :goto_2
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Compute wakeup time ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "isActive="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "mPreWakeupSource="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 2443
    :cond_5
    :goto_3
    :pswitch_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    .line 2445
    .end local v16           #wakeup_time_len:J
    :cond_6
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 2446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->notifyClientAlarmInfo()V

    .line 2450
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mPreWakeupSource:I

    .line 2451
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2452
    if-ltz p2, :cond_26

    .line 2453
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    goto/16 :goto_0

    .line 2189
    .end local v7           #isActive:Z
    :pswitch_2
    const/4 v15, 0x0

    .line 2190
    .local v15, uid:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 2191
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2193
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v15

    .line 2195
    if-eqz v15, :cond_2

    .line 2196
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_c

    .line 2197
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    aget v19, v15, v9

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2198
    .local v11, rst:[Ljava/lang/String;
    if-nez v11, :cond_a

    .line 2199
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "uid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v15, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot find pkgName!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2202
    :cond_a
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_9

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2204
    .local v14, u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-nez v14, :cond_b

    .line 2205
    new-instance v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 2206
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    :cond_b
    iget v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2209
    const/16 v18, 0x1

    aget-wide v18, v13, v18

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    .line 2202
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2212
    .end local v5           #i:I
    .end local v11           #rst:[Ljava/lang/String;
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_WIFI_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_WIFI_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v19, v13, v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2218
    .end local v9           #j:I
    .end local v15           #uid:[I
    :pswitch_3
    const/4 v15, 0x0

    .line 2219
    .restart local v15       #uid:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 2220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2222
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v15

    .line 2223
    if-eqz v15, :cond_2

    .line 2224
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_6
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_12

    .line 2225
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    aget v19, v15, v9

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2226
    .restart local v11       #rst:[Ljava/lang/String;
    if-nez v11, :cond_f

    .line 2227
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "uid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v15, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot find pkgName!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2230
    :cond_f
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_e

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2232
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-nez v14, :cond_10

    .line 2233
    new-instance v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 2234
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    :cond_10
    iget v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2237
    const/16 v18, 0x1

    aget-wide v18, v13, v18

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    .line 2238
    iget v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 2239
    const/4 v12, 0x1

    .line 2230
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2243
    .end local v5           #i:I
    .end local v11           #rst:[Ljava/lang/String;
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_BT_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_BT_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v19, v13, v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2248
    .end local v9           #j:I
    .end local v15           #uid:[I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v19, v13, v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2252
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v19, v13, v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2256
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2257
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-nez v14, :cond_13

    .line 2258
    new-instance v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 2259
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    :cond_13
    iget v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2262
    const/16 v18, 0x1

    aget-wide v18, v13, v18

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    .line 2263
    iget v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    .line 2264
    const/4 v12, 0x1

    .line 2266
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_RTC_ALARM_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    goto/16 :goto_1

    .line 2269
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v19, v13, v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2273
    :pswitch_8
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WIRELESS_MODEM_WAKEUP,modemevent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->getModemEventAppStaticsObj(I)Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-result-object v3

    .line 2275
    .local v3, Appobj:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-eqz v3, :cond_2

    .line 2276
    iget v0, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2277
    const/16 v18, 0x1

    aget-wide v18, v13, v18

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    goto/16 :goto_1

    .line 2300
    .end local v3           #Appobj:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    .restart local v7       #isActive:Z
    .restart local v16       #wakeup_time_len:J
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mInActiveTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mInActiveTime:J

    .line 2301
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OK:We set mInActiveTime="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mInActiveTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2308
    :pswitch_9
    const/4 v15, 0x0

    .line 2309
    .restart local v15       #uid:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    if-nez v18, :cond_16

    .line 2310
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2312
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v15

    .line 2313
    if-eqz v15, :cond_5

    .line 2314
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_8
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 2315
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    aget v19, v15, v9

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2316
    .restart local v11       #rst:[Ljava/lang/String;
    if-nez v11, :cond_18

    .line 2317
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "uid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v15, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot find pkgName!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2320
    :cond_18
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_9
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_17

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2322
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_19

    .line 2323
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_1a

    .line 2325
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    .line 2320
    :cond_19
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2328
    :cond_1a
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto :goto_a

    .line 2338
    .end local v5           #i:I
    .end local v9           #j:I
    .end local v11           #rst:[Ljava/lang/String;
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    .end local v15           #uid:[I
    :pswitch_a
    const/4 v15, 0x0

    .line 2339
    .restart local v15       #uid:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    if-nez v18, :cond_1b

    .line 2340
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2342
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v15

    .line 2343
    if-eqz v15, :cond_5

    .line 2344
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_b
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 2345
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v18

    aget v19, v15, v9

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 2346
    .restart local v11       #rst:[Ljava/lang/String;
    if-nez v11, :cond_1d

    .line 2347
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "uid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v15, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot find pkgName!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2350
    :cond_1d
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_c
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_1c

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    aget-object v19, v11, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2352
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_1e

    .line 2353
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_1f

    .line 2355
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    .line 2360
    :goto_d
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    cmp-long v18, v18, v20

    if-ltz v18, :cond_1e

    .line 2361
    const/4 v12, 0x1

    .line 2350
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 2358
    :cond_1f
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto :goto_d

    .line 2370
    .end local v5           #i:I
    .end local v9           #j:I
    .end local v11           #rst:[Ljava/lang/String;
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    .end local v15           #uid:[I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 2371
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_20

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    goto/16 :goto_3

    .line 2376
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_USB_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto/16 :goto_3

    .line 2381
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 2382
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_21

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    goto/16 :goto_3

    .line 2387
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_EARPHONE_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto/16 :goto_3

    .line 2393
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_22
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2394
    .local v8, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2395
    .restart local v14       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_22

    .line 2396
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_23

    .line 2398
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    .line 2405
    :goto_f
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    cmp-long v18, v18, v20

    if-ltz v18, :cond_22

    .line 2406
    const/4 v12, 0x1

    goto :goto_e

    .line 2402
    :cond_23
    iget-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto :goto_f

    .line 2415
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v14           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 2416
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_24

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    goto/16 :goto_3

    .line 2421
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUnsociatedEventStats_PROXIMITY_WAKEUP:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v19, v0

    add-long v19, v19, v16

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto/16 :goto_3

    .line 2426
    :pswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    move/from16 v18, v0

    if-ltz v18, :cond_5

    .line 2427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->getModemEventAppStaticsObj(I)Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    move-result-object v4

    .line 2428
    .local v4, Appobj2:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-eqz v4, :cond_5

    .line 2429
    iget-wide v0, v4, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->wakeupStartTime:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v13, v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 2430
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_25

    .line 2432
    iget-wide v0, v4, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    goto/16 :goto_3

    .line 2435
    :cond_25
    iget-wide v0, v4, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto/16 :goto_3

    .line 2455
    .end local v4           #Appobj2:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    .end local v16           #wakeup_time_len:J
    :cond_26
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mPrevModemEventType:I

    goto/16 :goto_0

    .line 2186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 2305
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_d
        :pswitch_f
        :pswitch_9
        :pswitch_1
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .parameter "workSource"

    .prologue
    .line 4478
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 4052
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4060
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4064
    :goto_0
    return-void

    .line 4061
    :catch_0
    move-exception v0

    .line 4062
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .parameter "name"

    .prologue
    .line 4457
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 4458
    .local v0, suspendBlocker:Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4459
    return-object v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .parameter "lock"

    .prologue
    .line 2843
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2844
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2845
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 2849
    .end local v1           #i:I
    :goto_1
    return v1

    .line 2844
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2849
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getDesiredScreenPowerStateLocked()I
    .locals 1

    .prologue
    .line 3805
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_0

    .line 3806
    const/4 v0, 0x0

    .line 3815
    :goto_0
    return v0

    .line 3809
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_2

    .line 3812
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3815
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getModemEventAppStaticsObj(I)Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    .locals 1
    .parameter "type"

    .prologue
    .line 2127
    const/4 v0, 0x0

    .line 2128
    .local v0, tmp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    packed-switch p1, :pswitch_data_0

    .line 2164
    :goto_0
    return-object v0

    .line 2130
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2131
    goto :goto_0

    .line 2133
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SERVICE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2134
    goto :goto_0

    .line 2136
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_CALL_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2137
    goto :goto_0

    .line 2139
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SIGNAL_STRENTH_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2140
    goto :goto_0

    .line 2142
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_MESSAGE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2143
    goto :goto_0

    .line 2145
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CALLFORWARDING_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2146
    goto :goto_0

    .line 2148
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_ACTIVITY_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2149
    goto :goto_0

    .line 2151
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2152
    goto :goto_0

    .line 2154
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_FAILED_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2155
    goto :goto_0

    .line 2157
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CELLLOCAION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2158
    goto :goto_0

    .line 2160
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_OTASP_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    goto :goto_0

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .parameter "screenOffTimeout"

    .prologue
    .line 3505
    const/16 v0, 0x1b58

    int-to-float v1, p1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getScreenOffTimeoutLocked()I
    .locals 5

    .prologue
    .line 3494
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 3495
    .local v0, timeout:I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3496
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3498
    :cond_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 3499
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    .line 3501
    :cond_1
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private goToSleepFromNative(JI)V
    .locals 0
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 3072
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V

    .line 3073
    return-void
.end method

.method private goToSleepInternal(JI)V
    .locals 4
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 3076
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3077
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3078
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3079
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(ZI)V

    .line 3081
    :cond_0
    monitor-exit v1

    .line 3082
    return-void

    .line 3081
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JI)Z
    .locals 9
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3086
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "goToSleepNoUpdateLocked: eventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 3138
    :goto_0
    return v4

    .line 3094
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 3108
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep by user request..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/4 p3, 0x0

    .line 3111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    .line 3116
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 3117
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v6, p3}, Lcom/android/server/power/Notifier;->onGoToSleepStarted(I)V

    .line 3118
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    .line 3120
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 3121
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3122
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 3125
    const/4 v2, 0x0

    .line 3126
    .local v2, numWakeLocksCleared:I
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3127
    .local v1, numWakeLocks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 3128
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3129
    .local v3, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 3127
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3096
    .end local v0           #i:I
    .end local v1           #numWakeLocks:I
    .end local v2           #numWakeLocksCleared:I
    .end local v3           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to device administration policy..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    goto :goto_1

    .line 3102
    :pswitch_1
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to screen timeout..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3105
    :pswitch_2
    const-string v6, "PowerManagerService"

    const-string v7, "Going to sleep due to proximity"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3133
    .restart local v0       #i:I
    .restart local v1       #numWakeLocks:I
    .restart local v2       #numWakeLocksCleared:I
    .restart local v3       #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3137
    .end local v3           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_0

    .line 3094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3129
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .prologue
    .line 3925
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3926
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3927
    return-void
.end method

.method private handleBootCompletedLocked()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3954
    .local v1, now:J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 3955
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3956
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3958
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3959
    return-void
.end method

.method private handleDreamFinishedLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3690
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3692
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    .line 3695
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3701
    :cond_1
    :goto_0
    return-void

    .line 3697
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 3698
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_0
.end method

.method private handleSandman()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 3605
    const/4 v3, 0x0

    .line 3606
    .local v3, startDreaming:Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3607
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3608
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v0

    .line 3610
    .local v0, canDream:Z
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSandman: canDream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWakefulness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v8, :cond_0

    .line 3615
    const/4 v3, 0x1

    .line 3617
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3622
    const/4 v2, 0x0

    .line 3623
    .local v2, isDreaming:Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v4, :cond_2

    .line 3624
    if-eqz v3, :cond_1

    .line 3625
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->startDream()V

    .line 3627
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->isDreaming()Z

    move-result v2

    .line 3632
    :cond_2
    const/4 v1, 0x0

    .line 3633
    .local v1, continueDreaming:Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3634
    if-eqz v2, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3635
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v8, :cond_6

    .line 3636
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 3637
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3638
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 3639
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3640
    const/4 v1, 0x1

    .line 3658
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 3659
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleDreamFinishedLocked()V

    .line 3661
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3667
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v4, :cond_5

    .line 3668
    if-nez v1, :cond_5

    .line 3669
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4}, Lcom/android/server/dreams/DreamManagerService;->stopDream()V

    .line 3672
    :cond_5
    return-void

    .line 3617
    .end local v0           #canDream:Z
    .end local v1           #continueDreaming:Z
    .end local v2           #isDreaming:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3641
    .restart local v0       #canDream:Z
    .restart local v1       #continueDreaming:Z
    .restart local v2       #isDreaming:Z
    :cond_6
    :try_start_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v9, :cond_3

    .line 3642
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    add-int/lit8 v6, v6, -0x5

    if-ge v4, v6, :cond_7

    .line 3648
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Battery level now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3661
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 3654
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleScreenOnBlockerReleased()V
    .locals 2

    .prologue
    .line 3704
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3705
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3706
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3707
    monitor-exit v1

    .line 3708
    return-void

    .line 3707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 2648
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 2649
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2650
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 3

    .prologue
    .line 3483
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3485
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "handleUserActivityTimeout"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3489
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3490
    monitor-exit v1

    .line 3491
    return-void

    .line 3490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .parameter "wakeLock"

    .prologue
    .line 2776
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2778
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleWakeLockDeath: lock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v4}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2782
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2783
    monitor-exit v2

    .line 2793
    :goto_0
    return-void

    .line 2786
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2787
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2789
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2790
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2791
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2792
    monitor-exit v2

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 3563
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCpuNeededLocked()Z
    .locals 1

    .prologue
    .line 3880
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 3555
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 4120
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .parameter "wakeLock"

    .prologue
    .line 2714
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 2720
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2718
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2714
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private isScreenOnInternal()Z
    .locals 2

    .prologue
    .line 3918
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3919
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3921
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 3801
    const/high16 v0, -0x4080

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 3796
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2877
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2878
    sparse-switch p1, :sswitch_data_0

    .line 2889
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 2883
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 2891
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2886
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/power/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 2878
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private isWakeupByEvents(I)Z
    .locals 16
    .parameter "EventNum"

    .prologue
    .line 1915
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(GYP)enter isWakeupByEvents,mLastWakeupSourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!EventNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/4 v11, 0x0

    .line 1919
    .local v11, notEnterSleep:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1920
    .local v12, now:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1921
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1923
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1924
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    if-nez v1, :cond_1

    .line 1926
    const/4 v14, 0x0

    monitor-exit v15

    .line 2004
    :goto_0
    return v14

    .line 1928
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    if-nez v1, :cond_3

    .line 1929
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    .line 1931
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    sub-long v1, v12, v1

    const-wide/16 v3, 0x2ee

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1932
    const/4 v14, 0x1

    monitor-exit v15

    goto :goto_0

    .line 2002
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1934
    :cond_2
    :try_start_1
    const-string v1, "PowerManagerService"

    const-string v2, "(GYP)isWakeupByEvents,query is timeout!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 v14, 0x0

    monitor-exit v15

    goto :goto_0

    .line 1942
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1943
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1944
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 1945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1947
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(GYP)enter sleep check_in_isWakeupByEvents,mScreenIsOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mScreenIsSwitchToOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRequestSleepCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOfTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1949
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    .line 1951
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    sub-long v1, v12, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    .line 1952
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long v1, v12, v1

    const-wide/16 v3, 0x1770

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 1953
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/power/PowerManagerService;->processNotEnterSleep(J)V

    .line 1955
    :cond_5
    const/4 v11, 0x1

    .line 1981
    :goto_1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    .line 1984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1985
    .local v9, msg:Landroid/os/Message;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1987
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 1988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2000
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    if-eqz v1, :cond_9

    const/4 v14, 0x1

    .line 2001
    .local v14, result:Z
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    .line 2002
    monitor-exit v15

    goto/16 :goto_0

    .line 1958
    .end local v9           #msg:Landroid/os/Message;
    .end local v14           #result:Z
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeupSourceId:I

    .line 1959
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    sub-long v1, v12, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    .line 1961
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    .line 1962
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    .line 1963
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    .line 1965
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    .line 1966
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->checkHardwareIsOnWhenSleep()V

    .line 1967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iget v1, v1, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_7

    .line 1968
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1969
    .local v10, msg1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v10}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1972
    .end local v10           #msg1:Landroid/os/Message;
    :cond_7
    new-instance v1, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;-><init>(Lcom/android/server/power/PowerManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    .line 1973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    const/16 v2, 0x3e8

    iput v2, v1, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    .line 1974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->setTwoWakeTimeAndSleepTime(JJJ)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1977
    .local v8, check_userintravtive_msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1978
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(GYP)new wakeup:mPrevWakeupTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mPrevWakeupTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentWakeupTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mCurrentWakeupTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentSleepTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mCurrentSleepTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSleepSuccessCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1996
    .end local v8           #check_userintravtive_msg:Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 1998
    const/4 v14, 0x0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2000
    .restart local v9       #msg:Landroid/os/Message;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4339
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 4340
    return-void
.end method

.method public static lowLevelShutdown()V
    .locals 0

    .prologue
    .line 4328
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeShutdown()V

    .line 4329
    return-void
.end method

.method private napInternal(J)V
    .locals 2
    .parameter "eventTime"

    .prologue
    .line 3158
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3159
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3162
    :cond_0
    monitor-exit v1

    .line 3163
    return-void

    .line 3162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(J)Z
    .locals 4
    .parameter "eventTime"

    .prologue
    const/4 v0, 0x1

    .line 3167
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "napNoUpdateLocked: eventTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 3172
    :cond_0
    const/4 v0, 0x0

    .line 3179
    :goto_0
    return v0

    .line 3175
    :cond_1
    const-string v1, "PowerManagerService"

    const-string v2, "Nap time..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3178
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    goto :goto_0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeShutdown()V
.end method

.method private notifyClientAlarmInfo()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    .line 832
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "PowerManagerService"

    const-string v2, "MSG_CHECK_ABONORAML_EVENT_NOTIFACATION has been in quque,return!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 2853
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 2857
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wakeLock"

    .prologue
    .line 2860
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;IILandroid/os/WorkSource;)V

    .line 2864
    :cond_0
    return-void
.end method

.method private predictSerchAction()V
    .locals 7

    .prologue
    .line 1216
    const-string v2, "PowerManagerService"

    const-string v3, "serch network...,decide to saving power!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v1, 0x0

    .local v1, temp:I
    :goto_0
    sget v2, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-ge v1, v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    return-void

    .line 1219
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v2, v2, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    #calls: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->isSameLocation(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$3500(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1220
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v2, v2, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v2

    sget v3, Lcom/android/server/power/PowerManagerService;->MIN_VALIDE_HISTORY_DATA_NUM:I

    if-lt v2, v3, :cond_2

    .line 1221
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serch network...,decide to saving power!SearchCountRorTooLongTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SNStatisticalsTable[temp].SerachTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$400(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v5, v5, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$400(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v6, v6, v1

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1225
    .local v0, sendmsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1217
    .end local v0           #sendmsg:Landroid/os/Message;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processNotEnterSleep(J)V
    .locals 11
    .parameter "now"

    .prologue
    const/4 v10, 0x1

    .line 2014
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eq v7, v10, :cond_0

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    if-nez v7, :cond_1

    .line 2037
    :cond_0
    return-void

    .line 2016
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2017
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2018
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2019
    .local v6, wl:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v4, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 2020
    .local v4, myws:Landroid/os/WorkSource;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    if-eq v7, v10, :cond_3

    .line 2021
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WakeLock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not consensus with screen off state!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2025
    :cond_3
    if-nez v4, :cond_4

    .line 2026
    iget v5, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 2027
    .local v5, uid:I
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/power/PowerManagerService;->recordNotEnterSleepInfo(IJ)V

    goto :goto_1

    .line 2029
    .end local v5           #uid:I
    :cond_4
    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2030
    .local v0, M:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 2031
    invoke-virtual {v4, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 2032
    .restart local v5       #uid:I
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/power/PowerManagerService;->recordNotEnterSleepInfo(IJ)V

    .line 2030
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private readConfigurationLocked()V
    .locals 2

    .prologue
    .line 2588
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2590
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 2592
    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 2594
    const v1, 0x1110041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 2596
    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 2598
    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 2600
    return-void
.end method

.method private recordNotEnterSleepInfo(IJ)V
    .locals 7
    .parameter "uid"
    .parameter "now"

    .prologue
    .line 2061
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->getRunningPkgForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, rst:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2063
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot find pkgName!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_0
    return-void

    .line 2067
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 2068
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 2070
    .local v2, u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    if-nez v2, :cond_2

    .line 2071
    new-instance v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .end local v2           #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 2072
    .restart local v2       #u:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    :cond_2
    iget-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastCheckTime:J

    cmp-long v3, v3, p2

    if-eqz v3, :cond_0

    .line 2075
    iget-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastRequestGotoSleep:J

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 2076
    iget v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2077
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastRequestGotoSleep:J

    .line 2078
    iget-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long v5, p2, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    .line 2084
    :goto_1
    iput-wide p2, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastCheckTime:J

    .line 2085
    iget-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 2086
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->notifyClientAlarmInfo()V

    .line 2067
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2081
    :cond_4
    iget-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    sub-long v5, p2, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    goto :goto_1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 6
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 2747
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2748
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 2749
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2750
    monitor-exit v3

    .line 2773
    :goto_0
    return-void

    .line 2753
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2754
    .local v1, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2756
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseWakeLockInternal: lock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tag=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", pid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2763
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2765
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 2766
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2769
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2770
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2771
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2772
    monitor-exit v3

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3588
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 3589
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3590
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3591
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3592
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3594
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendPendingNotificationsLocked()V
    .locals 2
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, modify for assertlock and button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerService$OppoHelper;->updateButtonBrightness(Lcom/android/server/power/PowerManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpFinished()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onGoToSleepFinished()V

    :cond_1
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 4141
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4142
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 4143
    monitor-exit v3

    .line 4150
    :goto_0
    return-void

    .line 4145
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 4146
    .local v0, light:Lcom/android/server/LightsService$Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4149
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 4146
    .end local v0           #light:Lcom/android/server/LightsService$Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0       #light:Lcom/android/server/LightsService$Light;
    :cond_1
    move v1, v2

    .line 4149
    goto :goto_1
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 4112
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4113
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4114
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4115
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4116
    monitor-exit v1

    .line 4117
    return-void

    .line 4116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 4184
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4185
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_0

    .line 4186
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 4187
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4188
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4190
    :cond_0
    monitor-exit v1

    .line 4191
    return-void

    .line 4190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 4092
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4094
    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .parameter "adj"

    .prologue
    .line 4296
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4299
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 4300
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 4301
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4302
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4304
    :cond_0
    monitor-exit v1

    .line 4305
    return-void

    .line 4304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 4262
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4263
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 4264
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 4265
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4266
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4268
    :cond_0
    monitor-exit v1

    .line 4269
    return-void

    .line 4268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 4
    .parameter "timeoutMillis"

    .prologue
    .line 4228
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4229
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 4230
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4231
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4232
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4234
    :cond_0
    monitor-exit v1

    .line 4235
    return-void

    .line 4234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 3544
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 3853
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .parameter "wasPowered"
    .parameter "oldPlugType"
    .parameter "dockedOnWirelessCharger"

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 3306
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    .line 3332
    :cond_0
    :goto_0
    return v0

    .line 3312
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    .line 3319
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    .line 3326
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3332
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 4
    .parameter "shutdown"
    .parameter "confirm"
    .parameter "reason"
    .parameter "wait"

    .prologue
    .line 4000
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 4001
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4004
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V

    .line 4018
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4019
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4020
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4023
    if-eqz p4, :cond_2

    .line 4024
    monitor-enter v1

    .line 4027
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4028
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4031
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4033
    :cond_2
    return-void
.end method

.method private smartPowerGetSetting()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 662
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerGetSetting!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 664
    .local v1, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "smartpowersetting.txt"

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 665
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 666
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerGetSetting,file isnot exsit! rerun default value"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    :goto_0
    return v7

    .line 669
    :cond_1
    const/4 v5, 0x0

    .line 670
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 672
    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 674
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v7

    .line 681
    .local v7, temp:I
    if-eqz v3, :cond_2

    .line 682
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 684
    :cond_2
    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v8

    goto :goto_0

    .line 676
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #temp:I
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 677
    .local v4, ex:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "PowerManagerService"

    const-string v9, " read smartPowerGetSetting error!,return default value!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    if-eqz v2, :cond_3

    .line 682
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 684
    :cond_3
    if-eqz v5, :cond_0

    .line 685
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 688
    :catch_2
    move-exception v8

    goto :goto_0

    .line 680
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 681
    :goto_2
    if-eqz v2, :cond_4

    .line 682
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 684
    :cond_4
    if-eqz v5, :cond_5

    .line 685
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 690
    :cond_5
    :goto_3
    throw v8

    .line 688
    :catch_3
    move-exception v9

    goto :goto_3

    .line 680
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 676
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private smartPowerGetWirelessEnv()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 697
    const-string v9, "PowerManagerService"

    const-string v10, "smartPowerGetWirelessEnv!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 699
    .local v1, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v9, "smartpowerwirelessenv.txt"

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 701
    const-string v9, "PowerManagerService"

    const-string v10, "smartPowerGetWirelessEnv,file isnot exsit! set default value"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const/4 v5, 0x0

    .line 706
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 708
    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 709
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 710
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    .line 711
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 712
    .local v8, recordNum:I
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    sget v10, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-ge v9, v10, :cond_2

    sget v9, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-lt v8, v9, :cond_4

    .line 713
    :cond_2
    const-string v9, "PowerManagerService"

    const-string v10, "smartPowerGetWirelessEnv,file para error! set default value"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 740
    if-eqz v3, :cond_3

    .line 742
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 747
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 749
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v9

    goto :goto_0

    .line 717
    :cond_4
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 718
    :try_start_5
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    new-instance v10, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    invoke-direct {v10, p0}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;-><init>(Lcom/android/server/power/PowerManagerService;)V

    aput-object v10, v9, v7

    .line 719
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$402(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 720
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$502(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 721
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$602(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 722
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    new-instance v10, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    invoke-direct {v10, p0}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$702(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    .line 723
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$802(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 724
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$902(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 725
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1002(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 726
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1102(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 727
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1202(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 728
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1302(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 729
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v9, v9, v7

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1402(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 717
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 731
    :cond_5
    const-string v9, "PowerManagerService"

    const-string v10, " read smartPowerGetWirelessEnv sucess!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 740
    if-eqz v3, :cond_6

    .line 742
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 747
    :cond_6
    :goto_3
    if-eqz v6, :cond_0

    .line 749
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 750
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 733
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #recordNum:I
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 734
    .local v4, ex:Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v9, "PowerManagerService"

    const-string v10, " read smartPowerGetWirelessEnv error!,set default value!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    .line 736
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    sget v9, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-ge v7, v9, :cond_7

    .line 737
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    const/4 v10, 0x0

    aput-object v10, v9, v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 736
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 740
    :cond_7
    if-eqz v2, :cond_8

    .line 742
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 747
    :cond_8
    :goto_6
    if-eqz v5, :cond_0

    .line 749
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 750
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 740
    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #i:I
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v2, :cond_9

    .line 742
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 747
    :cond_9
    :goto_8
    if-eqz v5, :cond_a

    .line 749
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 752
    :cond_a
    :goto_9
    throw v9

    .line 743
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #recordNum:I
    :catch_4
    move-exception v9

    goto/16 :goto_1

    .restart local v7       #i:I
    :catch_5
    move-exception v9

    goto :goto_3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #recordNum:I
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v4       #ex:Ljava/io/IOException;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    goto :goto_6

    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #i:I
    :catch_7
    move-exception v10

    goto :goto_8

    .line 750
    :catch_8
    move-exception v10

    goto :goto_9

    .line 740
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 733
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private smartPowerInit()V
    .locals 5

    .prologue
    .line 570
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Smart Power Mananger"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerEventThread:Landroid/os/HandlerThread;

    .line 571
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 572
    new-instance v1, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    .line 573
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerGetSetting()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    .line 574
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartpower ver 1.10,mSmartPowerControlFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v1, "SmartPowerManager"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 576
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 577
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.SmartPowerManagerAlarmEvent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAbnormalEventNotificationIntent:Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAbnormalEventNotificationIntent:Landroid/content/Intent;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerGetWirelessEnv()V

    .line 583
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 586
    return-void
.end method

.method private smartPowerScreenOffProcess()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1539
    const-string v1, "PowerManagerService"

    const-string v2, "GYP POWER DEBUG: in smartPowerScreenOffProcess!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 1541
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->notifyAppSwitchComplete()V

    .line 1542
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    .line 1544
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mGotoSleepStartTime:J

    .line 1545
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAllScreenOnTimeLen:J

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAllScreenOnTimeLen:J

    .line 1546
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mRequestSleepCount:I

    .line 1548
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v7}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1549
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v7}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1550
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHaveCHECK_SYSTEM_SLEEPandmCheckWakeupObject:Z

    .line 1552
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHave_mCheckWakeup:Z

    .line 1554
    return-void
.end method

.method private smartPowerScreenOnProcess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1556
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 1557
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    if-ne v0, v4, :cond_0

    .line 1558
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsSwitchToOn:Z

    .line 1560
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenIsOff:Z

    .line 1561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J

    .line 1563
    const-string v0, "PowerManagerService"

    const-string v1, "GYP POWER DEBUG: in smartPowerScreenOnProcess!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-void
.end method

.method private smartPowerUserActivityProLocked()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v3, 0x1

    .line 1306
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/DisplayPowerController;->setLCDBrightDirectlyLocked(IZ)V

    .line 1308
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    and-int/lit8 v2, v2, -0x4

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1310
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GYP POWER DEBUG:smartPowerUserActivityProLocked blackligntmBackLightRecover.BackLightRecoverMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mBackLightRecover.FrameCounters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/16 v2, -0x1f40

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1313
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1f40

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    add-int/lit16 v2, v2, -0x7d0

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->removeMessages(I)V

    .line 1316
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1317
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1318
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GYP POWER DEBUG:smartPowerUserActivityProLocked & start useractivity,timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private smartPowerWriteSetting()V
    .locals 10

    .prologue
    .line 596
    const-string v6, "PowerManagerService"

    const-string v7, "smartPowerWriteSetting!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 613
    const/4 v5, 0x0

    .line 614
    .local v5, out:Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 615
    .local v1, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v6, "smartpowersetting.txt"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 618
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    const/4 v3, 0x0

    .line 626
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    .end local v5           #out:Ljava/io/DataOutputStream;
    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 640
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :try_start_2
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 644
    :goto_0
    if-eqz v5, :cond_1

    .line 646
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 651
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 653
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 659
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, e:Ljava/io/IOException;
    const-string v6, "PowerManagerService"

    const-string v7, "smartPowerWriteSetting is error 000!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 627
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 628
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "PowerManagerService"

    const-string v7, "smartPowerWriteSetting is error 0002!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v3, :cond_2

    .line 631
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 632
    :catch_2
    move-exception v6

    goto :goto_2

    .line 641
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 642
    .local v2, e:Ljava/io/IOException;
    const-string v6, "PowerManagerService"

    const-string v7, "smartPowerWriteSetting is error 0001!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 654
    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method private smartPowerWriteWirelessEnv()V
    .locals 10

    .prologue
    .line 759
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerWriteWirelessEnv!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v6, 0x0

    .line 762
    .local v6, out:Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 763
    .local v1, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "smartpowerwirelessenv.txt"

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 764
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 766
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    const/4 v3, 0x0

    .line 774
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v4, v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 786
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    .end local v6           #out:Ljava/io/DataOutputStream;
    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 788
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :try_start_2
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 789
    const/4 v7, 0x0

    .line 790
    .local v7, valideCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget v8, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-ge v5, v8, :cond_1

    .line 791
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    if-nez v8, :cond_3

    .line 796
    :cond_1
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 797
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    .line 798
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$400(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 799
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$500(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 800
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 801
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$800(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 802
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$900(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 803
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1000(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 804
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1100(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 805
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1200(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 806
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1300(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 807
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v8, v8, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v8

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1400(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 797
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 767
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #i:I
    .end local v7           #valideCount:I
    :catch_0
    move-exception v2

    .line 768
    .local v2, e:Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerWriteWirelessEnv is error 000!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 775
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 776
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerWriteWirelessEnv is error 0002!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v3, :cond_2

    .line 779
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 780
    :catch_2
    move-exception v8

    goto :goto_2

    .line 794
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #i:I
    .restart local v7       #valideCount:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 790
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 810
    .end local v5           #i:I
    .end local v7           #valideCount:I
    :catch_3
    move-exception v2

    .line 811
    .local v2, e:Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string v9, "smartPowerWriteSetting is error 0001!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v6, :cond_5

    .line 815
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 820
    :cond_5
    :goto_3
    if-eqz v4, :cond_2

    .line 822
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 823
    :catch_4
    move-exception v8

    goto :goto_2

    .line 816
    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method private startWatchingForBootAnimationFinished()V
    .locals 2

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 3931
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)V
    .locals 9
    .parameter "dirty"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3719
    and-int/lit16 v4, p1, 0x43f

    if-eqz v4, :cond_6

    .line 3722
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPowerStateLocked()I

    move-result v1

    .line 3723
    .local v1, newScreenState:I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eq v1, v4, :cond_2

    .line 3724
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v4, :cond_0

    .line 3727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    .line 3730
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 3732
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerScreenOnProcess()V

    .line 3738
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v1, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 3739
    if-eqz v1, :cond_8

    move v7, v5

    :goto_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_9

    move v4, v5

    :goto_2
    invoke-static {v7, v4}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 3744
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3745
    .local v3, screenBrightness:I
    const/4 v2, 0x0

    .line 3746
    .local v2, screenAutoBrightnessAdjustment:F
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v4, v5, :cond_a

    move v0, v5

    .line 3748
    .local v0, autoBrightness:Z
    :goto_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3749
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3750
    const/4 v0, 0x0

    .line 3756
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 3757
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3758
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3760
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3767
    :cond_4
    :goto_5
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3769
    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v7, -0x4080

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 3771
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v3, v4, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 3772
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput v2, v4, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3774
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iput-boolean v0, v4, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 3776
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->tag:Z

    if-eqz v7, :cond_e

    :cond_5
    :goto_6
    iput-boolean v5, v4, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 3778
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;->isHeld()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 3780
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v4, v5, v7}, Lcom/android/server/power/DisplayPowerController;->requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3782
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3785
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScreenStateLocked: mDisplayReady="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newScreenState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWakefulness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWakeLockSummary=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUserActivitySummary=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBootCompleted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    .end local v0           #autoBrightness:Z
    .end local v1           #newScreenState:I
    .end local v2           #screenAutoBrightnessAdjustment:F
    .end local v3           #screenBrightness:I
    :cond_6
    return-void

    .line 3733
    .restart local v1       #newScreenState:I
    :cond_7
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 3735
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerScreenOffProcess()V

    goto/16 :goto_0

    :cond_8
    move v7, v6

    .line 3739
    goto/16 :goto_1

    :cond_9
    move v4, v6

    goto/16 :goto_2

    .restart local v2       #screenAutoBrightnessAdjustment:F
    .restart local v3       #screenBrightness:I
    :cond_a
    move v0, v6

    .line 3746
    goto/16 :goto_3

    .line 3751
    .restart local v0       #autoBrightness:Z
    :cond_b
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3752
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_4

    .line 3753
    :cond_c
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3754
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_4

    .line 3762
    :cond_d
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3764
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_5

    :cond_e
    move v5, v6

    .line 3776
    goto/16 :goto_6
.end method

.method private updateDreamLocked(I)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 3574
    and-int/lit16 v0, p1, 0x3f7

    if-eqz v0, :cond_0

    .line 3583
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 3585
    :cond_0
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 12
    .parameter "dirty"

    .prologue
    const/4 v3, 0x0

    .line 3248
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    .line 3249
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 3250
    .local v10, wasPowered:Z
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 3251
    .local v7, oldPlugType:I
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 3252
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 3253
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 3256
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsPoweredLocked Start Phase 0 : wasPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    const-string v0, "persist.sys.quickboot"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3266
    .local v8, quickbootVal:I
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getQuickBootMode()I

    move-result v9

    .line 3267
    .local v9, quickboot_state:I
    const-string v0, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gaoqiang add bootmode = poweroff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getQuickBootMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    if-eqz v9, :cond_1

    .line 3269
    const-string v0, "PowerManagerService"

    const-string v3, "gaoqiang add bootmode  poweroff return"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    .end local v7           #oldPlugType:I
    .end local v8           #quickbootVal:I
    .end local v9           #quickboot_state:I
    .end local v10           #wasPowered:Z
    :cond_0
    :goto_0
    return-void

    .line 3274
    .restart local v7       #oldPlugType:I
    .restart local v8       #quickbootVal:I
    .restart local v9       #quickboot_state:I
    .restart local v10       #wasPowered:Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v10, v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v7, v0, :cond_0

    .line 3275
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3278
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v6

    .line 3286
    .local v6, dockedOnWirelessCharger:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3287
    .local v1, now:J
    invoke-direct {p0, v10, v7, v6}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3289
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    .line 3291
    :cond_3
    const/16 v5, 0x3e8

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3296
    if-eqz v6, :cond_0

    .line 3297
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    goto :goto_0
.end method

.method private updatePowerStateLocked()V
    .locals 7

    .prologue
    .line 3191
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v4, :cond_1

    .line 3230
    :cond_0
    :goto_0
    return-void

    .line 3195
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePowerStateLocked START: mDirty="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 3198
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 3203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3204
    .local v2, now:J
    const/4 v1, 0x0

    .line 3206
    .local v1, dirtyPhase2:I
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3207
    .local v0, dirtyPhase1:I
    or-int/2addr v1, v0

    .line 3208
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3210
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 3211
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 3212
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3218
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(I)V

    .line 3219
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)V

    .line 3222
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_3

    .line 3223
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 3229
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 2603
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2605
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "screensaver_enabled"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 2609
    const-string v6, "screensaver_activate_on_sleep"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 2613
    const-string v6, "screensaver_activate_on_dock"

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 2617
    const-string v3, "screen_off_timeout"

    const/16 v6, 0x3a98

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 2620
    const-string v3, "stay_on_while_plugged_in"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 2623
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 2624
    .local v1, oldScreenBrightnessSetting:I
    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 2627
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v1, v3, :cond_0

    .line 2628
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 2631
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 2633
    .local v0, oldScreenAutoBrightnessAdjustmentSetting:F
    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 2636
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 2637
    const/high16 v3, 0x7fc0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2640
    :cond_1
    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 2644
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2645
    return-void

    .end local v0           #oldScreenAutoBrightnessAdjustmentSetting:F
    .end local v1           #oldScreenBrightnessSetting:I
    :cond_2
    move v3, v5

    .line 2605
    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v5

    .line 2609
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    .line 2613
    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5
.end method

.method private updateStatisticalsData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->serachNetworkTime:J

    sub-long v0, v4, v6

    .line 1184
    .local v0, delta:J
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Serach netwok time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    long-to-int v2, v4

    .line 1186
    .local v2, serachTime:I
    const/4 v3, 0x0

    .local v3, temp:I
    :goto_0
    sget v4, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    if-ge v3, v4, :cond_0

    .line 1187
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 1203
    :cond_0
    sget v4, Lcom/android/server/power/PowerManagerService;->MAX_SERCH_NETWORK_TIME_MONITOR:I

    if-lt v2, v4, :cond_1

    .line 1204
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    new-instance v6, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    invoke-direct {v6, p0}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;-><init>(Lcom/android/server/power/PowerManagerService;)V

    aput-object v6, v4, v5

    .line 1205
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    aget-object v4, v4, v5

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v4, v2}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$402(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1206
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    aget-object v4, v4, v5

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I
    invoke-static {v4, v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$502(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1207
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    aget-object v4, v4, v5

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v4, v8}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$602(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1208
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    aget-object v4, v4, v5

    new-instance v5, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;-><init>(Lcom/android/server/power/PowerManagerService;)V

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$702(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    .line 1209
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    aget-object v4, v4, v5

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    #calls: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->copyFrom(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)V
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$3600(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)V

    .line 1211
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/server/power/PowerManagerService;->MAX_TABLE_ITEM_NUM:I

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->TableInsertPlace:I

    .line 1213
    :cond_2
    :goto_1
    return-void

    .line 1189
    :cond_3
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    #calls: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->isSameLocation(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$3500(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1190
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$508(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    .line 1191
    sget v4, Lcom/android/server/power/PowerManagerService;->MAX_SERCH_NETWORK_TIME_MONITOR:I

    if-lt v2, v4, :cond_4

    .line 1192
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$608(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    .line 1193
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    invoke-static {v4, v2}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$412(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1195
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$500(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v4

    sget v5, Lcom/android/server/power/PowerManagerService;->MAX_HISTORY_DATA_NUM:I

    if-lt v4, v5, :cond_2

    .line 1196
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    sget v5, Lcom/android/server/power/PowerManagerService;->MIN_VALIDE_HISTORY_DATA_NUM:I

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$502(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1197
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v5, v5, v3

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v5

    sget v6, Lcom/android/server/power/PowerManagerService;->MIN_VALIDE_HISTORY_DATA_NUM:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/server/power/PowerManagerService;->MAX_HISTORY_DATA_NUM:I

    div-int/2addr v5, v6

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$602(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    .line 1198
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->SNStatisticalsTable:[Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;

    aget-object v5, v5, v3

    #getter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$400(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I

    move-result v5

    sget v6, Lcom/android/server/power/PowerManagerService;->MIN_VALIDE_HISTORY_DATA_NUM:I

    mul-int/2addr v5, v6

    sget v6, Lcom/android/server/power/PowerManagerService;->MAX_HISTORY_DATA_NUM:I

    div-int/2addr v5, v6

    #setter for: Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->access$402(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I

    goto :goto_1

    .line 1186
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .parameter "dirty"

    .prologue
    .line 3340
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 3341
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 3342
    .local v0, wasStayOn:Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3344
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 3349
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 3350
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3353
    .end local v0           #wasStayOn:Z
    :cond_0
    return-void

    .line 3346
    .restart local v0       #wasStayOn:Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 3

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isCpuNeededLocked()Z

    move-result v0

    .line 3863
    .local v0, wantCpu:Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eq v0, v1, :cond_0

    .line 3864
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3865
    if-eqz v0, :cond_1

    .line 3867
    const-string v1, "PowerManagerService"

    const-string v2, "updateSuspendBlockerLocked: Acquiring suspend blocker."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3877
    :cond_0
    :goto_0
    return-void

    .line 3872
    :cond_1
    const-string v1, "PowerManagerService"

    const-string v2, "updateSuspendBlockerLocked: Releasing suspend blocker."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->release()V

    goto :goto_0
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 11
    .parameter "now"
    .parameter "dirty"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, modify for button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 3424
    and-int/lit8 v7, p3, 0x26

    if-eqz v7, :cond_4

    .line 3425
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v7, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3427
    const-wide/16 v1, 0x0

    .line 3428
    .local v1, nextTimeout:J
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v7, :cond_6

    .line 3429
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v4

    .line 3430
    .local v4, screenOffTimeout:I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 3432
    .local v3, screenDimDuration:I
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 3433
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 3434
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v9, v4

    add-long/2addr v7, v9

    int-to-long v9, v3

    sub-long v1, v7, v9

    .line 3436
    cmp-long v7, p1, v1

    if-gez v7, :cond_5

    .line 3437
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 3445
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v7, :cond_2

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    .line 3447
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v9, v4

    add-long v1, v7, v9

    .line 3448
    cmp-long v7, p1, v1

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v7, :cond_2

    .line 3451
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v7, v7, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v7, v5, :cond_1

    move v5, v6

    :cond_1
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 3456
    :cond_2
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v5, :cond_3

    .line 3457
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3458
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3459
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3466
    .end local v0           #msg:Landroid/os/Message;
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    :cond_3
    :goto_1
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mUserActivitySummary=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nextTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    .end local v1           #nextTimeout:J
    :cond_4
    return-void

    .line 3439
    .restart local v1       #nextTimeout:J
    .restart local v3       #screenDimDuration:I
    .restart local v4       #screenOffTimeout:I
    :cond_5
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v9, v4

    add-long v1, v7, v9

    .line 3440
    cmp-long v7, p1, v1

    if-gez v7, :cond_0

    .line 3441
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_0

    .line 3462
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    :cond_6
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_1
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 6
    .parameter "dirty"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3362
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_3

    .line 3363
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3364
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->tag:Z

    .line 3366
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3367
    .local v1, numWakeLocks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3368
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3369
    .local v2, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 3367
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3371
    :sswitch_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 3374
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 3375
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xb

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3377
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 3378
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 3383
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 3384
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3385
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 3386
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 3391
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_0

    .line 3392
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3393
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_0

    .line 3394
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 3399
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_1

    .line 3400
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3402
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->tag:Z

    goto :goto_1

    .line 3408
    .end local v2           #wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    .end local v0           #i:I
    .end local v1           #numWakeLocks:I
    :cond_3
    return-void

    .line 3369
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 5
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 2827
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2828
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 2829
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2830
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock not active"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2839
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2833
    .restart local v0       #index:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2834
    .local v1, wakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2835
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2836
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 2837
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2839
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2840
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 5
    .parameter "dirty"

    .prologue
    .line 3519
    const/4 v0, 0x0

    .line 3520
    .local v0, changed:Z
    and-int/lit16 v3, p1, 0xa97

    if-eqz v3, :cond_0

    .line 3523
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3525
    const-string v3, "PowerManagerService"

    const-string v4, "updateWakefulnessLocked: Bed time..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3528
    .local v1, time:J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3529
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(J)Z

    move-result v0

    .line 3536
    .end local v1           #time:J
    :cond_0
    :goto_0
    return v0

    .line 3531
    .restart local v1       #time:J
    :cond_1
    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JI)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 6
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 2930
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 2931
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 2
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"
    .parameter "uid"

    .prologue
    .line 2934
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2935
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2936
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2938
    :cond_0
    monitor-exit v1

    .line 2939
    return-void

    .line 2938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 5
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"
    .parameter "uid"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2943
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userActivityNoUpdateLocked: eventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2978
    :goto_0
    return v0

    .line 2953
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 2956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastEventElapsedRealtime:J

    .line 2958
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2

    .line 2959
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    .line 2961
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 2962
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2964
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerUserActivityProLocked()V

    goto :goto_0

    .line 2969
    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    .line 2970
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 2971
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2973
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerUserActivityProLocked()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2978
    goto :goto_0
.end method

.method private wakeUpFromNative(J)V
    .locals 0
    .parameter "eventTime"

    .prologue
    .line 2999
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V

    .line 3000
    return-void
.end method

.method private wakeUpInternal(J)V
    .locals 4
    .parameter "eventTime"

    .prologue
    .line 3003
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3004
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3005
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3006
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(ZI)V

    .line 3008
    :cond_0
    monitor-exit v1

    .line 3009
    return-void

    .line 3008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(J)Z
    .locals 7
    .parameter "eventTime"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 3013
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeUpNoUpdateLocked: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const-string v0, "sys.needchecktick"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timetick : needchecktick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sys.needchecktick"

    const-string v4, "no"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 3021
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "wakeUpNoUpdateLocked: Return false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :goto_0
    return v3

    .line 3025
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    .line 3040
    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 3041
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 3042
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3044
    const/16 v5, 0x3e8

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move v3, v6

    .line 3046
    goto :goto_0

    .line 3027
    :pswitch_1
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from sleep..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPendingNotificationsLocked()V

    .line 3029
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakeUpStarted()V

    .line 3030
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    goto :goto_1

    .line 3033
    :pswitch_2
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from dream..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3036
    :pswitch_3
    const-string v0, "PowerManagerService"

    const-string v1, "Waking up from nap..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .parameter "wakefulness"

    .prologue
    .line 4463
    packed-switch p0, :pswitch_data_0

    .line 4473
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4465
    :pswitch_0
    const-string v0, "Asleep"

    goto :goto_0

    .line 4467
    :pswitch_1
    const-string v0, "Awake"

    goto :goto_0

    .line 4469
    :pswitch_2
    const-string v0, "Dreaming"

    goto :goto_0

    .line 4471
    :pswitch_3
    const-string v0, "Napping"

    goto :goto_0

    .line 4463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "flags"
    .parameter "tag"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 2654
    if-nez p1, :cond_0

    .line 2655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2657
    :cond_0
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2661
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2668
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2669
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2671
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2675
    return-void

    .line 2664
    .end local v5           #uid:I
    .end local v6           #pid:I
    .end local v7           #ident:J
    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    .line 2673
    .restart local v5       #uid:I
    .restart local v6       #pid:I
    .restart local v7       #ident:J
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 4041
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4045
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4049
    return-void

    .line 4047
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4351
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 4353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4454
    :cond_0
    :goto_0
    return-void

    .line 4359
    :cond_1
    const-string v7, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4364
    :try_start_0
    const-string v7, "Power Manager State:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDirty=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakefulness="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsPowered="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPlugType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDockState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mProximityPositive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBootCompleted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSystemReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakeLockSummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivitySummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSandmanScheduled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastWakeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastSleepTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendWakeUpFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendWakeUpFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSendGoToSleepFinishedNotificationWhenReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mSendGoToSleepFinishedNotificationWhenReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisplayReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4393
    const-string v7, "Settings and Configuration:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsSupportedConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenOffTimeoutSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (enforced="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessModeSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4419
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked()I

    move-result v4

    .line 4420
    .local v4, screenOffTimeout:I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 4421
    .local v3, screenDimDuration:I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen off timeout: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake Locks: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4427
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4428
    .local v6, wl:Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4445
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #screenDimDuration:I
    .end local v4           #screenOffTimeout:I
    .end local v6           #wl:Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4431
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #screenDimDuration:I
    .restart local v4       #screenOffTimeout:I
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspend Blockers: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4433
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 4434
    .local v2, sb:Lcom/android/server/power/SuspendBlocker;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4437
    .end local v2           #sb:Lcom/android/server/power/SuspendBlocker;
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen On Blocker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4440
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display Blanker: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4443
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 4444
    .local v0, dpc:Lcom/android/server/power/DisplayPowerController;
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4445
    .local v5, wcd:Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4447
    if-eqz v0, :cond_4

    .line 4448
    invoke-virtual {v0, p2}, Lcom/android/server/power/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 4451
    :cond_4
    if-eqz v5, :cond_0

    .line 4452
    invoke-virtual {v5, p2}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public getAbnormalPowerEvents(I)Ljava/util/List;
    .locals 18
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    .local v8, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    packed-switch p1, :pswitch_data_0

    .line 1839
    :goto_0
    :pswitch_0
    return-object v8

    .line 1606
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1607
    .local v5, now:J
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1608
    .local v10, tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1609
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mSystemBootTime:J

    sub-long v12, v5, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mAllScreenOnTimeLen:J

    add-long v3, v12, v14

    .line 1610
    .local v3, lcdontime:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    const-wide/16 v14, 0x64

    mul-long/2addr v12, v14

    div-long/2addr v12, v3

    long-to-int v7, v12

    .line 1611
    .local v7, percent:I
    const-string v12, "LCD"

    invoke-virtual {v10, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerStatistics(II)[I

    move-result-object v9

    .line 1613
    .local v9, sts:[I
    const/4 v12, 0x1

    aget v12, v9, v12

    if-nez v12, :cond_0

    .line 1614
    const-string v12, "CPU"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1618
    :goto_1
    const-string v12, "Wireless"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mWireLessPowerSavingTime:J

    const-wide/16 v15, 0x64

    mul-long/2addr v13, v15

    const-wide/32 v15, 0x112a880

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1619
    const-string v12, "IODevice"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    const-string v12, "SmartPowerState"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1621
    const-string v12, "TotalRunTime"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mSystemBootTime:J

    sub-long v13, v5, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    const-string v12, "SleepTime"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mSleepTime:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1623
    const-string v12, "WakeupCount"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1624
    const-string v12, "AllCPU"

    const/4 v13, 0x1

    aget v13, v9, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1625
    const-string v12, "SaveCPU"

    const/4 v13, 0x2

    aget v13, v9, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mSleepSuccessCount:I

    mul-int/lit8 v14, v14, 0x14

    div-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1626
    const-string v12, "AllLCD"

    const-wide/16 v13, 0x3e8

    div-long v13, v3, v13

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1627
    const-string v12, "SaveLCD"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenLightSaveTimeLen:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1628
    const-string v12, "WirelessTrueTime"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mWireLessPowerSavingTime:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1629
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1616
    :cond_0
    const-string v12, "CPU"

    const/4 v13, 0x2

    aget v13, v9, v13

    mul-int/lit8 v13, v13, 0x64

    const/4 v14, 0x1

    aget v14, v9, v14

    div-int/2addr v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1633
    .end local v3           #lcdontime:J
    .end local v5           #now:J
    .end local v7           #percent:I
    .end local v9           #sts:[I
    .end local v10           #tmp:Landroid/os/Bundle;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1637
    .local v1, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1638
    .local v11, tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    const/16 v14, 0x8

    if-ge v12, v14, :cond_2

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v16, 0xea60

    cmp-long v12, v14, v16

    if-ltz v12, :cond_1

    .line 1639
    :cond_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1640
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1641
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v12, "Reason"

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1643
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1699
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1649
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1652
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1653
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    const/16 v14, 0x8

    if-ge v12, v14, :cond_5

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v16, 0xea60

    cmp-long v12, v14, v16

    if-ltz v12, :cond_4

    .line 1654
    :cond_5
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1655
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1656
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v12, "Reason"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1658
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1664
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 1665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1668
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_a

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1671
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1672
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    const/16 v14, 0x8

    if-ge v12, v14, :cond_9

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v16, 0xea60

    cmp-long v12, v14, v16

    if-ltz v12, :cond_8

    .line 1673
    :cond_9
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1674
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1675
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v12, "Reason"

    const/4 v14, 0x3

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1677
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1684
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1687
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1688
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    const/16 v14, 0x8

    if-ge v12, v14, :cond_c

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/32 v16, 0xea60

    cmp-long v12, v14, v16

    if-ltz v12, :cond_b

    .line 1689
    :cond_c
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1690
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1691
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v12, "Reason"

    const/4 v14, 0x4

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1693
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1699
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_d
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1704
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1705
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_e

    .line 1707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mNotEnterSleepUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1708
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1709
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1710
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v12, "Reason"

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1712
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1713
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    const-string v12, "Count"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1714
    const-string v12, "Time"

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1715
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1829
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 1718
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_f

    .line 1720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHardwareIsOnpUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1721
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1722
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v12, "Reason"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1725
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1726
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    const-string v12, "Count"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    const-string v12, "Time"

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1728
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1731
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_10

    .line 1732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mWifiWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1735
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_11

    .line 1737
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mBtWakeupUidStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1738
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1739
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1740
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v12, "Reason"

    const/4 v14, 0x3

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1742
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1743
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    const-string v12, "Count"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    const-string v12, "Time"

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1745
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1749
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_12

    .line 1751
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAlarmAppWakeupStats:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1752
    .restart local v1       #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1753
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1754
    const-string v14, "PkgName"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v12, "Reason"

    const/4 v14, 0x4

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1756
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    .line 1757
    .restart local v11       #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    const-string v12, "Count"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1758
    const-string v12, "Time"

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1759
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1763
    .end local v1           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v10           #tmp:Landroid/os/Bundle;
    .end local v11           #tmpApp:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_13

    .line 1764
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1765
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1766
    const-string v12, "PkgName"

    const-string v14, "Modem data"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1768
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SERVICE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_14

    .line 1771
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1772
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1773
    const-string v12, "PkgName"

    const-string v14, "Phone service event"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SERVICE_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1775
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SIGNAL_STRENTH_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_15

    .line 1778
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1779
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1780
    const-string v12, "PkgName"

    const-string v14, "Signal strength"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_PHONE_SIGNAL_STRENTH_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1782
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CALLFORWARDING_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_16

    .line 1787
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1788
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1789
    const-string v12, "PkgName"

    const-string v14, "CallForwarding"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CALLFORWARDING_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1791
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_ACTIVITY_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_17

    .line 1794
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1795
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1796
    const-string v12, "PkgName"

    const-string v14, "Data Activity"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_ACTIVITY_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1798
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_18

    .line 1801
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1802
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1803
    const-string v12, "PkgName"

    const-string v14, "Data connection"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1805
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_FAILED_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_19

    .line 1808
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1809
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1810
    const-string v12, "PkgName"

    const-string v14, "Data connection fail"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_DATA_CONNECTION_FAILED_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CELLLOCAION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_1a

    .line 1815
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1816
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    const-string v12, "PkgName"

    const-string v14, "Cell Location"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_CELLLOCAION_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_OTASP_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v12, v12, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    if-lez v12, :cond_1b

    .line 1822
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1823
    .restart local v10       #tmp:Landroid/os/Bundle;
    const-string v12, "EventNo"

    const/4 v14, 0x2

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1824
    const-string v12, "PkgName"

    const-string v14, "OTASP Event"

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v12, "Count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mModemEventStats_MODEM_OTASP_EVENT:Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    invoke-virtual {v10, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    .end local v10           #tmp:Landroid/os/Bundle;
    :cond_1b
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getAlarmAppNotUserInteractiveCountRecently(Ljava/lang/String;)I
    .locals 3
    .parameter "AppName"

    .prologue
    const/4 v0, 0x0

    .line 1582
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v1, :cond_0

    .line 1583
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getBatteryStatsImpl()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1585
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    if-nez v1, :cond_2

    .line 1590
    :cond_1
    :goto_0
    return v0

    .line 1586
    :cond_2
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1587
    const-string v1, "PowerManagerService"

    const-string v2, "getAlarmAppNotUserInteractiveCountRecently,pkgName==android,return 0!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1590
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getPkgNoUserInteravtiveCount(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getQuickBootMode()I
    .locals 2

    .prologue
    .line 3905
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mQucikBootLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3906
    :try_start_0
    sget v0, Lcom/android/server/power/PowerManagerService;->quickBootMode:I

    monitor-exit v1

    return v0

    .line 3907
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public goToSleep(JI)V
    .locals 5
    .parameter "eventTime"
    .parameter "reason"

    .prologue
    .line 3056
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 3057
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3060
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3064
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3068
    return-void

    .line 3066
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "ls"
    .parameter "am"
    .parameter "bs"
    .parameter "bss"
    .parameter "dm"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 544
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 545
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 546
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 547
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 548
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 549
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 550
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 552
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->handler:Landroid/os/Handler;

    .line 553
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->unblankAllDisplays()V

    .line 563
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->smartPowerInit()V

    .line 565
    return-void
.end method

.method public isPowered()Z
    .locals 2

    .prologue
    .line 3899
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3900
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    monitor-exit v1

    return v0

    .line 3901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 3889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3891
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenOnInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 2868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2870
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 4345
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4346
    :try_start_0
    monitor-exit v1

    .line 4347
    return-void

    .line 4346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nap(J)V
    .locals 5
    .parameter "eventTime"

    .prologue
    .line 3143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 3144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3147
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3151
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->napInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3155
    return-void

    .line 3153
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyGeneralWakeupEvent(IILjava/lang/String;I)V
    .locals 4
    .parameter "event_type"
    .parameter "sub_event_type"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 1868
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeupByEvents(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1877
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    .line 1870
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iput p1, v1, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    .line 1871
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyGeneralWakeupEvent,event_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sub_event_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerMonitorRealTime:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1874
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .parameter "confirm"
    .parameter "reason"
    .parameter "wait"

    .prologue
    .line 3970
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3974
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3976
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3978
    return-void

    .line 3976
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2736
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2740
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2744
    return-void

    .line 2742
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestButtonLedState(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/DisplayPowerController;->requestButtonLedState(ZI)V

    .line 3051
    return-void
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .parameter "on"
    .parameter "color"

    .prologue
    .line 4129
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4133
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4137
    return-void

    .line 4135
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    return-void
.end method

.method public setLCDDim(II)V
    .locals 8
    .parameter "Timeout"
    .parameter "interactive_type"

    .prologue
    .line 1474
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    if-nez v2, :cond_0

    .line 1513
    :goto_0
    return-void

    .line 1475
    :cond_0
    const/4 v0, 0x0

    .line 1476
    .local v0, Para1:I
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GYP POWER DEBUG:interactive_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1478
    packed-switch p2, :pswitch_data_0

    .line 1504
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4302(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1505
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1506
    const/4 v0, 0x1

    .line 1510
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1512
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1480
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4302(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1481
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    goto :goto_1

    .line 1510
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1486
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/16 v4, -0x1f40

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1487
    if-nez p2, :cond_2

    .line 1488
    int-to-long v4, p1

    const-wide/16 v6, 0x1770

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    .line 1489
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1490
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1491
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG:SET_WAITING_MODE_BIT command time out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " we convert it to reading mode!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$4402(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    goto :goto_1

    .line 1493
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1494
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, -0x3

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    goto :goto_2

    .line 1497
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I

    .line 1498
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBackLightRecover:Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;

    #getter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    #setter for: Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLcdBrightness(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 4313
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4316
    .local v0, ident:J
    :try_start_0
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLcdBrightness brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4319
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4321
    return-void

    .line 4319
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 4103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4105
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4109
    return-void

    .line 4107
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 2498
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2499
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 2500
    monitor-exit v1

    .line 2501
    return-void

    .line 2500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQuickBootMode(I)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 3911
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mQucikBootLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3912
    :try_start_0
    sput p1, Lcom/android/server/power/PowerManagerService;->quickBootMode:I

    .line 3913
    monitor-exit v1

    .line 3914
    return-void

    .line 3913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 4173
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4177
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4181
    return-void

    .line 4179
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSmartPowerManager(Landroid/os/Bundle;)I
    .locals 6
    .parameter "para"

    .prologue
    const/4 v2, 0x0

    .line 1567
    if-nez p1, :cond_0

    .line 1578
    :goto_0
    return v2

    .line 1570
    :cond_0
    const-string v3, "SmartPowerState"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1571
    .local v1, state:I
    if-ltz v1, :cond_1

    .line 1572
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    .line 1573
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1574
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1575
    const/4 v2, 0x1

    goto :goto_0

    .line 1577
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYP POWER DEBUG: setSmartPowerManager,state ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSmartPowerControlFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStayOnSetting(I)V
    .locals 5
    .parameter "val"

    .prologue
    .line 4081
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4085
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4089
    return-void

    .line 4087
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 4285
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4289
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4293
    return-void

    .line 4291
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 4251
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4255
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4259
    return-void

    .line 4257
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 5
    .parameter "timeoutMillis"

    .prologue
    .line 4217
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4221
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4225
    return-void

    .line 4223
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .parameter "confirm"
    .parameter "wait"

    .prologue
    const/4 v4, 0x0

    .line 3988
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3992
    .local v0, ident:J
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3994
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3996
    return-void

    .line 3994
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    .locals 18
    .parameter "twilight"
    .parameter "dreamManager"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, modify for button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2505
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 2506
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamManager:Lcom/android/server/dreams/DreamManagerService;

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 2509
    .local v14, pm:Landroid/os/PowerManager;
    invoke-virtual {v14}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 2510
    invoke-virtual {v14}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 2511
    invoke-virtual {v14}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2513
    new-instance v16, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    .line 2517
    .local v16, sensorManager:Landroid/hardware/SensorManager;
    new-instance v2, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v6, "PowerManagerService.Broadcasts"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnBlocker:Lcom/android/server/power/PowerManagerService$ScreenOnBlockerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/ScreenOnBlocker;Landroid/view/WindowManagerPolicy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 2523
    new-instance v2, Lcom/android/server/power/DisplayPowerController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mDisplayBlanker:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerControllerCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v7, p1

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/DisplayPowerController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;

    .line 2528
    new-instance v2, Lcom/android/server/power/WirelessChargerDetector;

    const-string v3, "PowerManagerService.WirelessChargerDetector"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 2530
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 2534
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2535
    .local v13, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2538
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2539
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2542
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2543
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2544
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2547
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2548
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2551
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 2552
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2557
    .local v15, resolver:Landroid/content/ContentResolver;
    const-string v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2560
    const-string v2, "screensaver_activate_on_sleep"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2563
    const-string v2, "screensaver_activate_on_dock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2566
    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2569
    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2572
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2575
    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 2581
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 2582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2583
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2584
    monitor-exit v17

    .line 2585
    return-void

    .line 2584
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v14           #pm:Landroid/os/PowerManager;
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v16           #sensorManager:Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public timeSinceScreenWasLastOn()J
    .locals 5

    .prologue
    .line 4156
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v0, :cond_0

    .line 4158
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 4160
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 4161
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 5
    .parameter "lock"
    .parameter "ws"

    .prologue
    const/4 v4, 0x0

    .line 2806
    if-nez p1, :cond_0

    .line 2807
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2810
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2812
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2820
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2824
    return-void

    .line 2815
    .end local v0           #ident:J
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 2822
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public userActivity(JII)V
    .locals 12
    .parameter "eventTime"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 2896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2897
    .local v8, now:J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2902
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2903
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    const-wide/32 v10, 0x493e0

    add-long/2addr v2, v10

    cmp-long v0, v8, v2

    if-ltz v0, :cond_0

    .line 2904
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 2905
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_0
    monitor-exit v1

    .line 2926
    :goto_0
    return-void

    .line 2911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2915
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 2916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2919
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2920
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, ident:J
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move/from16 v4, p4

    .line 2922
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2924
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public wakeUp(J)V
    .locals 5
    .parameter "eventTime"

    .prologue
    .line 2983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 2984
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2987
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2991
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2993
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2995
    return-void

    .line 2993
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getScreenBrightDefault()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, add for button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    return v0
.end method

.method getUserActivitySumm()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, add for button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    return v0
.end method

.method getWakefulness()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "TongXi.Li@Plf.Framework, add for button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

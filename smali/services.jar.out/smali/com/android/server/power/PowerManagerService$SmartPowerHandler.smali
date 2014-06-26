.class Lcom/android/server/power/PowerManagerService$SmartPowerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPowerHandler"
.end annotation


# static fields
.field static final AFTER_WAKEUP_CHECK_EVENT:I = 0x2

.field static final BINARY_BACKOFF_TIME_SLICE:I = 0x2710

.field static final CHECK_SYSTEM_SLEEP:I = 0x1

.field static final MAX_BINARY_COUNT:I = 0x7

.field static final MSG_BACKLIGHT_ANIMATION:I = 0x3

.field static final MSG_CHECK_ABONORAML_EVENT_NOTIFACATION:I = 0x4

.field static final MSG_CHECK_USER_INTERACTIVE:I = 0x10

.field static final MSG_MODEM_CELL_INFO_PROCESS:I = 0xa

.field static final MSG_MODEM_SERVICE_STATE_PROCESS:I = 0xc

.field static final MSG_MODEM_SIGNAL_STRENGTH_INFO_PROCESS:I = 0xb

.field static final MSG_SCREEN_DIM_PRO:I = 0xf

.field static final MSG_SETLCD_PARA:I = 0x0

.field static final MSG_SMAERT_SERCH_NETWORK_PRO:I = 0xd

.field static final MSG_WRITE_POWERSETTING:I = 0x5


# instance fields
.field private binaryCount:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 865
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 860
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->binaryCount:I

    .line 866
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 870
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1119
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 873
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/power/PowerManagerService;->LCDParaProcess(I)V
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$1500(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_0

    .line 891
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->LCDDimProcess()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 894
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    .line 895
    .local v7, temp:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;
    const-string v9, "PowerManagerService"

    const-string v10, "MSG_CHECK_USER_INTERACTIVE:"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget v9, v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupSourceId:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 897
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 898
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    iget-wide v13, v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimeCurrent:J

    const-wide/16 v15, 0x1f4

    sub-long/2addr v13, v15

    cmp-long v9, v11, v13

    if-gtz v9, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v11

    iget-wide v13, v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimeCurrent:J

    const-wide/16 v15, 0x7d0

    add-long/2addr v13, v15

    cmp-long v9, v11, v13

    if-gez v9, :cond_3

    .line 901
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x1

    iget-object v13, v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V

    .line 905
    :goto_1
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 903
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mbsi:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    iget-object v13, v7, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl;->setInfoToBatteryStatsImpl(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 939
    .end local v7           #temp:Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->LCDBackLightAnimationProcess()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2100(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 942
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->CheckSystemSleepProcess()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 945
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;

    #calls: Lcom/android/server/power/PowerManagerService;->checkWakeupReason(IILcom/android/server/power/PowerManagerService$PowerMonitorRealTime;)V
    invoke-static {v10, v11, v12, v9}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;IILcom/android/server/power/PowerManagerService$PowerMonitorRealTime;)V

    goto/16 :goto_0

    .line 948
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->checkSendAlarmNotifaction()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 952
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->smartPowerWriteSetting()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 1029
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1030
    .local v5, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 1031
    .local v1, PhoneType:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I
    invoke-static {v9, v1}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$802(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1032
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 1034
    :pswitch_a
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1035
    .local v4, location:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v4, :cond_4

    .line 1036
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1002(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1102(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1038
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1202(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1039
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    const/4 v10, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1302(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1040
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    const/4 v10, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1402(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1041
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GsmCellLocation,Lac="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " psc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1043
    :cond_4
    const-string v9, "PowerManagerService"

    const-string v10, "GsmCellLocation is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1047
    .end local v4           #location:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_b
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1048
    .local v2, cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v2, :cond_5

    .line 1049
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1002(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1050
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1102(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1051
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1202(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1302(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1053
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v10

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$1402(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    .line 1054
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CDMACellLocation,BaseStationId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " BaseStationLatitude="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " BaseStationLongitude="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SystemId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " NetworkId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    :cond_5
    const-string v9, "PowerManagerService"

    const-string v10, "cdmalocation is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1068
    .end local v1           #PhoneType:I
    .end local v2           #cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5           #phone:Landroid/telephony/TelephonyManager;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$900(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eq v9, v10, :cond_0

    .line 1071
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "old signalValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v11

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$900(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " current signalValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    #getter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$900(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I

    move-result v9

    if-nez v9, :cond_6

    .line 1073
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    #setter for: Lcom/android/server/power/PowerManagerService;->serachNetworkTime:J
    invoke-static {v9, v10, v11}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;J)J

    .line 1074
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->predictSerchAction()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)V

    .line 1078
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mCurrentLocationWireless:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->access$902(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I

    goto/16 :goto_0

    .line 1076
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updateStatisticalsData()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_2

    .line 1081
    :pswitch_d
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " current Service state ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mLastServiceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastServiceState:I
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLastServiceState:I
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)I

    move-result v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eq v9, v10, :cond_0

    .line 1085
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/server/power/PowerManagerService;->mLastServiceState:I
    invoke-static {v9, v10}, Lcom/android/server/power/PowerManagerService;->access$3102(Lcom/android/server/power/PowerManagerService;I)I

    .line 1086
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1087
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    #setter for: Lcom/android/server/power/PowerManagerService;->serachNetworkTime:J
    invoke-static {v9, v10, v11}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;J)J

    .line 1088
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->predictSerchAction()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 1089
    :cond_7
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    .line 1090
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->updateStatisticalsData()V
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)V

    goto/16 :goto_0

    .line 1094
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v3, 0x1

    .line 1096
    .local v3, isAirPlane:Z
    :goto_3
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " turn off/on phone,arg1= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " msg.arg2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAirPlane="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :try_start_2
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1100
    .local v8, wirelessphone:Lcom/android/internal/telephony/ITelephony;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_a

    .line 1101
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mSmartPowerControlFlag:I
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)I

    move-result v9

    if-eqz v9, :cond_8

    if-nez v3, :cond_8

    .line 1102
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1111
    .end local v8           #wirelessphone:Lcom/android/internal/telephony/ITelephony;
    :cond_8
    :goto_4
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 1112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mSmartPowerHandlder:Lcom/android/server/power/PowerManagerService$SmartPowerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$SmartPowerHandler;

    const/16 v9, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1113
    .local v6, sendmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    int-to-long v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1114
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$SmartPowerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    mul-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/server/power/PowerManagerService;->access$3414(Lcom/android/server/power/PowerManagerService;J)J

    goto/16 :goto_0

    .line 1094
    .end local v3           #isAirPlane:Z
    .end local v6           #sendmsg:Landroid/os/Message;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1105
    .restart local v3       #isAirPlane:Z
    .restart local v8       #wirelessphone:Lcom/android/internal/telephony/ITelephony;
    :cond_a
    const/4 v9, 0x1

    :try_start_3
    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1107
    .end local v8           #wirelessphone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v9

    goto :goto_4

    .line 870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1032
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

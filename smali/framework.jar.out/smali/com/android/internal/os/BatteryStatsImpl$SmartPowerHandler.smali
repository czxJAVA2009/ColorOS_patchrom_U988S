.class Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPowerHandler"
.end annotation


# static fields
.field static final MSG_CHECK_IO_DEVICE_POWER_STATE:I = 0x0

.field static final MSG_SET_FORGROUND_APP:I = 0x1

.field static final SET_LCD_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 685
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 686
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 689
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->checkIODevicePowerState()V
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 692
    invoke-virtual {p0, v8}, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 693
    .local v3, m:Landroid/os/Message;
    const-wide/32 v5, 0x2bf20

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 696
    .end local v3           #m:Landroid/os/Message;
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppUid:I
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v6

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mLastForeGroundAppUid:I
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$402(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 697
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUidParas:[I
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$600(Lcom/android/internal/os/BatteryStatsImpl;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mParaReadP:I
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v7

    aget v6, v6, v7

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppUid:I
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$502(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 698
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$900(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mLastForeGroundAppPKg:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$802(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPkgNameParas:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$1000(Lcom/android/internal/os/BatteryStatsImpl;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mParaReadP:I
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v7

    aget-object v6, v6, v7

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppPkg:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->access$902(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$708(Lcom/android/internal/os/BatteryStatsImpl;)I

    .line 701
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mParaReadP:I
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$700(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 702
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #setter for: Lcom/android/internal/os/BatteryStatsImpl;->mParaReadP:I
    invoke-static {v5, v8}, Lcom/android/internal/os/BatteryStatsImpl;->access$702(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 704
    :cond_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 705
    const-wide/16 v1, 0x0

    .line 706
    .local v1, endDataFlow:J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mDeviceUseBit:I
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$1100(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 707
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mUseDeviceStatus:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$1200(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppUid:I
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;

    .line 708
    .local v4, tmp:Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;
    if-eqz v4, :cond_1

    .line 709
    #calls: Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->getDeviceBit()I
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->access$100(Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;)I

    move-result v0

    .line 710
    .local v0, devBit:I
    if-eqz v0, :cond_1

    .line 711
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$1376(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 715
    .end local v0           #devBit:I
    .end local v4           #tmp:Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #calls: Lcom/android/internal/os/BatteryStatsImpl;->computeAppCPUDemand()V
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$1400(Lcom/android/internal/os/BatteryStatsImpl;)V

    goto/16 :goto_0

    .line 715
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 719
    .end local v1           #endDataFlow:J
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$SmartPowerHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPMS:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImpl;->access$1500(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/os/PowerManager;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->setLCDDim(II)V

    goto/16 :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/server/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SOFTAP_START_POWERMODE_ALARM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    const-string v3, "WifiService"

    const-string v4, "WifiStateMachine.ACTION_WIFI_AP_START_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v3, v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SOFTAP_STOP_POWERMODE_ALARM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    const-string v4, "WifiService"

    const-string v5, "WifiStateMachine.ACTION_WIFI_AP_STOP_SLEEP_POLICY_ALARM  received\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v4, v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SOFTAP_SLEEPPOLICY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 485
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    if-ne v4, v6, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mZTECustom:Landroid/net/wifi/ZTEWifiCustom;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/net/wifi/ZTEWifiCustom;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/ZTEWifiCustom;->shouldStartApSleepPolicyAlarm()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    .local v2, shouldStartAlarm:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setApSleepPolicyAlarm(Z)V
    invoke-static {v3, v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;Z)V

    .line 491
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldAlarm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #shouldStartAlarm:Z
    :cond_4
    move v2, v3

    .line 485
    goto :goto_1

    .line 493
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.server.WifiManager.action.WIFI_AP_SLEEP_POLICY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, isSTAConnected:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isSTAConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 499
    :goto_2
    if-eqz v0, :cond_6

    .line 500
    iget-object v3, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mZTECustom:Landroid/net/wifi/ZTEWifiCustom;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/net/wifi/ZTEWifiCustom;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/ZTEWifiCustom;->getWifiApSleepPolicyInterval()I

    move-result v4

    #setter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v3, v4}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 502
    :cond_6
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1110(Lcom/android/server/WifiService;)I

    .line 503
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mSleepPolicyTickCount:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)I

    move-result v4

    if-nez v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    if-eq v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 507
    :cond_7
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, mwifiSavedState:I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_saved_state"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 515
    :goto_3
    if-ne v1, v2, :cond_8

    .line 516
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 517
    const-string v4, "WifiService"

    const-string v5, " softap sleep, setwifienabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_saved_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    :cond_8
    const-string v4, "WifiService"

    const-string v5, " setHotSpotClosedNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v4, p0, Lcom/android/server/WifiService$1;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setHotSpotClosedNotification(ZI)V
    invoke-static {v4, v2, v3}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;ZI)V

    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v4

    goto :goto_3

    .line 497
    .end local v1           #mwifiSavedState:I
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

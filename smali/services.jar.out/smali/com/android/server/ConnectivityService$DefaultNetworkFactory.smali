.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;

.field private mTwSatetracker:Landroid/net/wifi/TwStateTracker;

.field private twService:Lcom/android/server/TwService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "trackerHandler"

    .prologue
    .line 622
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 624
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 625
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .locals 4
    .parameter "targetNetworkType"
    .parameter "config"

    .prologue
    .line 629
    iget v1, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v1, :pswitch_data_0

    .line 659
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTwSatetracker:Landroid/net/wifi/TwStateTracker;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Landroid/net/wifi/TwStateTracker;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/wifi/TwStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTwSatetracker:Landroid/net/wifi/TwStateTracker;

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->twService:Lcom/android/server/TwService;

    if-nez v1, :cond_1

    .line 637
    new-instance v1, Lcom/android/server/TwService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTwSatetracker:Landroid/net/wifi/TwStateTracker;

    invoke-direct {v1, v2, v3}, Lcom/android/server/TwService;-><init>(Landroid/content/Context;Landroid/net/wifi/TwStateTracker;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->twService:Lcom/android/server/TwService;

    .line 639
    :cond_1
    const-string v1, "tw_wifi"

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->twService:Lcom/android/server/TwService;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 642
    const-string v1, "tw_wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 643
    const-string v1, "ConnectivityService"

    const-string v2, "tw_wifi service can not be registered!\n"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    new-instance v0, Lcom/android/server/TwWifiPolicy;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/TwWifiPolicy;-><init>(Landroid/content/Context;)V

    .line 647
    .local v0, mTwWifiPolicy:Lcom/android/server/TwWifiPolicy;
    new-instance v1, Landroid/net/wifi/WifiStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    .line 657
    .end local v0           #mTwWifiPolicy:Lcom/android/server/TwWifiPolicy;
    :goto_0
    return-object v1

    .line 649
    :pswitch_2
    new-instance v1, Landroid/net/MobileDataStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 651
    :pswitch_3
    new-instance v1, Landroid/net/DummyDataStateTracker;

    iget-object v2, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 653
    :pswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v1

    goto :goto_0

    .line 655
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    #calls: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$100(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v1

    goto :goto_0

    .line 657
    :pswitch_6
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v1

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

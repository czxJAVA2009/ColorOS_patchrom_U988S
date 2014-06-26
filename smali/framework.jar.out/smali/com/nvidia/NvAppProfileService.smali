.class public Lcom/nvidia/NvAppProfileService;
.super Ljava/lang/Object;
.source "NvAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvAppProfileService$App;
    }
.end annotation


# static fields
.field private static final DEBUG_NV_APP_PROFILE:Z = false

.field private static final FEATURE_FAN_ON_DEVICE:Ljava/lang/String; = "nvidia.feature.fan_on_device"

.field private static final FEATURE_POWER_BUDGET_CONTROL:Ljava/lang/String; = "nvidia.feature.power_budget_control"

.field private static final TAG:Ljava/lang/String; = "NvAppProfileService"

.field private static final mAppList:[Lcom/nvidia/NvAppProfileService$App;


# instance fields
.field private enableAppProfiles:Z

.field private fanCapEnabled:Z

.field private initAppProfiles:Z

.field private mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPowerServiceClient:Lcom/nvidia/PowerServiceClient;

.field private pbcEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x18519600

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/nvidia/NvAppProfileService$App;

    new-instance v1, Lcom/nvidia/NvAppProfileService$App;

    const-string v2, "com.sina.mfweibo"

    invoke-direct {v1, v2, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/nvidia/NvAppProfileService$App;

    const-string v2, "com.sina.weibo"

    invoke-direct {v1, v2, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.vectorunit.bluesoco"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "zte.com.cn.camera"

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.zhadui.stream"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "org.zeroxlab.zeroxbenchmark"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "softweg.hw.performance"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.edburnette.fps2d"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "se.nena.nenamark2"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.qualcomm.qx.neocore"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark27"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "org.zeroxlab.benchmark"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.futuremark.dmandroid.application:workload"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.futuremark.dmandroid.application"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark20"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.rightware.uimarkes1"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.android.cts.stub"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.allego.windmill"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.rightware.tdmm2v10jnifree"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.threed.jpct.bench"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.antutu.ABenchMark"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.rightware.tdmm2v10jni"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.nvidia.linpack"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.rightware.basemarkgui"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.passmark.pt_mobile"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "cn.opda.android.activity"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "eu.chainfire.cfbench"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string/jumbo v3, "se.nena.nenamark1"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "gr.androiddev.BenchmarkPi"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.HOTICE.MobileTest"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.qihoo360.mobilesafe.opti"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.qihoo360.mobilesafe.bench"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.ludashi.benchmark"

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.baidu.BaiduMap "

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.autonavi.minimap"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.tigerknows"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.tencent.map"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.mapbar.android.mapbarmap"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.telenav.app.android.cmcc"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.codoon.gps"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.google.android.apps.maps"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "cld.navi.mainframe"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.autonavi.xmgd.navigator.toc"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/nvidia/NvAppProfileService$App;

    const-string v3, "com.uu.uunavi"

    invoke-direct {v2, v3, v6, v4, v4}, Lcom/nvidia/NvAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/nvidia/PowerServiceClient;

    invoke-direct {v0}, Lcom/nvidia/PowerServiceClient;-><init>()V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mPowerServiceClient:Lcom/nvidia/PowerServiceClient;

    .line 78
    new-instance v0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    invoke-direct {v0, p1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    .line 80
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/nvidia/NvAppProfileService;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    .line 83
    iput-boolean v2, p0, Lcom/nvidia/NvAppProfileService;->pbcEnabled:Z

    .line 84
    iput-boolean v2, p0, Lcom/nvidia/NvAppProfileService;->fanCapEnabled:Z

    .line 86
    iput-boolean v2, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/nvidia/NvAppProfileService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAppProfileCpuCoreBias(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v1, "core_bias"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAppProfileCpuMaxNormalFreq(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v1, "cpu_freq_bias"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAppProfileCpuScalingMinFreq(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string/jumbo v1, "scaling_min_freq"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppProfileEmcRate(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, rate:I
    if-nez p0, :cond_0

    move v2, v1

    .line 426
    .end local v1           #rate:I
    .local v2, rate:I
    :goto_0
    return v2

    .line 414
    .end local v2           #rate:I
    .restart local v1       #rate:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 415
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/nvidia/NvAppProfileService$App;->emcRate:I

    if-gtz v3, :cond_2

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/nvidia/NvAppProfileService$App;->emcRate:I

    move v2, v1

    .line 423
    .end local v1           #rate:I
    .restart local v2       #rate:I
    goto :goto_0

    .end local v2           #rate:I
    .restart local v1       #rate:I
    :cond_3
    move v2, v1

    .line 426
    .end local v1           #rate:I
    .restart local v2       #rate:I
    goto :goto_0
.end method

.method private getAppProfileFanCap(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/nvidia/NvAppProfileService;->fanCapEnabled:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, -0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v1, "fan_pwm_cap"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getAppProfileGpuCbusCapLevel(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v1, "gpu_core_cap"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAppProfileGpuScaling(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v1, "gpu_scaling"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAppProfilePbcPwr(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/nvidia/NvAppProfileService;->pbcEnabled:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, -0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string/jumbo v1, "pbc_pwr_limit"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getAppProfilePowerMode(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, value:I
    if-nez p0, :cond_0

    move v2, v1

    .line 514
    .end local v1           #value:I
    .local v2, value:I
    :goto_0
    return v2

    .line 502
    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 503
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/nvidia/NvAppProfileService$App;->powerMode:I

    if-gtz v3, :cond_2

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/nvidia/NvAppProfileService$App;->powerMode:I

    move v2, v1

    .line 511
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0

    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_3
    move v2, v1

    .line 514
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0
.end method

.method private getAppProfileSysedpCap(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string/jumbo v1, "sysedp_cap"

    invoke-virtual {v0, p1, v1}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppSpecificTskinValue(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, tskinValue:I
    if-nez p0, :cond_0

    move v2, v1

    .line 469
    .end local v1           #tskinValue:I
    .local v2, tskinValue:I
    :goto_0
    return v2

    .line 456
    .end local v2           #tskinValue:I
    .restart local v1       #tskinValue:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 457
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/nvidia/NvAppProfileService$App;->tskinValue:I

    if-gtz v3, :cond_2

    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_2
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    sget-object v3, Lcom/nvidia/NvAppProfileService;->mAppList:[Lcom/nvidia/NvAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/nvidia/NvAppProfileService$App;->tskinValue:I

    move v2, v1

    .line 466
    .end local v1           #tskinValue:I
    .restart local v2       #tskinValue:I
    goto :goto_0

    .end local v2           #tskinValue:I
    .restart local v1       #tskinValue:I
    :cond_3
    move v2, v1

    .line 469
    .end local v1           #tskinValue:I
    .restart local v2       #tskinValue:I
    goto :goto_0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appName"

    .prologue
    .line 312
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 313
    .local v0, index:I
    if-gez v0, :cond_0

    .line 314
    const-string v1, "NvAppProfileService"

    const-string v2, "appName does not contain \'/\'. the packageName cannot be extracted from appName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    .line 317
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setAppPowerSaveMode(I)V
    .locals 1
    .parameter "modeValue"

    .prologue
    .line 594
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-eq v0, p0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p0, :cond_0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_1

    .line 596
    :cond_0
    const-string/jumbo v0, "powerSave"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 598
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_2

    .line 600
    const-string/jumbo v0, "powerPerformance"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 602
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p0, :cond_3

    .line 604
    const-string/jumbo v0, "powerBalance"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 606
    :cond_3
    return-void
.end method

.method private setAppProfileEmcRate(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 431
    invoke-static {p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileEmcRate(Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, rate:I
    if-lez v0, :cond_0

    .line 438
    const-string v1, "/d/clock/emc/max"

    invoke-static {v1, v0}, Lcom/nvidia/NvAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    const-string v1, "/d/clock/emc/max"

    const v2, 0x2c588a00

    invoke-static {v1, v2}, Lcom/nvidia/NvAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setAppProfilePowerMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 519
    invoke-static {p1}, Lcom/nvidia/NvAppProfileService;->getAppProfilePowerMode(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, iMode:I
    if-lez v0, :cond_1

    .line 526
    const-string/jumbo v1, "powerPerformance"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x3

    if-eq v1, p2, :cond_2

    const/4 v1, 0x4

    if-eq v1, p2, :cond_2

    const/4 v1, 0x5

    if-ne v1, p2, :cond_3

    .line 536
    :cond_2
    const-string/jumbo v1, "powerSave"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 538
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 540
    const-string/jumbo v1, "powerBalance"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAppProfileTskinValue(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 474
    invoke-static {p1}, Lcom/nvidia/NvAppProfileService;->getAppSpecificTskinValue(Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, iTskinValue:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 481
    const-string v1, "/sys/class/thermal/thermal_zone5/trip_point_0_temp"

    const v2, 0x1d4c0

    invoke-static {v1, v2}, Lcom/nvidia/NvAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    .line 488
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v1, "/sys/class/thermal/thermal_zone5/trip_point_0_temp"

    const v2, 0xa410

    invoke-static {v1, v2}, Lcom/nvidia/NvAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static writeSysFile(Ljava/lang/String;I)V
    .locals 5
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 385
    const/4 v2, 0x0

    .line 386
    .local v2, outStream:Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 391
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .local v3, outStream:Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 400
    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/PrintWriter;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    goto :goto_0
.end method


# virtual methods
.method public canForceHwUi(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v2, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    invoke-static {p1}, Lcom/nvidia/NvAppProfileService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 329
    iget-object v3, p0, Lcom/nvidia/NvAppProfileService;->mAppProfile:Lcom/nvidia/NvCPLSvc/NvAppProfiles;

    const-string v4, "force_hw_ui"

    invoke-virtual {v3, v1, v4}, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, forceHwUi:I
    if-lez v0, :cond_0

    .line 334
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isLowPowerMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v2, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tskin_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 611
    .local v0, oldMode:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 612
    const/4 v1, 0x1

    .line 614
    :cond_0
    return v1
.end method

.method public setAppProfile(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 550
    const/4 v2, 0x0

    .line 552
    .local v2, retMode:I
    iget-boolean v3, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    if-nez v3, :cond_2

    .line 553
    iget-object v3, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 554
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "nvidia.feature.power_budget_control"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    iput-boolean v6, p0, Lcom/nvidia/NvAppProfileService;->pbcEnabled:Z

    .line 556
    :cond_0
    const-string/jumbo v3, "nvidia.feature.fan_on_device"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    iput-boolean v6, p0, Lcom/nvidia/NvAppProfileService;->fanCapEnabled:Z

    .line 558
    :cond_1
    const-string v3, "NvAppProfileService"

    const-string v4, "App Profiles: Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iput-boolean v6, p0, Lcom/nvidia/NvAppProfileService;->initAppProfiles:Z

    .line 561
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const-string v3, "NvAppProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Profiles packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v3, 0x8

    new-array v0, v3, [I

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileCpuScalingMinFreq(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v7

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileCpuCoreBias(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v6

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileCpuMaxNormalFreq(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileGpuCbusCapLevel(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v8

    const/4 v3, 0x4

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileGpuScaling(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfilePbcPwr(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x6

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileFanCap(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x7

    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->getAppProfileSysedpCap(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    .line 574
    .local v0, appProfileData:[I
    iget-object v3, p0, Lcom/nvidia/NvAppProfileService;->mPowerServiceClient:Lcom/nvidia/PowerServiceClient;

    invoke-virtual {v3, v8, v0}, Lcom/nvidia/PowerServiceClient;->sendPowerHint(I[I)V

    .line 577
    invoke-direct {p0, p1}, Lcom/nvidia/NvAppProfileService;->setAppProfileEmcRate(Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tskin_enabled"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 581
    if-eq v6, v2, :cond_3

    .line 583
    invoke-direct {p0, p1, v2}, Lcom/nvidia/NvAppProfileService;->setAppProfilePowerMode(Ljava/lang/String;I)V

    .line 586
    :cond_3
    return-void
.end method

.method public updatePowerModeAutoSwitch(Z)V
    .locals 9
    .parameter "isBatteryLow"

    .prologue
    const/4 v8, 0x2

    .line 619
    iget-object v5, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tskin_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 620
    .local v4, oldMode:I
    const/4 v0, 0x0

    .line 621
    .local v0, PowerModeStateChange:Z
    const-string v5, "NvAppProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTSkinAutoSwitch-oldMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isBatteryLow ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-le v4, v8, :cond_2

    if-nez p1, :cond_2

    .line 623
    add-int/lit8 v2, v4, -0x3

    .line 625
    .local v2, newHighMode:I
    :try_start_0
    iget-object v5, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tskin_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    invoke-static {v2}, Lcom/nvidia/NvAppProfileService;->setAppPowerSaveMode(I)V

    .line 630
    const/4 v0, 0x1

    .line 641
    .end local v2           #newHighMode:I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 642
    iget-object v5, p0, Lcom/nvidia/NvAppProfileService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nvidia/NvAppProfileService$1;

    invoke-direct {v6, p0}, Lcom/nvidia/NvAppProfileService$1;-><init>(Lcom/nvidia/NvAppProfileService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 651
    :cond_1
    return-void

    .line 626
    .restart local v2       #newHighMode:I
    :catch_0
    move-exception v1

    .line 627
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "NvAppProfileService"

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 631
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #newHighMode:I
    :cond_2
    if-gt v4, v8, :cond_0

    if-eqz p1, :cond_0

    .line 632
    add-int/lit8 v3, v4, 0x3

    .line 634
    .local v3, newLowMode:I
    :try_start_1
    iget-object v5, p0, Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tskin_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :goto_2
    invoke-static {v3}, Lcom/nvidia/NvAppProfileService;->setAppPowerSaveMode(I)V

    .line 639
    const/4 v0, 0x1

    goto :goto_1

    .line 635
    :catch_1
    move-exception v1

    .line 636
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "NvAppProfileService"

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

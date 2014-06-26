.class public Lcom/nvidia/PowerServiceClient;
.super Ljava/lang/Object;
.source "PowerServiceClient.java"


# static fields
.field public static final CAMERA_HINT_COUNT:I = 0x6

.field public static final CAMERA_HINT_FPS:I = 0x4

.field public static final CAMERA_HINT_PERF:I = 0x3

.field public static final CAMERA_HINT_RESET:I = 0x5

.field public static final CAMERA_HINT_STILL_PREVIEW_POWER:I = 0x0

.field public static final CAMERA_HINT_VIDEO_PREVIEW_POWER:I = 0x1

.field public static final CAMERA_HINT_VIDEO_RECORD_POWER:I = 0x2

.field public static final POWER_HINT_APP_LAUNCH:I = 0x4

.field public static final POWER_HINT_APP_PROFILE:I = 0x3

.field public static final POWER_HINT_CAMERA:I = 0x8

.field public static final POWER_HINT_COUNT:I = 0x9

.field public static final POWER_HINT_HIGH_RES_VIDEO:I = 0x6

.field public static final POWER_HINT_INTERACTION:I = 0x2

.field public static final POWER_HINT_MIRACAST:I = 0x7

.field public static final POWER_HINT_SHIELD_STREAMING:I = 0x5

.field public static final POWER_HINT_VSYNC:I = 0x1


# instance fields
.field private mNativePowerServiceClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/nvidia/PowerServiceClient;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/PowerServiceClient;->mNativePowerServiceClient:I

    .line 47
    invoke-direct {p0}, Lcom/nvidia/PowerServiceClient;->init()V

    .line 48
    return-void
.end method

.method private native init()V
.end method

.method private static native nativeClassInit()V
.end method

.method private native release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget v0, p0, Lcom/nvidia/PowerServiceClient;->mNativePowerServiceClient:I

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/nvidia/PowerServiceClient;->release()V

    .line 59
    :cond_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/nvidia/PowerServiceClient;->mNativePowerServiceClient:I

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/nvidia/PowerServiceClient;->release()V

    :cond_1
    throw v0
.end method

.method public native sendPowerHint(I[I)V
.end method

.class Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBackLightTimeoutTask"
.end annotation


# static fields
.field private static final SET_READING_MODE_BIT:I = 0x2

.field private static final SET_TIMEOUT_BIT_BY_APP:I = 0x4

.field private static final SET_TIMEOUT_BIT_BY_SYSTEM:I = 0x8

.field private static final SET_WAITING_MODE_BIT:I = 0x1


# instance fields
.field private AnimationTime:I

.field private BackLightRecoverMode:I

.field private FrameCounters:I

.field private mAnimationValue_Millionth:I

.field private mEndCounters:I

.field private mLCDOffTimeout:I

.field private mReceiveBrightCommand:I

.field private mReceiveTimeoutCommand:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1517
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    iput v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I

    .line 1522
    iput v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I

    .line 1523
    iput v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I

    .line 1524
    iput v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I

    return p1
.end method

.method static synthetic access$3708(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->FrameCounters:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I

    return p1
.end method

.method static synthetic access$3872(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->BackLightRecoverMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mLCDOffTimeout:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mEndCounters:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->AnimationTime:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mAnimationValue_Millionth:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveTimeoutCommand:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/server/power/PowerManagerService$AutoBackLightTimeoutTask;->mReceiveBrightCommand:I

    return p1
.end method

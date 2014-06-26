.class Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerachNetwokStatisticals"
.end annotation


# instance fields
.field private SearchCountRorTooLongTime:I

.field private SerachTime:I

.field private TotalSearchCount:I

.field private mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1174
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I

    .line 1176
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I

    .line 1177
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    .line 1179
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I

    return p1
.end method

.method static synthetic access$412(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SerachTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->TotalSearchCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iput p1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->SearchCountRorTooLongTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SerachNetwokStatisticals;->mainBaseStation:Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;

    return-object p1
.end method

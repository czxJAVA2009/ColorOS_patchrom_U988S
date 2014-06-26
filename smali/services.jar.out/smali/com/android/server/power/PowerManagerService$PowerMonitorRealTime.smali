.class Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerMonitorRealTime"
.end annotation


# instance fields
.field public pkgName:Ljava/lang/String;

.field sleepTime:J

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field public wakeupSourceId:I

.field wakeupTimeCurrent:J

.field wakeupTimePrev:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 2468
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->pkgName:Ljava/lang/String;

    .line 2470
    return-void
.end method


# virtual methods
.method getTwoWakeTimeAndSleepTime()[J
    .locals 4

    .prologue
    .line 2481
    const/4 v1, 0x3

    new-array v0, v1, [J

    .line 2482
    .local v0, ret:[J
    monitor-enter p0

    .line 2483
    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimePrev:J

    aput-wide v2, v0, v1

    .line 2484
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimeCurrent:J

    aput-wide v2, v0, v1

    .line 2485
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->sleepTime:J

    aput-wide v2, v0, v1

    .line 2486
    monitor-exit p0

    .line 2487
    return-object v0

    .line 2486
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTwoWakeTimeAndSleepTime(JJJ)V
    .locals 1
    .parameter "prewaketime"
    .parameter "currentwaketime"
    .parameter "sleeptime"

    .prologue
    .line 2473
    monitor-enter p0

    .line 2474
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimePrev:J

    .line 2475
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->wakeupTimeCurrent:J

    .line 2476
    iput-wide p5, p0, Lcom/android/server/power/PowerManagerService$PowerMonitorRealTime;->sleepTime:J

    .line 2477
    monitor-exit p0

    .line 2478
    return-void

    .line 2477
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

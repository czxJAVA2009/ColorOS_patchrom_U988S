.class Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicaitonInfoStatis"
.end annotation


# instance fields
.field public LastCheckTime:J

.field public LastRequestGotoSleep:J

.field public active_time:J

.field public count:I

.field public inactive_time:J

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field public wakeupStartTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 2049
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->count:I

    .line 2051
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->inactive_time:J

    .line 2052
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->active_time:J

    .line 2053
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastRequestGotoSleep:J

    .line 2054
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService$ApplicaitonInfoStatis;->LastCheckTime:J

    .line 2056
    return-void
.end method

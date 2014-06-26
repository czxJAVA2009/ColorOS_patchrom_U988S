.class final Lcom/android/internal/app/HibernateThread$3;
.super Ljava/util/TimerTask;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/HibernateThread;->quickShutDown(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/internal/app/HibernateThread$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 502
    iget-object v6, p0, Lcom/android/internal/app/HibernateThread$3;->val$context:Landroid/content/Context;

    #calls: Lcom/android/internal/app/HibernateThread;->quickShutKill(Landroid/content/Context;)V
    invoke-static {v6}, Lcom/android/internal/app/HibernateThread;->access$000(Landroid/content/Context;)V

    .line 505
    iget-object v6, p0, Lcom/android/internal/app/HibernateThread$3;->val$context:Landroid/content/Context;

    const/16 v7, 0x2ee0

    #calls: Lcom/android/internal/app/HibernateThread;->shutdownRadios(Landroid/content/Context;I)V
    invoke-static {v6, v7}, Lcom/android/internal/app/HibernateThread;->access$100(Landroid/content/Context;I)V

    .line 507
    const-string/jumbo v6, "sys.isHaveRing"

    const-string v7, "close"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, sVibrater:Ljava/lang/String;
    const-string v6, "HibernateThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebooting, sVibrater: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v6, "close"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    new-instance v5, Landroid/os/SystemVibrator;

    invoke-direct {v5}, Landroid/os/SystemVibrator;-><init>()V

    .line 512
    .local v5, vibrator:Landroid/os/Vibrator;
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/os/SystemVibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v5           #vibrator:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$200()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 520
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 513
    .restart local v5       #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v2

    .line 514
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "HibernateThread"

    const-string v7, "Failed to vibrate during shutdown."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 524
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #vibrator:Landroid/os/Vibrator;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/HibernateThread$3;->val$context:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 525
    .local v3, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 527
    .local v0, baseTime:J
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$900()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/internal/app/HibernateThread$3$1;

    invoke-direct {v7, p0}, Lcom/android/internal/app/HibernateThread$3$1;-><init>(Lcom/android/internal/app/HibernateThread$3;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    :try_start_1
    const-string v6, "HibernateThread"

    const-string v7, "QuickBoot DOWN goToSleep"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$500()Lcom/android/internal/app/HibernateThread;

    move-result-object v6

    #getter for: Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/internal/app/HibernateThread;->access$1000(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 567
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$500()Lcom/android/internal/app/HibernateThread;

    move-result-object v6

    #getter for: Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/internal/app/HibernateThread;->access$1000(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 574
    :cond_2
    invoke-virtual {v3, v0, v1}, Landroid/os/PowerManager;->goToSleepByQuickboot(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :goto_1
    return-void

    .line 576
    :catch_1
    move-exception v6

    goto :goto_1
.end method

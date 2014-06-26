.class Lcom/android/internal/app/HibernateThread$3$1;
.super Ljava/lang/Object;
.source "HibernateThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/HibernateThread$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/HibernateThread$3;


# direct methods
.method constructor <init>(Lcom/android/internal/app/HibernateThread$3;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/app/HibernateThread$3$1;->this$0:Lcom/android/internal/app/HibernateThread$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 529
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$400()Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 531
    const-string v1, "HibernateThread"

    const-string v2, "bCustom+++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$500()Lcom/android/internal/app/HibernateThread;

    move-result-object v1

    #getter for: Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/internal/app/HibernateThread;->access$600(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setQuickBootMode(I)V

    .line 533
    const-string v1, "HibernateThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bCustom---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$500()Lcom/android/internal/app/HibernateThread;

    move-result-object v3

    #getter for: Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/internal/app/HibernateThread;->access$600(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->getQuickBootMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string/jumbo v1, "sys.usb.config"

    const-string v2, "error:not_set"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, sysusbconfigResult:Ljava/lang/String;
    const-string v1, "HibernateThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.usb.config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 543
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-string v1, "HibernateThread"

    const-string v2, "Shutting down isRotationChang true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Lcom/android/internal/app/HibernateThread$3$1;->this$0:Lcom/android/internal/app/HibernateThread$3;

    iget-object v1, v1, Lcom/android/internal/app/HibernateThread$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/app/HibernateThread;->access$702(Z)Z

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$400()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 549
    const-string v1, "HibernateThread"

    const-string v2, "bCustom---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v0           #sysusbconfigResult:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    const-string v1, "HibernateThread"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$800()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 554
    invoke-static {}, Lcom/android/internal/app/HibernateThread;->access$800()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

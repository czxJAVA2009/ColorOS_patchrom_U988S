.class public final Lcom/android/internal/app/HibernateThread;
.super Ljava/lang/Thread;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x1388

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final QUALCOMM_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String; = "/system/media/shutanimation.zip"

.field private static final TAG:Ljava/lang/String; = "HibernateThread"

.field private static animainEndTime:J

.field private static bCustom:Z

.field private static bFinish:Z

.field private static isRotationChang:Z

.field private static lockSound:I

.field private static mHandler:Landroid/os/Handler;

.field private static mProcess:Ljava/lang/Process;

.field private static pd:Landroid/app/ProgressDialog;

.field private static final sInstance:Lcom/android/internal/app/HibernateThread;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHibernateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/app/HibernateThread;

    invoke-direct {v0}, Lcom/android/internal/app/HibernateThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    .line 108
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/app/HibernateThread;->animainEndTime:J

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/HibernateThread;->isRotationChang:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/internal/app/HibernateThread;->quickShutKill(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/android/internal/app/HibernateThread;->shutdownRadios(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/internal/app/HibernateThread;->quickShutDown(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 85
    sget-wide v0, Lcom/android/internal/app/HibernateThread;->animainEndTime:J

    return-wide v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/internal/app/HibernateThread;->bCustom:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/app/HibernateThread;->mProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/internal/app/HibernateThread;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/HibernateThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/internal/app/HibernateThread;->isRotationChang:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/android/internal/app/HibernateThread;->isRotationChang:Z

    return p0
.end method

.method static synthetic access$800()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/app/HibernateThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static beLauncherApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 140
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 141
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v3, r:Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    const/4 v6, 0x1

    .line 148
    .end local v1           #j:I
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    .end local v5           #size:I
    :cond_0
    return v6

    .line 140
    .restart local v1       #j:I
    .restart local v3       #r:Landroid/content/pm/ResolveInfo;
    .restart local v5       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 121
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 122
    .local v3, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    const/4 v4, 0x1

    .line 127
    .end local v3           #rsi:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v4

    .line 120
    .restart local v3       #rsi:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v3           #rsi:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static quickShutDown(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 428
    const-string v8, "HibernateThread"

    const-string v9, "QuickBoot DOWN Start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    const-string/jumbo v8, "sys.binderdied"

    const-string/jumbo v9, "no"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 439
    .local v4, mWm:Landroid/view/IWindowManager;
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 440
    .local v7, wm:Landroid/view/WindowManager;
    const-string v8, "HibernateThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shutdown 11 getRotation() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v8}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 444
    const-string v8, "HibernateThread"

    const-string v9, "Shutdown freezeRotation "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 450
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "srs_mode"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    sput-boolean v12, Lcom/android/internal/app/HibernateThread;->isRotationChang:Z

    .line 462
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.android.deskclock.ALARM_SET_NEXT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, alarmintent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iput-object p0, v8, Lcom/android/internal/app/HibernateThread;->mContext:Landroid/content/Context;

    .line 471
    sget-object v9, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, v9, Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    .line 473
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iget-object v8, v8, Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8, v12}, Landroid/os/PowerManager;->setQuickBootMode(I)V

    .line 474
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iput-object v14, v8, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    :try_start_1
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    sget-object v9, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iget-object v9, v9, Lcom/android/internal/app/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v10, 0x1

    const-string v11, "HibernateThread-cpu"

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 478
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iget-object v8, v8, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 479
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iget-object v8, v8, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    :goto_2
    new-instance v8, Lcom/android/internal/app/HibernateThread$2;

    invoke-direct {v8}, Lcom/android/internal/app/HibernateThread$2;-><init>()V

    sput-object v8, Lcom/android/internal/app/HibernateThread;->mHandler:Landroid/os/Handler;

    .line 499
    new-instance v5, Lcom/android/internal/app/HibernateThread$3;

    invoke-direct {v5, p0}, Lcom/android/internal/app/HibernateThread$3;-><init>(Landroid/content/Context;)V

    .line 582
    .local v5, quickShutTask:Ljava/util/TimerTask;
    const/4 v2, 0x0

    .line 583
    .local v2, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    const-string v8, "/system/media/shutanimation.zip"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v2       #file:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 585
    sput-boolean v12, Lcom/android/internal/app/HibernateThread;->bCustom:Z

    .line 590
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    add-long/2addr v8, v10

    sput-wide v8, Lcom/android/internal/app/HibernateThread;->animainEndTime:J

    .line 591
    sget-boolean v8, Lcom/android/internal/app/HibernateThread;->bCustom:Z

    if-eqz v8, :cond_2

    .line 593
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "bootanimation"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-s"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    sput-object v8, Lcom/android/internal/app/HibernateThread;->mProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 609
    :goto_4
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 610
    .local v6, timer1:Ljava/util/Timer;
    const-wide/16 v8, 0x1

    invoke-virtual {v6, v5, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 611
    return-void

    .line 453
    .end local v0           #alarmintent:Landroid/content/Intent;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #quickShutTask:Ljava/util/TimerTask;
    .end local v6           #timer1:Ljava/util/Timer;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "srs_mode"

    invoke-static {v8, v9, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 480
    .restart local v0       #alarmintent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 481
    .local v1, e:Ljava/lang/SecurityException;
    const-string v8, "HibernateThread"

    const-string v9, "No permission to acquire wake lock"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    sget-object v8, Lcom/android/internal/app/HibernateThread;->sInstance:Lcom/android/internal/app/HibernateThread;

    iput-object v14, v8, Lcom/android/internal/app/HibernateThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 587
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #quickShutTask:Ljava/util/TimerTask;
    :cond_1
    sput-boolean v12, Lcom/android/internal/app/HibernateThread;->bCustom:Z

    goto :goto_3

    .line 600
    :cond_2
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-direct {v8, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    .line 601
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v9, 0x10400e9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v9, 0x10400ee

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 604
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v8, v13}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 605
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 606
    sget-object v8, Lcom/android/internal/app/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    goto :goto_4

    .line 596
    :catch_1
    move-exception v8

    goto :goto_4

    .line 446
    .end local v0           #alarmintent:Landroid/content/Intent;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #quickShutTask:Ljava/util/TimerTask;
    :catch_2
    move-exception v8

    goto/16 :goto_0
.end method

.method private static quickShutKill(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 152
    const-string v21, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 153
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 154
    .local v17, pm:Landroid/content/pm/PackageManager;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 157
    .local v15, listRun:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v12, intent:Landroid/content/Intent;
    const-string v21, "android.intent.category.HOME"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const/high16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 161
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 164
    .local v5, currentHomePackage:Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 165
    .local v20, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 166
    .local v19, size:I
    const/4 v8, 0x0

    .line 168
    .local v8, flag:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_1

    .line 169
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.mms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 170
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN do not kill persist process="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.launcher"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.systemui"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.google.process.gapps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.smspush"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.phone"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.google.android"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "android.process.media"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "zte.com.cn.alarmclock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.providers.calendar"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.deskclock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.qualcomm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.qualcomm.wiper"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.nfc3"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "system"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 196
    :cond_2
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN do not kill protect process="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 200
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/app/HibernateThread;->beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 201
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN do not kill wallpaper process="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "default_input_method"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, currentInputMethod:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 209
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN do not kill InputMethod process="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :cond_5
    new-instance v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v7, v0, v1, v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 214
    .local v7, dp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 215
    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 216
    const/4 v8, 0x1

    .line 221
    :cond_6
    if-nez v8, :cond_0

    .line 222
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 214
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 227
    .end local v6           #currentInputMethod:Ljava/lang/String;
    .end local v7           #dp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8           #flag:I
    .end local v9           #i:I
    .end local v19           #size:I
    .end local v20           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    .restart local v20       #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN quickShutKill Kill ti.processName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v13, :cond_9

    aget-object v16, v4, v11

    .line 230
    .local v16, pkg:Ljava/lang/String;
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN quickShutKill Kill PackageName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/HibernateThread;->beLauncherApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 233
    const-string v21, "HibernateThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "QuickBoot DOWN do not kill launcher PackageName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 237
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 240
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v16           #pkg:Ljava/lang/String;
    .end local v20           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_b
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    const v3, 0x10400f0

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 616
    .local v2, longPressBehavior:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 620
    .local v3, resourceId:I
    :cond_0
    const-string v4, "HibernateThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-eqz p1, :cond_1

    .line 623
    new-instance v0, Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, closer:Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10400e9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/internal/app/HibernateThread$4;

    invoke-direct {v6, p0}, Lcom/android/internal/app/HibernateThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 635
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 636
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 637
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 638
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 643
    .end local v0           #closer:Lcom/android/internal/app/HibernateThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-static {p0}, Lcom/android/internal/app/HibernateThread;->quickShutDown(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static shutdownRadios(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "timeout"

    .prologue
    const/4 v8, 0x1

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 244
    .local v1, endTime:J
    new-array v0, v8, [Z

    .line 246
    .local v0, done:[Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "persist_sys_qbmodereset"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    new-instance v3, Lcom/android/internal/app/HibernateThread$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/internal/app/HibernateThread$1;-><init>(Landroid/content/Context;J[Z)V

    .line 417
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 419
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 423
    const-string v4, "HibernateThread"

    const-string v5, "Timed out waiting for Wifi, NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    return-void

    .line 420
    :catch_0
    move-exception v4

    goto :goto_0
.end method

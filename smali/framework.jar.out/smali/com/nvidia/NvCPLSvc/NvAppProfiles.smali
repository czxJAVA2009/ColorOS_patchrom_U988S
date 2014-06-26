.class public Lcom/nvidia/NvCPLSvc/NvAppProfiles;
.super Ljava/lang/Object;
.source "NvAppProfiles.java"


# static fields
.field static final DEBUG:Z = false

.field static final NV_APP_PROFILES_NAME:Ljava/lang/String; = "Frameworks_NvAppProfiles"

.field static final SECOND_TO_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NvAppProfiles"

.field static mServiceNullCount:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field mLastBinding:J

.field mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mLastBinding:J

    .line 45
    iput-object p1, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public getApplicationProfile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "packageName"
    .parameter "tag"

    .prologue
    const/4 v11, 0x0

    const/4 v6, -0x1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 54
    .local v3, now:J
    iget-wide v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mLastBinding:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 55
    const-string/jumbo v7, "nvcpl"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 56
    .local v5, service:Landroid/os/IBinder;
    iput-wide v3, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mLastBinding:J

    .line 62
    if-eqz v5, :cond_2

    .line 66
    invoke-static {v5}, Lcom/nvidia/NvCPLSvc/INvCPLRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    move-result-object v7

    iput-object v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    .line 67
    sput v11, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    .line 81
    .end local v5           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    if-nez v7, :cond_3

    .line 84
    sget v7, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1

    .line 88
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.nvidia.NvCPLSvc"

    const-string v8, "com.nvidia.NvCPLSvc.NvCPLService"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 91
    sput v11, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    .line 111
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return v6

    .line 70
    .restart local v5       #service:Landroid/os/IBinder;
    :cond_2
    sget v7, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mServiceNullCount:I

    goto :goto_0

    .line 101
    .end local v5           #service:Landroid/os/IBinder;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    invoke-interface {v7, p1, p2}, Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;->getAppProfileSettingInt(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 106
    .local v0, doe:Landroid/os/DeadObjectException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mNvCPLSvc:Lcom/nvidia/NvCPLSvc/INvCPLRemoteService;

    .line 107
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/nvidia/NvCPLSvc/NvAppProfiles;->mLastBinding:J

    goto :goto_1

    .line 109
    .end local v0           #doe:Landroid/os/DeadObjectException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "NvAppProfiles"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Profile: Failed to retrieve profile. Error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

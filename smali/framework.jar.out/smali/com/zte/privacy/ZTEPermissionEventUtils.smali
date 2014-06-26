.class Lcom/zte/privacy/ZTEPermissionEventUtils;
.super Ljava/lang/Object;
.source "ZTEPermissionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;,
        Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
    }
.end annotation


# static fields
.field private static final ACTION_ANTI_PHONE_RECORDING_EVENT:Ljava/lang/String; = "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

.field private static final ACTION_PERMISSION_EVENT:Ljava/lang/String; = "permission.intent.action.PERMISSION_EVENT"

.field private static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "permission.intent.extra.eventType"

.field private static final EXTRA_NEED_NOTIFY:Ljava/lang/String; = "permission.intent.extra.needNotify"

.field private static final EXTRA_PACKAGE:Ljava/lang/String; = "permission.intent.extra.package"

.field private static final EXTRA_PERMISSION:Ljava/lang/String; = "permission.intent.extra.permission"

.field private static final TAG:Ljava/lang/String; = "ZTEPermissionEventUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field final mPermissionEventRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 1
    .parameter "mService"
    .parameter "context"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    .line 137
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    .line 138
    iput-object p2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method private clearAllAppPermissionEventRecords()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearAppPermissionEventRecords(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v2, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, pkg:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 67
    .local v1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    monitor-exit v3

    .line 72
    return-void

    .line 71
    .end local v1           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPermissionEventRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    .locals 5
    .parameter "pkg"
    .parameter "permission"

    .prologue
    .line 93
    iget-object v4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 94
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 96
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;

    .line 98
    .local v1, mRecord:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    if-eqz v1, :cond_0

    .line 99
    iget-object v4, v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    .end local v0           #j:I
    .end local v1           #mRecord:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    .end local v3           #size:I
    :goto_1
    return-object v1

    .line 96
    .restart local v0       #j:I
    .restart local v1       #mRecord:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0           #j:I
    .end local v1           #mRecord:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    .end local v3           #size:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updatePermissionEventRecords(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "pkg"
    .parameter "permission"
    .parameter "timestamp"

    .prologue
    .line 75
    iget-object v4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 76
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .restart local v2       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;>;"
    iget-object v4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mPermissionEventRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 82
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 83
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;

    .line 84
    .local v1, record:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    iget-object v4, v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->permission:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    iput-wide p3, v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->timeStamp:J

    .line 90
    .end local v1           #record:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    :goto_1
    return-void

    .line 82
    .restart local v1       #record:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v1           #record:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    :cond_2
    new-instance v4, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;-><init>(Lcom/zte/privacy/ZTEPermissionEventUtils;Ljava/lang/String;J)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public needSendBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "pkg"
    .parameter "permission"

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, now:J
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPermissionEventUtils;->getPermissionEventRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;

    move-result-object v2

    .line 127
    .local v2, record:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
    if-eqz v2, :cond_0

    .line 128
    iget-wide v3, v2, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->timeStamp:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 129
    const/4 v3, 0x0

    .line 133
    :goto_0
    return v3

    .line 132
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zte/privacy/ZTEPermissionEventUtils;->updatePermissionEventRecords(Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public sendAntiPhoneEventBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "permission.intent.extra.package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public sendPermissionEventBroadcast(Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "permission.intent.action.PERMISSION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "permission.intent.extra.package"

    iget-object v2, p1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "permission.intent.extra.permission"

    iget-object v2, p1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "permission.intent.extra.eventType"

    iget v2, p1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->eventType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "permission.intent.extra.needNotify"

    iget-boolean v2, p1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->needNotify:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

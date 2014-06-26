.class public Lcom/zte/privacy/ZTEPrivacyManagerService;
.super Lcom/zte/privacy/IZTEPrivacyManager$Stub;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;,
        Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;
    }
.end annotation


# static fields
.field private static final APP_PERMISSION_DENIED:I = 0x1

.field private static final APP_PERMISSION_GRANTED:I = 0x0

.field private static final DEBUG:Z = false

.field private static final KILL_APPLICATION_MSG:I = 0x3

.field private static final SEND_ANTI_PHONE_EVENT_MSG:I = 0x4

.field private static final SEND_APP_LOCK_MSG:I = 0x1

.field private static final SEND_PERMISSION_EVENT_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManagerService"


# instance fields
.field private mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

.field private mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

.field private mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

.field private mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

.field private mUninstallReceiver:Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

.field private final permissionCheckSync:Ljava/lang/Object;

.field private final securityExtentionVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    .line 33
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    .line 34
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    .line 35
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    .line 36
    iput-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->securityExtentionVersion:I

    .line 79
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;

    invoke-direct {v0, p0}, Lcom/zte/privacy/ZTEPrivacyManagerService$1;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    .line 374
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/zte/privacy/ZTEPrivacyManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearAllPackagePermissionSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAppLockStrategyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->doKillApplication(Ljava/lang/String;I)V

    return-void
.end method

.method private checkCallerIsValidate()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ZTE_HEARTYSERVICE_MANAGEMENT"

    const-string v2, "ZTEPrivacyManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private checkUserPolicyPermission(Ljava/lang/String;I)I
    .locals 6
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, mPkgname:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    invoke-virtual {v4, v0, p1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->permissionNeedControled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    :goto_0
    return v2

    .line 208
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, mPolicy:I
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v4

    .line 210
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 211
    if-nez v1, :cond_1

    .line 214
    monitor-exit v4

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 215
    :cond_1
    if-ne v5, v1, :cond_2

    .line 218
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1, v2, v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 219
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 221
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 222
    goto :goto_0
.end method

.method private clearAllPackagePermissionSettings()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->clearAllPackagePermissionSettings()V

    .line 145
    return-void
.end method

.method private doKillApplication(Ljava/lang/String;I)V
    .locals 3
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 280
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method private getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    .line 149
    .local v0, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    goto :goto_0

    .line 154
    :cond_2
    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    goto :goto_0

    .line 157
    :cond_4
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    goto :goto_0

    .line 159
    :cond_5
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    goto :goto_0

    .line 161
    :cond_6
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    goto :goto_0

    .line 163
    :cond_7
    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    goto :goto_0

    .line 165
    :cond_8
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 166
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    goto :goto_0

    .line 167
    :cond_9
    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 168
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    goto :goto_0

    .line 169
    :cond_a
    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    goto :goto_0

    .line 171
    :cond_b
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 172
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    goto :goto_0

    .line 173
    :cond_c
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 174
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    goto/16 :goto_0

    .line 175
    :cond_d
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 176
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    goto/16 :goto_0

    .line 177
    :cond_e
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 179
    :cond_f
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    goto/16 :goto_0

    .line 180
    :cond_10
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 181
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    goto/16 :goto_0

    .line 182
    :cond_11
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 183
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    goto/16 :goto_0

    .line 184
    :cond_12
    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 185
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    goto/16 :goto_0

    .line 186
    :cond_13
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 187
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    goto/16 :goto_0

    .line 188
    :cond_14
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 189
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    goto/16 :goto_0

    .line 190
    :cond_15
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 191
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    goto/16 :goto_0

    .line 192
    :cond_16
    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 193
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    goto/16 :goto_0

    .line 194
    :cond_17
    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 195
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    goto/16 :goto_0

    .line 196
    :cond_18
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    goto/16 :goto_0
.end method

.method private sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .parameter "pkg"
    .parameter "permission"
    .parameter "type"
    .parameter "needNotify"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    invoke-virtual {v1, p1, p2}, Lcom/zte/privacy/ZTEPermissionEventUtils;->needSendBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->savePackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    .line 141
    return-void
.end method


# virtual methods
.method public KillApplication(Ljava/lang/String;I)V
    .locals 3
    .parameter "pkg"
    .parameter "uid"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return-void
.end method

.method public addLockedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 350
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->addLockedPackage(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 1
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkUserPolicyPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkNetworkAccessPermission(Ljava/lang/String;I)V
    .locals 5
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-virtual {p0, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, mPkgname:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->permissionCheckSync:Ljava/lang/Object;

    monitor-enter v3

    .line 254
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPermissionPolicy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, mPolicy:I
    if-ne v2, v1, :cond_0

    .line 256
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, v2, v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendPermissionEventBroadcast(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 258
    :cond_0
    monitor-exit v3

    .line 259
    return-void

    .line 258
    .end local v1           #mPolicy:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public checkRecordingPermission(Ljava/lang/String;I)I
    .locals 1
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0, p2}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->needRefuseRecording(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 360
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->clearAllLockedPackages()V

    .line 361
    return-void
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->deletePackagePermissionSetting(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public enforceAppLocked(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 346
    return-void
.end method

.method public getAdapter()Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    return-object v0
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->getAllLockedPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAntiPhoneRecordingSetting()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->getAntiPRSetting()I

    move-result v0

    return v0
.end method

.method public getPackageNameByUid(I)Ljava/lang/String;
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, mPkgname:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 230
    aget-object v0, v1, v3

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackagePermissionSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x2

    return v0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public main()V
    .locals 2

    .prologue
    .line 382
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    .line 383
    new-instance v0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mStrategyUtils:Lcom/zte/privacy/ZTEPermissionStrategyUtils;

    .line 384
    new-instance v0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    .line 385
    new-instance v0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    .line 386
    new-instance v0, Lcom/zte/privacy/ZTEPermissionEventUtils;

    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/privacy/ZTEPermissionEventUtils;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;

    .line 387
    new-instance v0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

    invoke-direct {v0, p0}, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;-><init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mUninstallReceiver:Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;

    .line 388
    return-void
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 355
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAdapter:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->removeLockedPackage(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string v0, "ZTEPrivacyManagerService"

    const-string/jumbo v1, "savePackageSetting:: setting is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->setPackagePermissionSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    goto :goto_0
.end method

.method public sendAntiPhoneRecordingBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method public setAntiPhoneRecordingSetting(I)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->checkCallerIsValidate()V

    .line 314
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->setAntiPRSetting(I)V

    .line 315
    return-void
.end method

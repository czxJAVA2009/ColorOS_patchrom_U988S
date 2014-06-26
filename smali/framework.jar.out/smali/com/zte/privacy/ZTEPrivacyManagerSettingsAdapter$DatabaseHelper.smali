.class Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ZTEPrivacyManagerSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    .line 73
    const-string/jumbo v0, "privacy.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 79
    const-string v0, "CREATE TABLE permissionSetting ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, uid INTEGER, send_sms INTEGER, call_phone INTEGER, write_contacts INTEGER, read_contacts INTEGER, read_sms INTEGER, write_sms INTEGER, receive_sms INTEGER, receive_mms INTEGER, receive_wap_push INTEGER, read_phone_state INTEGER, access_fine_location INTEGER, access_coarse_location INTEGER, access_internet INTEGER, read_calendar INTEGER, write_calendar INTEGER, read_call_log INTEGER, write_call_log INTEGER, record_audio INTEGER, bluetooth INTEGER, change_net_state INTEGER, change_wifi_state INTEGER, camera INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE TABLE appLockSetting ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE INDEX permission_setting_name_index ON permissionSetting (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE INDEX app_lock_name_index ON appLockSetting (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE TABLE antiPhoneRecording ( _id INTEGER PRIMARY KEY AUTOINCREMENT, setting INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 126
    const-string v0, "PermissionSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "DROP TABLE IF EXISTS permissionSetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP TABLE IF EXISTS appLockSetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE IF EXISTS antiPhoneRecording"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 131
    return-void
.end method
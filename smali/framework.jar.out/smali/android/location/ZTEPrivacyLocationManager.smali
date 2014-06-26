.class public Landroid/location/ZTEPrivacyLocationManager;
.super Landroid/location/LocationManager;
.source "ZTEPrivacyLocationManager.java"


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyLocationManager"

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/location/ZTEPrivacyLocationManager;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/location/LocationManager;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 30
    iput-object p1, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private checkPermissionsSafe()Z
    .locals 4

    .prologue
    .line 34
    iget-object v2, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "privacy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/ZTEPrivacyManager;

    .line 35
    .local v0, sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 37
    .local v1, uid:I
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSecurityEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Landroid/location/ZTEPrivacyLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "security_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, enabled:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .parameter "provider"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 210
    :cond_0
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_1
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 1
    .parameter "name"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_1
    invoke-super {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 115
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 87
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-super/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-super/range {p0 .. p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "criteria"
    .parameter "intent"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "provider"
    .parameter "intent"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-super {p0, p1, p2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->isSecurityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-direct {p0}, Landroid/location/ZTEPrivacyLocationManager;->checkPermissionsSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

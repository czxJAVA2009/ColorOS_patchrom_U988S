.class final Lcom/android/internal/app/HibernateThread$1;
.super Ljava/lang/Thread;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/HibernateThread;->shutdownRadios(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/internal/app/HibernateThread$1;->val$endTime:J

    iput-object p4, p0, Lcom/android/internal/app/HibernateThread$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 252
    .local v10, res:Landroid/content/ContentResolver;
    const-string v13, "gps"

    invoke-static {v10, v13}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 254
    .local v4, gpsEnabled:Z
    if-eqz v4, :cond_0

    .line 255
    const-string v13, "gps"

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "persist_sys_qbGpsWasOn"

    if-eqz v4, :cond_10

    const/4 v13, 0x1

    :goto_0
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickBoot DOWN Start, gpsEnabled="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v13, "wifi"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v11

    .line 269
    .local v11, wifi:Landroid/net/wifi/IWifiManager;
    const-string/jumbo v13, "nfc"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 271
    .local v5, nfc:Landroid/nfc/INfcAdapter;
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 273
    .local v7, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v13, "bluetooth_manager"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 279
    .local v1, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-eqz v11, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    :cond_1
    const/4 v12, 0x1

    .line 281
    .local v12, wifiOff:Z
    :goto_1
    if-nez v12, :cond_2

    .line 282
    const-string v13, "HibernateThread"

    const-string v14, "Turning off wifi..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z

    .line 287
    :cond_2
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_3

    invoke-interface {v11}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v13

    const/16 v14, 0xc

    if-ne v13, v14, :cond_4

    .line 290
    :cond_3
    invoke-interface {v11}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "persist_sys_qbwifiWasOn"

    if-eqz v12, :cond_12

    const/4 v13, 0x0

    :goto_3
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickBoot DOWN Start, wifiOff="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-eqz v5, :cond_5

    :try_start_1
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    :cond_5
    const/4 v6, 0x1

    .line 304
    .local v6, nfcOff:Z
    :goto_4
    if-nez v6, :cond_6

    .line 305
    const-string v13, "HibernateThread"

    const-string v14, "Turning off NFC..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "persist_sys_qbnfcWasOn"

    if-eqz v6, :cond_14

    const/4 v13, 0x0

    :goto_6
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickBoot DOWN Start, nfcOff="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_15

    :cond_7
    const/4 v2, 0x1

    .line 320
    .local v2, bluetoothOff:Z
    :goto_7
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Disabling Bluetooth..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "bluetooth.isEnabled()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-nez v2, :cond_8

    .line 324
    const-string v13, "HibernateThread"

    const-string v14, "Disabling Bluetooth..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "persist_sys_qbbtWasOn"

    if-eqz v2, :cond_16

    const/4 v13, 0x0

    :goto_9
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickBoot DOWN Start, bluetoothOff="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v8, 0x0

    .line 338
    .local v8, radioChannel:I
    const/4 v9, 0x1

    .line 340
    .local v9, radioOff:Z
    if-eqz v7, :cond_9

    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v13

    if-nez v13, :cond_17

    :cond_9
    const/4 v9, 0x1

    .line 341
    :goto_a
    if-nez v9, :cond_a

    .line 342
    const-string v13, "HibernateThread"

    const-string v14, "Turning off radio..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 344
    const/4 v8, 0x1

    .line 351
    :cond_a
    :goto_b
    const-string/jumbo v13, "service.quickboot.radio"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v13, "HibernateThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickBoot DOWN Start, airplaneMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v13, "HibernateThread"

    const-string v14, "Waiting for WIFI, NFC, Bluetooth and Radio..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/app/HibernateThread$1;->val$endTime:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_f

    .line 357
    if-nez v12, :cond_b

    .line 359
    :try_start_4
    invoke-interface {v11}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    const/4 v12, 0x1

    .line 365
    :goto_d
    if-eqz v12, :cond_b

    .line 366
    const-string v13, "HibernateThread"

    const-string v14, "Wifi turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_b
    if-nez v2, :cond_c

    .line 372
    :try_start_5
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v13

    if-nez v13, :cond_19

    const/4 v2, 0x1

    .line 378
    :goto_e
    if-eqz v2, :cond_c

    .line 379
    const-string v13, "HibernateThread"

    const-string v14, "Bluetooth turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_c
    if-nez v9, :cond_d

    .line 385
    :try_start_6
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v13

    if-nez v13, :cond_1a

    const/4 v9, 0x1

    .line 391
    :goto_f
    if-eqz v9, :cond_d

    .line 392
    const-string v13, "HibernateThread"

    const-string v14, "Radio turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_d
    if-nez v6, :cond_e

    .line 397
    :try_start_7
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1b

    const/4 v6, 0x1

    .line 402
    :goto_10
    if-eqz v9, :cond_e

    .line 403
    const-string v13, "HibernateThread"

    const-string v14, "NFC turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_e
    if-eqz v12, :cond_1c

    if-eqz v9, :cond_1c

    if-eqz v2, :cond_1c

    if-eqz v6, :cond_1c

    .line 408
    const-string v13, "HibernateThread"

    const-string v14, "Wifi, NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/HibernateThread$1;->val$done:[Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 414
    :cond_f
    return-void

    .line 258
    .end local v1           #bluetooth:Landroid/bluetooth/IBluetoothManager;
    .end local v2           #bluetoothOff:Z
    .end local v5           #nfc:Landroid/nfc/INfcAdapter;
    .end local v6           #nfcOff:Z
    .end local v7           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v8           #radioChannel:I
    .end local v9           #radioOff:Z
    .end local v11           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v12           #wifiOff:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 279
    .restart local v1       #bluetooth:Landroid/bluetooth/IBluetoothManager;
    .restart local v5       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v7       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v11       #wifi:Landroid/net/wifi/IWifiManager;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 292
    :catch_0
    move-exception v3

    .line 293
    .local v3, ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during wifi shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    const/4 v12, 0x1

    .restart local v12       #wifiOff:Z
    goto/16 :goto_2

    .line 296
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 302
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 308
    :catch_1
    move-exception v3

    .line 309
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v6, 0x1

    .restart local v6       #nfcOff:Z
    goto/16 :goto_5

    .line 312
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_14
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 318
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 327
    :catch_2
    move-exception v3

    .line 328
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const/4 v2, 0x1

    .restart local v2       #bluetoothOff:Z
    goto/16 :goto_8

    .line 331
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_16
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 340
    .restart local v8       #radioChannel:I
    .restart local v9       #radioOff:Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 346
    :catch_3
    move-exception v3

    .line 347
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v8, 0x0

    .line 349
    const/4 v9, 0x1

    goto/16 :goto_b

    .line 359
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 361
    :catch_4
    move-exception v3

    .line 362
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during wifi shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v12, 0x1

    goto/16 :goto_d

    .line 372
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 374
    :catch_5
    move-exception v3

    .line 375
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 385
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 387
    :catch_6
    move-exception v3

    .line 388
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v9, 0x1

    goto/16 :goto_f

    .line 397
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 398
    :catch_7
    move-exception v3

    .line 399
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v13, "HibernateThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 412
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_1c
    const-wide/16 v13, 0x1f4

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_c
.end method

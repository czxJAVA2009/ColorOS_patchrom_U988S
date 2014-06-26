.class public abstract Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;
.super Landroid/os/Binder;
.source "INvWFDRemoteService.java"

# interfaces
.implements Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nvidia.NvWFDSvc.INvWFDRemoteService"

.field static final TRANSACTION_cancelConnect:I = 0xa

.field static final TRANSACTION_closeConnection:I = 0x8

.field static final TRANSACTION_configurePolicyManager:I = 0x13

.field static final TRANSACTION_connect:I = 0x9

.field static final TRANSACTION_createConnection:I = 0x7

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_discoverSinks:I = 0x2

.field static final TRANSACTION_forceResolution:I = 0x15

.field static final TRANSACTION_getActiveAudioFormat:I = 0x11

.field static final TRANSACTION_getActiveVideoFormat:I = 0x12

.field static final TRANSACTION_getConnectedSinkId:I = 0xe

.field static final TRANSACTION_getForceResolutionValue:I = 0x18

.field static final TRANSACTION_getPbcModeSupport:I = 0x5

.field static final TRANSACTION_getPinModeSupport:I = 0x6

.field static final TRANSACTION_getPolicySeekBarValue:I = 0x19

.field static final TRANSACTION_getRememberedSinkList:I = 0x4

.field static final TRANSACTION_getResolutionCheckId:I = 0x17

.field static final TRANSACTION_getSinkAvailabilityStatus:I = 0x1a

.field static final TRANSACTION_getSinkBusyStatus:I = 0x1b

.field static final TRANSACTION_getSinkFrequency:I = 0x1e

.field static final TRANSACTION_getSinkGroupNetwork:I = 0x20

.field static final TRANSACTION_getSinkList:I = 0x3

.field static final TRANSACTION_getSinkNetworkGroupList:I = 0x21

.field static final TRANSACTION_getSinkNickname:I = 0x1d

.field static final TRANSACTION_getSinkSSID:I = 0x1f

.field static final TRANSACTION_getSupportedAudioFormats:I = 0xf

.field static final TRANSACTION_getSupportedVideoFormats:I = 0x10

.field static final TRANSACTION_isConnected:I = 0xc

.field static final TRANSACTION_isConnectionOngoing:I = 0xd

.field static final TRANSACTION_isInitialized:I = 0x1

.field static final TRANSACTION_modifySink:I = 0x1c

.field static final TRANSACTION_removeNetworkGroupSink:I = 0x22

.field static final TRANSACTION_updateConnectionParameters:I = 0x14

.field static final TRANSACTION_updatePolicy:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->isInitialized()Z

    move-result v3

    .line 52
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->discoverSinks()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkList()Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 73
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getRememberedSinkList()Ljava/util/List;

    move-result-object v4

    .line 75
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 81
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getPbcModeSupport(Ljava/lang/String;)Z

    move-result v3

    .line 85
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_6
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getPinModeSupport(Ljava/lang/String;)Z

    move-result v3

    .line 95
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;

    move-result-object v0

    .line 104
    .local v0, _arg0:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->createConnection(Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;)I

    move-result v3

    .line 105
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v0           #_arg0:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;
    .end local v3           #_result:I
    :sswitch_8
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->closeConnection(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 126
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_a
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->cancelConnect()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    :sswitch_b
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->disconnect()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_c
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->isConnected()Z

    move-result v3

    .line 148
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v3           #_result:Z
    :sswitch_d
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->isConnectionOngoing()Z

    move-result v3

    .line 156
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v3           #_result:Z
    :sswitch_e
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getConnectedSinkId()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSupportedAudioFormats()Ljava/util/List;

    move-result-object v4

    .line 172
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 178
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSupportedVideoFormats()Ljava/util/List;

    move-result-object v4

    .line 180
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 186
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getActiveAudioFormat()Ljava/lang/String;

    move-result-object v3

    .line 188
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getActiveVideoFormat()Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->configurePolicyManager()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 209
    :sswitch_14
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->updateConnectionParameters(I)Z

    move-result v3

    .line 213
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_15
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v6

    .line 222
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->forceResolution(Z)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v5

    .line 221
    goto :goto_1

    .line 228
    :sswitch_16
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->updatePolicy(I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getResolutionCheckId()I

    move-result v3

    .line 239
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v3           #_result:I
    :sswitch_18
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getForceResolutionValue()Z

    move-result v3

    .line 247
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v3           #_result:Z
    :sswitch_19
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getPolicySeekBarValue()I

    move-result v3

    .line 255
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 261
    .end local v3           #_result:I
    :sswitch_1a
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkAvailabilityStatus(Ljava/lang/String;)Z

    move-result v3

    .line 265
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1b
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkBusyStatus(Ljava/lang/String;)Z

    move-result v3

    .line 275
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1c
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v1, v6

    .line 287
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->modifySink(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 289
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :cond_c
    move v1, v5

    .line 285
    goto :goto_2

    .line 295
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkFrequency(Ljava/lang/String;)I

    move-result v3

    .line 309
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1f
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkGroupNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v5, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->getSinkNetworkGroupList()Ljava/util/List;

    move-result-object v4

    .line 337
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 343
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_22
    const-string v7, "com.nvidia.NvWFDSvc.INvWFDRemoteService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->removeNetworkGroupSink(Ljava/lang/String;)Z

    move-result v3

    .line 347
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

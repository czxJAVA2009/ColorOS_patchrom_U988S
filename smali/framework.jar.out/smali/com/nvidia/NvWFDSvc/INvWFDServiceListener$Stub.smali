.class public abstract Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;
.super Landroid/os/Binder;
.source "INvWFDServiceListener.java"

# interfaces
.implements Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nvidia.NvWFDSvc.INvWFDServiceListener"

.field static final TRANSACTION_onCancelConnect:I = 0x6

.field static final TRANSACTION_onConnectDone:I = 0x2

.field static final TRANSACTION_onDisconnectDone:I = 0x4

.field static final TRANSACTION_onDiscovery:I = 0x3

.field static final TRANSACTION_onNotifyError:I = 0x5

.field static final TRANSACTION_onSinksFound:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;
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
    const-string v1, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 53
    .local v1, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/util/List;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onSinksFound(Ljava/util/List;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/util/List;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_2
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 63
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onConnectDone(Z)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Z
    :sswitch_3
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onDiscovery(I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 81
    .local v0, _arg0:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onDisconnectDone(Z)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Z
    :sswitch_5
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onNotifyError(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.nvidia.NvWFDSvc.INvWFDServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;->onCancelConnect(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

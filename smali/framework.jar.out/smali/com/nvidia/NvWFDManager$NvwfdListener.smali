.class public interface abstract Lcom/nvidia/NvWFDManager$NvwfdListener;
.super Ljava/lang/Object;
.source "NvWFDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvWFDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NvwfdListener"
.end annotation


# virtual methods
.method public abstract onCancelConnectionDone(I)V
.end method

.method public abstract onConnectionDisconnect()V
.end method

.method public abstract onConnectionDone(I)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSetupComplete(I)V
.end method

.method public abstract onSinkFound(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

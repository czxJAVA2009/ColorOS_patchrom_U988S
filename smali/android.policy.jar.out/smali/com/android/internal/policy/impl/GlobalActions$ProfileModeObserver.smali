.class Lcom/android/internal/policy/impl/GlobalActions$ProfileModeObserver;
.super Landroid/database/ContentObserver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileModeObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 1211
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1212
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileModeObserver;->mHandler:Landroid/os/Handler;

    .line 1213
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileModeObserver;->mMsg:I

    .line 1214
    return-void
.end method


# virtual methods
.method endObserve(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1224
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1225
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileModeObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileModeObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1230
    return-void
.end method

.method startObserve(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1218
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "current_profile"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1220
    return-void
.end method

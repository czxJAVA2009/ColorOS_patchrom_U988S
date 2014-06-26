.class Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;
.super Landroid/os/Handler;
.source "ZTEChangeableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->updateIconBitmapAndNumber()V

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->updateImgLock()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

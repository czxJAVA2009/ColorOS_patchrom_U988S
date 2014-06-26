.class Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;
.super Landroid/os/Handler;
.source "UnlockViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 211
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->vibrator()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$002(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startParticleAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

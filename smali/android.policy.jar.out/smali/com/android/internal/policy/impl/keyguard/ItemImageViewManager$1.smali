.class Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->createPinchOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->showImgeViewClingString()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->startTimer()V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$202(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;Z)Z

    .line 233
    return-void
.end method

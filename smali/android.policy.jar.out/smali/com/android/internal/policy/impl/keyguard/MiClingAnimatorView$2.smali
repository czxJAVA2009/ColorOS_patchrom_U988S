.class Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiClingAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->createAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->access$100(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    return-void
.end method

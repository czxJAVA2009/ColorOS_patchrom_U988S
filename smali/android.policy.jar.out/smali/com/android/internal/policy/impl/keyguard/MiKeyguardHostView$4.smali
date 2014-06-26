.class Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "MiKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

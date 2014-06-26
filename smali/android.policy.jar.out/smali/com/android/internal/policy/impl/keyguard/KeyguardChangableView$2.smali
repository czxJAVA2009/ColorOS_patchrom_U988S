.class Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "KeyguardChangableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

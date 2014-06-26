.class Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;
.super Ljava/lang/Object;
.source "MiKeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


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
    .line 398
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->showNextSecurityScreenOrFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;Z)V

    .line 408
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Z

    move-result v0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$500(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$600(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->reportFailedUnlockAttempt()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)V

    goto :goto_0
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 417
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$OnDismissAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$OnDismissAction;)V

    .line 439
    return-void
.end method

.method public showBackupSecurity()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->showBackupSecurityScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)V

    .line 434
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 404
    :cond_0
    return-void
.end method

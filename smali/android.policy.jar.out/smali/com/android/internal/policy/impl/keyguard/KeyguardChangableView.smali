.class public Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;
.super Landroid/widget/LinearLayout;
.source "KeyguardChangableView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardChangableView"


# instance fields
.field private isUpdateIcon:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 72
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->updateTargets()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "KeyguardChangableView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->cleanUp()V

    .line 163
    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public gotoUnlock()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public hideBouncer(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mIsBouncing:Z

    .line 180
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 101
    const v0, 0x10202a9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->updateTargets()V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->cleanUp()V

    .line 149
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->isUpdateIcon:Z

    if-nez v0, :cond_0

    .line 155
    const-string v0, "KeyguardChangableView"

    const-string v1, "isUpdateIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->updateIconBitmapAndNumber()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->isUpdateIcon:Z

    .line 159
    :cond_0
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 187
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 138
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mFadeView:Landroid/view/View;

    .line 110
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 125
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    return-void
.end method

.method public setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V
    .locals 1
    .parameter "animatorView"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    .line 129
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->mIsBouncing:Z

    .line 174
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

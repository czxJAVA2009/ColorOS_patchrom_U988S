.class Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;
.super Landroid/widget/FrameLayout;
.source "MiClingAnimatorView.java"


# static fields
.field private static final ANIMATOR_DURATION_TIME:I = 0x190

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MiClingAnimatorView"


# instance fields
.field private mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

.field private mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mHideAllStatusAnimator:Landroid/animation/ObjectAnimator;

.field private mHideImageViewClingAnimator:Landroid/animation/ObjectAnimator;

.field private mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

.field private mImageViewClingPrompt:Landroid/widget/LinearLayout;

.field private mImageViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

.field private mSHowImageViewClingAnimator:Landroid/animation/ObjectAnimator;

.field private mSHowUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

.field private mShowAllStatusAnimator:Landroid/animation/ObjectAnimator;

.field private mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

.field private mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

.field private mUnlockViewToImageViewAnimatorset:Landroid/animation/AnimatorSet;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createAnimator()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x2

    .line 91
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

    .line 92
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToImageViewAnimatorset:Landroid/animation/AnimatorSet;

    .line 93
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    .line 94
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mShowAllStatusAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mShowAllStatusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideAllStatusAnimator:Landroid/animation/ObjectAnimator;

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideAllStatusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideAllStatusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

    const-string v1, "Alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideAllStatusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToImageViewAnimatorset:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mSHowImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideUnlockViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mShowAllStatusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mHideImageViewClingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mShowAllStatusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 134
    return-void

    .line 95
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 106
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 109
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 117
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 120
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private isTransportVisible()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideImageViewClingString()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->isTransportVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    :cond_1
    return-void
.end method

.method public hideUnlockViewClingString()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->isTransportVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 164
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 173
    const v0, 0x1020338

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;

    .line 174
    const v0, 0x1020339

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

    .line 175
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    .line 176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->createAnimator()V

    .line 178
    return-void
.end method

.method public showImgeViewClingString()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->isTransportVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mImageViewClingPrompt:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToImageViewAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 155
    :cond_1
    return-void
.end method

.method public showUnlockClingString()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mTransportControlView:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->isTransportVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewToAllStatusAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mUnlockViewClingPrompt:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->mAllStatusToUnlockViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    :cond_2
    return-void
.end method

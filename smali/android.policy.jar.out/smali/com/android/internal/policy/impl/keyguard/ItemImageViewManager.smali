.class public Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
.super Landroid/widget/FrameLayout;
.source "ItemImageViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;,
        Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION_TIME:I = 0x2bc

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ItemViewManager"


# instance fields
.field private circleR:F

.field private endCircleR:F

.field private imageSourceHight:I

.field private imageSourceWidth:I

.field private initDegree:F

.field private isStartPinchInAnimation:Z

.field private isStartPinchOutAnimation:Z

.field private mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

.field private mAppComponentName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mCenterX:F

.field private mCenterY:F

.field private mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mImageView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/ItemImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewBg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mItemView1:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mItemView2:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mItemView3:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mItemView4:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mItemView5:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mItemView6:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

.field private mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

.field private mTranslateInAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateOutAnimator:Landroid/animation/ValueAnimator;

.field private mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

.field private offsetDegree:F

.field private startCircleR:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 45
    const v0, 0x3f060a92

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initDegree:F

    .line 46
    const v0, 0x3f860a92

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->offsetDegree:F

    .line 47
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    .line 48
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startCircleR:F

    .line 49
    const/high16 v0, 0x430a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->endCircleR:F

    .line 50
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    .line 51
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0xf0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAppComponentName:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    .line 45
    const v1, 0x3f060a92

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initDegree:F

    .line 46
    const v1, 0x3f860a92

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->offsetDegree:F

    .line 47
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    .line 48
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startCircleR:F

    .line 49
    const/high16 v1, 0x430a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->endCircleR:F

    .line 50
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    .line 51
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    .line 56
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

    .line 57
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

    .line 58
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 59
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->endCircleR:F

    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->createPinchOutAnimation()V

    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->createPinchInAnimation()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->reLayout(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    return p1
.end method

.method private createPinchInAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x2bc

    const/4 v3, 0x2

    .line 296
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchInTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchInTypeEvaluator;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->endCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$7;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$8;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$9;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$10;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$11;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$12;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateInAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewShowAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 358
    return-void

    .line 318
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 339
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private createPinchOutAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x2bc

    const/4 v3, 0x2

    .line 223
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mPinchOutTypeEvaluator:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$PinchOutTypeEvaluator;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->endCircleR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$4;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$5;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$6;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mTranslateOutAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mAlphaUnlockViewHideAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 285
    return-void

    .line 245
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 265
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initImageView()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x10203d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView1:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const v0, 0x10203d2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView2:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const v0, 0x10203d4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView3:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const v0, 0x10203d6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView4:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const v0, 0x10203d8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView5:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const v0, 0x10203da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setItemId(I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->initRingMode()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mItemView6:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method private initImageViewBg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203cf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203d1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203d3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203d5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203d7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    const v0, 0x10203d9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    .line 125
    return-void
.end method

.method private reLayout(F)V
    .locals 9
    .parameter "r"

    .prologue
    .line 384
    const/4 v3, 0x0

    .line 385
    .local v3, itemLeft:I
    const/4 v5, 0x0

    .line 386
    .local v5, itemTop:I
    const/4 v4, 0x0

    .line 387
    .local v4, itemRight:I
    const/4 v2, 0x0

    .line 388
    .local v2, itemBottom:I
    const/4 v0, 0x0

    .line 389
    .local v0, Degree:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 390
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initDegree:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->offsetDegree:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 391
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterX:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 392
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    add-int v4, v3, v6

    .line 393
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterY:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, p1

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 394
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    add-int v2, v5, v6

    .line 395
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method private resetLayout()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    .line 401
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->reLayout(F)V

    .line 402
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->cleanUp()V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method public isStartPinchInAnimation()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    return v0
.end method

.method public isStartPinchOutAnimation()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initImageView()V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initImageViewBg()V

    .line 160
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 131
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 132
    sub-int v6, p4, p2

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterX:F

    .line 133
    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterY:F

    .line 134
    const-string v6, "ItemViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCenterX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCenterY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, itemLeft:I
    const/4 v5, 0x0

    .line 137
    .local v5, itemTop:I
    const/4 v4, 0x0

    .line 138
    .local v4, itemRight:I
    const/4 v2, 0x0

    .line 139
    .local v2, itemBottom:I
    const/4 v0, 0x0

    .line 140
    .local v0, Degree:F
    const-string v6, "ItemViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bottom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 142
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->initDegree:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->offsetDegree:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 143
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterX:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 144
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceWidth:I

    add-int v4, v3, v6

    .line 145
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCenterY:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 146
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->imageSourceHight:I

    add-int v2, v5, v6

    .line 147
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageViewBg:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 184
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 186
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->pokeWakelock()V

    .line 188
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->showUnlockView()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V
    .locals 3
    .parameter "animatorView"

    .prologue
    .line 409
    const-string v0, "ItemViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClingAnimatorView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    .line 411
    return-void
.end method

.method public setUnlockViewManager(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter "unlockviewmanager"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    .line 171
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V
    .locals 2
    .parameter "ztechangeableview"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public startPinchInAnimation()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->stopTimer()V

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation:Z

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 367
    return-void
.end method

.method public startPinchOutAnimation()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation:Z

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 291
    return-void
.end method

.method public updateIconBitmap()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateIconBitmap()V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public updateIconBitmapAndNumber()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->mImageView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateIconBitmapAndNumber()V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

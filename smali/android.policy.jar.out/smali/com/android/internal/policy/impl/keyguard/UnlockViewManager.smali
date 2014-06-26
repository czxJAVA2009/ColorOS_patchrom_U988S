.class public Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
.super Landroid/widget/FrameLayout;
.source "UnlockViewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MSG_ROTATE_ANIMATOR:I = 0x2

.field private static final MSG_UNLOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UnlockViewManager"

.field private static mImgParticles:[Landroid/graphics/Bitmap;


# instance fields
.field handler:Landroid/os/Handler;

.field private hasDoneActionDown:Z

.field private isStartLongClick:Z

.field private isStartParticleAnimation:Z

.field private mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

.field private mContext:Landroid/content/Context;

.field private mImglock:Landroid/widget/ImageView;

.field private mMoveCircleR:I

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

.field private particleIds:[I

.field startX:F

.field startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mMoveCircleR:I

    .line 42
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 60
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    .line 61
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    .line 195
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    .line 68
    return-void

    .line 42
    :array_0
    .array-data 0x4
        0xcct 0x0t 0x8t 0x1t
        0xcdt 0x0t 0x8t 0x1t
        0xcet 0x0t 0x8t 0x1t
        0xcft 0x0t 0x8t 0x1t
        0xd0t 0x0t 0x8t 0x1t
        0xd1t 0x0t 0x8t 0x1t
        0xd2t 0x0t 0x8t 0x1t
        0xd3t 0x0t 0x8t 0x1t
        0xd4t 0x0t 0x8t 0x1t
        0xd5t 0x0t 0x8t 0x1t
        0xd6t 0x0t 0x8t 0x1t
        0xd7t 0x0t 0x8t 0x1t
        0xd8t 0x0t 0x8t 0x1t
        0xcct 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mMoveCircleR:I

    .line 42
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    .line 58
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 60
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    .line 61
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    .line 195
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x1050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mMoveCircleR:I

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->loadBitmap()V

    .line 77
    return-void

    .line 42
    :array_0
    .array-data 0x4
        0xcct 0x0t 0x8t 0x1t
        0xcdt 0x0t 0x8t 0x1t
        0xcet 0x0t 0x8t 0x1t
        0xcft 0x0t 0x8t 0x1t
        0xd0t 0x0t 0x8t 0x1t
        0xd1t 0x0t 0x8t 0x1t
        0xd2t 0x0t 0x8t 0x1t
        0xd3t 0x0t 0x8t 0x1t
        0xd4t 0x0t 0x8t 0x1t
        0xd5t 0x0t 0x8t 0x1t
        0xd6t 0x0t 0x8t 0x1t
        0xd7t 0x0t 0x8t 0x1t
        0xd8t 0x0t 0x8t 0x1t
        0xcct 0x0t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->vibrator()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startParticleAnimation()V

    return-void
.end method

.method private coculateCircleR(FFFF)F
    .locals 3
    .parameter "endX"
    .parameter "endY"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 193
    sub-float v0, p1, p3

    sub-float v1, p1, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p4

    sub-float v2, p2, p4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private startParticleAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    const-string v1, "UnlockViewManager"

    const-string v2, "startParticleAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 233
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 234
    .local v0, message:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    return-void
.end method

.method private stopParticleAnimation()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "UnlockViewManager"

    const-string v1, "stopParticleAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method private vibrator()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 215
    .local v0, mVibrator:Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 218
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method

.method public getIsStartParticleAnimation()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    return v0
.end method

.method public isHasDoneActionDown()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    return v0
.end method

.method public loadBitmap()V
    .locals 4

    .prologue
    .line 255
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 259
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_1

    .line 264
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    .line 265
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->particleIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImgParticles:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 101
    const v0, 0x10203dc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const-string v0, "UnlockViewManager"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 90
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 141
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return v5

    .line 143
    :pswitch_0
    const-string v1, "UnlockViewManager"

    const-string v2, "action=ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isItemImageViewManagerVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startOnLongClick()V

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->showUnlockClingString()V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->pokeWakelock()V

    goto :goto_0

    .line 158
    :pswitch_1
    const-string v1, "UnlockViewManager"

    const-string v2, "action=ACTION_MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->coculateCircleR(FFFF)F

    move-result v1

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopOnLongClick()V

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isItemImageViewManagerVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startX:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->startY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->coculateCircleR(FFFF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mMoveCircleR:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->showItemImageView()V

    goto/16 :goto_0

    .line 171
    :pswitch_2
    const-string v1, "UnlockViewManager"

    const-string v2, "action=ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    if-eqz v1, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopOnLongClick()V

    .line 177
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isItemImageViewManagerVisible()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;->hideUnlockViewClingString()V

    .line 184
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->hasDoneActionDown:Z

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartParticleAnimation:Z

    if-eqz v1, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopParticleAnimation()V

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 125
    return-void
.end method

.method public setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V
    .locals 0
    .parameter "animatorView"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mClingAnimatorView:Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;

    .line 273
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V
    .locals 0
    .parameter "ztechangeableview"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    .line 128
    return-void
.end method

.method public startOnLongClick()V
    .locals 4

    .prologue
    .line 238
    const-string v1, "UnlockViewManager"

    const-string v2, "startOnLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    .line 240
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 241
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    return-void
.end method

.method public stopOnLongClick()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "UnlockViewManager"

    const-string v1, "stopOnLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isStartLongClick:Z

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    return-void
.end method

.method public updateImgLock()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "UnlockViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImgLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Utilities;->hasMissNum()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Utilities;->hasMissNum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    const v1, 0x10800d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->mImglock:Landroid/widget/ImageView;

    const v1, 0x10800da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

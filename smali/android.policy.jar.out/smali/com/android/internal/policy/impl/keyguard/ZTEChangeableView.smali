.class public Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;
.super Landroid/widget/FrameLayout;
.source "ZTEChangeableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SHOW_UNLOCK_VIEW:I = 0x1

.field private static final MSG_UPDATE_ICON:I = 0xc8

.field private static final SHOW_DURATION_TIME:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "ZTEChangeableView"


# instance fields
.field handler:Landroid/os/Handler;

.field private isStartTimer:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

.field private mScaleGesture:Landroid/view/ScaleGestureDetector;

.field private mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

.field private mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    .line 82
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->handler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    .line 82
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->handler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->makeItemView()V

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, mUpdateIconFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mScaleGesture:Landroid/view/ScaleGestureDetector;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 147
    return-void
.end method

.method private makeItemView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x1090019

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->updateIconBitmap()V

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->addView(Landroid/view/View;)V

    .line 76
    const v1, 0x1090018

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->setUnlockViewManager(Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;)V

    .line 80
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->cleanUp()V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method public isItemImageViewManagerVisible()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartTimer()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    return v0
.end method

.method public isUnlockViewManagerVisible()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 118
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->getIsStartParticleAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mScaleGesture:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 123
    return-void
.end method

.method public setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V
    .locals 1
    .parameter "animatorView"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setMiClingAnimatorView(Lcom/android/internal/policy/impl/keyguard/MiClingAnimatorView;)V

    .line 127
    return-void
.end method

.method public showItemImageView()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startPinchOutAnimation()V

    .line 170
    :cond_0
    return-void
.end method

.method public showUnlockView()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->startPinchInAnimation()V

    .line 161
    :cond_0
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->handler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, message:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isStartTimer:Z

    .line 185
    return-void
.end method

.method public updateIconBitmapAndNumber()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->updateIconBitmapAndNumber()V

    .line 105
    :cond_0
    return-void
.end method

.method public updateImgLock()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->updateImgLock()V

    .line 99
    :cond_0
    return-void
.end method

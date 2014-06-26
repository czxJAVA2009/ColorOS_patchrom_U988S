.class public Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;
.super Ljava/lang/Object;
.source "ZTEScrollerManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ZTEScrollerManager"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDateView:Landroid/widget/TextView;

.field private final mOnResumeSnapScreen:Ljava/lang/Runnable;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mWeather:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    .line 48
    const v1, 0x102031d

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setContainer(Landroid/view/View;)V

    .line 52
    const v1, 0x102031f

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mWeather:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_weather"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, isShowWeather:Ljava/lang/String;
    const-string v1, "ZTEScrollerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowWeather="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mWeather:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->removeView(Landroid/view/View;)V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 1
    .parameter "transportControlView"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->addView(Landroid/view/View;)V

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 66
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTransportControl(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->getChildCount()I

    move-result v0

    .line 72
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 77
    .end local v1           #i:I
    :goto_1
    return v1

    .line 72
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public removeTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 1
    .parameter "transportControlView"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->removeView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public startOnResumeSnapScreen()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

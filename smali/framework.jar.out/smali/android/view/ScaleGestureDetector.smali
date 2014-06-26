.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SpanData;,
        Landroid/view/ScaleGestureDetector$ScaleData;,
        Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private final MAX_EVENT_INTERVAL:J

.field private final TIME_STEP:J

.field private final mContext:Landroid/content/Context;

.field private mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

.field private mCurrTime:J

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHistoricalScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

.field private mHistoricalScaleDataTime:J

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKalmanFilter:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

.field private mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

.field private mPrevTime:J

.field private mSpanSlop:I

.field private mTouchMinMajor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    .line 386
    const-wide/16 v1, 0x8

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->TIME_STEP:J

    .line 387
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->MAX_EVENT_INTERVAL:J

    .line 392
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 397
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 398
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 399
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    .line 404
    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 407
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 409
    new-instance v1, Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$ScaleData;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    .line 410
    new-instance v1, Landroid/view/ScaleGestureDetector$SpanData;

    invoke-direct {v1}, Landroid/view/ScaleGestureDetector$SpanData;-><init>()V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    .line 411
    new-instance v1, Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$ScaleData;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    .line 412
    new-instance v1, Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$ScaleData;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    .line 413
    new-instance v1, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mKalmanFilter:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    .line 414
    return-void

    .line 392
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/ScaleGestureDetector;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/ScaleGestureDetector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    return v0
.end method

.method private processScaleData(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;
    .locals 10
    .parameter "measurement"
    .parameter "time"

    .prologue
    const-wide/16 v8, 0x8

    .line 426
    const/4 v0, 0x0

    .line 430
    .local v0, filtered:Landroid/view/ScaleGestureDetector$ScaleData;
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    sub-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 431
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScaleGestureDetector;->restartProcessingScaleDataFrom(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;

    move-result-object v4

    .line 441
    :goto_0
    return-object v4

    .line 434
    :cond_0
    :goto_1
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    add-long/2addr v4, v8

    cmp-long v4, v4, p2

    if-gtz v4, :cond_1

    .line 435
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    sub-long v2, p2, v4

    .line 436
    .local v2, timeDelta:J
    const/high16 v4, 0x4100

    long-to-float v5, v2

    div-float v1, v4, v5

    .line 437
    .local v1, measurementWeight:F
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v4, p1, v1}, Landroid/view/ScaleGestureDetector$ScaleData;->interpolateWith(Landroid/view/ScaleGestureDetector$ScaleData;F)V

    .line 438
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mKalmanFilter:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v4, v5}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->update(Landroid/view/ScaleGestureDetector$ScaleData;)Landroid/view/ScaleGestureDetector$ScaleData;

    move-result-object v0

    .line 439
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    goto :goto_1

    .end local v1           #measurementWeight:F
    .end local v2           #timeDelta:J
    :cond_1
    move-object v4, v0

    .line 441
    goto :goto_0
.end method

.method private restartProcessingScaleDataFrom(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;
    .locals 1
    .parameter "measurement"
    .parameter "time"

    .prologue
    .line 417
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector$ScaleData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 418
    iput-wide p2, p0, Landroid/view/ScaleGestureDetector;->mHistoricalScaleDataTime:J

    .line 419
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mKalmanFilter:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->startFiltering(Landroid/view/ScaleGestureDetector$ScaleData;)Landroid/view/ScaleGestureDetector$ScaleData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpan()F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanX()F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanY()F

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 680
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusX()F

    move-result v0

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusY()F

    move-result v0

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$SpanData;->getSpan()F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$SpanData;->getSpanX()F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$SpanData;->getSpanY()F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$SpanData;->getSpan()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpan()F

    move-result v0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector$SpanData;->getSpan()F

    move-result v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 671
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v10, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 461
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 465
    .local v1, action:I
    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    :cond_1
    const/4 v7, 0x1

    .line 467
    .local v7, streamComplete:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v7, :cond_5

    .line 471
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v10, :cond_3

    .line 472
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 473
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 474
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 477
    :cond_3
    if-eqz v7, :cond_5

    .line 478
    const/4 v10, 0x1

    .line 555
    :goto_1
    return v10

    .line 465
    .end local v7           #streamComplete:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 482
    .restart local v7       #streamComplete:Z
    :cond_5
    if-eqz v1, :cond_6

    const/4 v10, 0x6

    if-eq v1, v10, :cond_6

    const/4 v10, 0x5

    if-ne v1, v10, :cond_f

    :cond_6
    const/4 v2, 0x1

    .line 486
    .local v2, configChanged:Z
    :goto_2
    if-eqz v2, :cond_10

    .line 487
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/ScaleGestureDetector$ScaleData;->setFromEvent(Landroid/view/MotionEvent;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Landroid/view/ScaleGestureDetector;->restartProcessingScaleDataFrom(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;

    .line 517
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpan()F

    move-result v6

    .line 522
    .local v6, span:F
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 523
    .local v9, wasInProgress:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 524
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-ltz v10, :cond_8

    if-eqz v2, :cond_9

    .line 525
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 526
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 527
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 529
    :cond_9
    if-eqz v2, :cond_a

    .line 530
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$SpanData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 532
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 534
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_c

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    .line 536
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$SpanData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 542
    :cond_c
    const/4 v10, 0x2

    if-ne v1, v10, :cond_e

    .line 543
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mCurrScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 545
    const/4 v8, 0x1

    .line 546
    .local v8, updatePrev:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v10, :cond_d

    .line 547
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v0, p0

    invoke-interface {v10, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v8

    .line 550
    :cond_d
    if-eqz v8, :cond_e

    .line 551
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanData:Landroid/view/ScaleGestureDetector$SpanData;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v11}, Landroid/view/ScaleGestureDetector$SpanData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 555
    .end local v8           #updatePrev:Z
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 482
    .end local v2           #configChanged:Z
    .end local v6           #span:F
    .end local v9           #wasInProgress:Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 489
    .restart local v2       #configChanged:Z
    :cond_10
    const/4 v10, 0x2

    if-ne v1, v10, :cond_14

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, finalFilteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    if-ge v5, v10, :cond_12

    .line 495
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-wide/16 v14, 0x8

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_11

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-lez v10, :cond_11

    .line 497
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v5}, Landroid/view/ScaleGestureDetector$ScaleData;->setFromEventHistory(Landroid/view/MotionEvent;I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Landroid/view/ScaleGestureDetector;->processScaleData(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;

    move-result-object v3

    .line 500
    .local v3, filteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    if-eqz v3, :cond_11

    .line 501
    move-object v4, v3

    .line 491
    .end local v3           #filteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 505
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/ScaleGestureDetector$ScaleData;->setFromEvent(Landroid/view/MotionEvent;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Landroid/view/ScaleGestureDetector;->processScaleData(Landroid/view/ScaleGestureDetector$ScaleData;J)Landroid/view/ScaleGestureDetector$ScaleData;

    move-result-object v3

    .line 507
    .restart local v3       #filteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    if-eqz v3, :cond_13

    .line 508
    move-object v4, v3

    .line 510
    :cond_13
    if-eqz v4, :cond_7

    .line 511
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mOnTouchScaleData:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v10, v4}, Landroid/view/ScaleGestureDetector$ScaleData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    goto/16 :goto_3

    .line 514
    .end local v3           #filteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    .end local v4           #finalFilteredData:Landroid/view/ScaleGestureDetector$ScaleData;
    .end local v5           #i:I
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

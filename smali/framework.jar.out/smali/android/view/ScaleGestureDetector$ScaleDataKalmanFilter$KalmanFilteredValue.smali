.class Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KalmanFilteredValue"
.end annotation


# static fields
.field private static final DELTA_SMOOTHING_DIV:F = 0.16666667f

.field private static final DELTA_SMOOTHING_WEIGHT:F = 5.0f

.field private static final Q:F = 0.1f

.field private static final R:F = 5.0f

.field private static final SMALL_RELATIVE_ERROR_DISREGARD:F = 1920.0f


# instance fields
.field mDelta:F

.field mEstimate:F

.field mP:F

.field mPrevMeasurement:F

.field mResult:F

.field final synthetic this$1:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->this$1:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private measureUpdate(F)F
    .locals 7
    .parameter "measurement"

    .prologue
    const/high16 v6, 0x40a0

    const/high16 v5, 0x3f80

    .line 169
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mPrevMeasurement:F

    sub-float v2, p1, v2

    iget v3, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mDelta:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    const v3, 0x3e2aaaab

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mDelta:F

    .line 171
    iput p1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mPrevMeasurement:F

    .line 173
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->this$1:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;

    iget-object v3, v3, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->this$0:Landroid/view/ScaleGestureDetector;

    #getter for: Landroid/view/ScaleGestureDetector;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v3}, Landroid/view/ScaleGestureDetector;->access$000(Landroid/view/ScaleGestureDetector;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v0, v2, v3

    .line 177
    .local v0, inchDelta:F
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    iget v3, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    const/high16 v4, 0x44f0

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    div-float v4, v6, v4

    add-float/2addr v3, v4

    div-float v1, v2, v3

    .line 178
    .local v1, k:F
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mEstimate:F

    iget v3, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mEstimate:F

    sub-float v3, p1, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mResult:F

    .line 179
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    sub-float v3, v5, v1

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    .line 180
    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mResult:F

    return v2
.end method

.method private timeUpdate()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mResult:F

    iget v1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mDelta:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mEstimate:F

    .line 165
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    .line 166
    return-void
.end method


# virtual methods
.method public reset(F)V
    .locals 1
    .parameter "measurement"

    .prologue
    .line 156
    iput p1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mResult:F

    .line 157
    iput p1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mPrevMeasurement:F

    .line 158
    const v0, 0x3f333333

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mP:F

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->mDelta:F

    .line 160
    return-void
.end method

.method public update(F)F
    .locals 1
    .parameter "measurement"

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->timeUpdate()V

    .line 185
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->measureUpdate(F)F

    move-result v0

    return v0
.end method

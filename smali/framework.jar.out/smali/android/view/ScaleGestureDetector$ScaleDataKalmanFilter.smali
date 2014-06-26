.class Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDataKalmanFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;
    }
.end annotation


# instance fields
.field private mFocusX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

.field private mFocusY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

.field private mResult:Landroid/view/ScaleGestureDetector$ScaleData;

.field private mSpanX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

.field private mSpanY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-direct {v0, p1}, Landroid/view/ScaleGestureDetector$ScaleData;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    .line 197
    new-instance v0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;-><init>(Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    .line 198
    new-instance v0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;-><init>(Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    .line 199
    new-instance v0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;-><init>(Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    .line 200
    new-instance v0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;-><init>(Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    .line 201
    return-void
.end method


# virtual methods
.method public startFiltering(Landroid/view/ScaleGestureDetector$ScaleData;)Landroid/view/ScaleGestureDetector$ScaleData;
    .locals 2
    .parameter "measured"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector$ScaleData;->set(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 205
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->reset(F)V

    .line 206
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->reset(F)V

    .line 207
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->reset(F)V

    .line 208
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->reset(F)V

    .line 209
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    return-object v0
.end method

.method public update(Landroid/view/ScaleGestureDetector$ScaleData;)Landroid/view/ScaleGestureDetector$ScaleData;
    .locals 4
    .parameter "measured"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->update(F)F

    move-result v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mSpanY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->update(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(FF)V

    .line 216
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusX:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->update(F)F

    move-result v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mFocusY:Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter$KalmanFilteredValue;->update(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(FF)V

    .line 218
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$ScaleDataKalmanFilter;->mResult:Landroid/view/ScaleGestureDetector$ScaleData;

    return-object v0
.end method

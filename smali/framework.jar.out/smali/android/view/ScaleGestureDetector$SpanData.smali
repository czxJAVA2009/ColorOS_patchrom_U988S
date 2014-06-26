.class Landroid/view/ScaleGestureDetector$SpanData;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanData"
.end annotation


# instance fields
.field private mSpanX:F

.field private mSpanY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method


# virtual methods
.method public getSpan()F
    .locals 3

    .prologue
    .line 360
    iget v0, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanX:F

    iget v1, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanY:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getSpanX()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanX:F

    return v0
.end method

.method public getSpanY()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanY:F

    return v0
.end method

.method public set(Landroid/view/ScaleGestureDetector$ScaleData;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanX()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanX:F

    .line 348
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector$ScaleData;->getSpanY()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector$SpanData;->mSpanY:F

    .line 349
    return-void
.end method

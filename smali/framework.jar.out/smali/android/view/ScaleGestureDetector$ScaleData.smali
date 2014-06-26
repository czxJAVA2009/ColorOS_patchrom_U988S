.class Landroid/view/ScaleGestureDetector$ScaleData;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleData"
.end annotation


# instance fields
.field private mFocusX:F

.field private mFocusY:F

.field private mSpanX:F

.field private mSpanY:F

.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$ScaleData;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method


# virtual methods
.method public getFocusX()F
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    return v0
.end method

.method public getSpan()F
    .locals 3

    .prologue
    .line 335
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    iget v1, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getSpanX()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    return v0
.end method

.method public getSpanY()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    return v0
.end method

.method public interpolateWith(Landroid/view/ScaleGestureDetector$ScaleData;F)V
    .locals 3
    .parameter "other"
    .parameter "otherWeight"

    .prologue
    .line 238
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    .line 239
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    .line 240
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    .line 241
    iget v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    iget v2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    .line 242
    return-void
.end method

.method public set(Landroid/view/ScaleGestureDetector$ScaleData;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 234
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(Landroid/view/ScaleGestureDetector$ScaleData;)V

    .line 235
    return-void
.end method

.method public setFocus(FF)V
    .locals 0
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 258
    iput p1, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    .line 259
    iput p2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    .line 260
    return-void
.end method

.method public setFocus(Landroid/view/ScaleGestureDetector$ScaleData;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 254
    iget v0, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusX:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mFocusY:F

    invoke-virtual {p0, v0, v1}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(FF)V

    .line 255
    return-void
.end method

.method public setFromEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/high16 v13, 0x4000

    const v12, 0x3f333333

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 264
    .local v0, action:I
    const/4 v10, 0x6

    if-ne v0, v10, :cond_0

    const/4 v6, 0x1

    .line 265
    .local v6, pointerUp:Z
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 267
    .local v7, skipIndex:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 270
    .local v1, count:I
    const/4 v8, 0x0

    .local v8, sumX:F
    const/4 v9, 0x0

    .line 271
    .local v9, sumY:F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 272
    if-ne v7, v5, :cond_2

    .line 271
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 264
    .end local v1           #count:I
    .end local v5           #i:I
    .end local v6           #pointerUp:Z
    .end local v7           #skipIndex:I
    .end local v8           #sumX:F
    .end local v9           #sumY:F
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 265
    .restart local v6       #pointerUp:Z
    :cond_1
    const/4 v7, -0x1

    goto :goto_1

    .line 273
    .restart local v1       #count:I
    .restart local v5       #i:I
    .restart local v7       #skipIndex:I
    .restart local v8       #sumX:F
    .restart local v9       #sumY:F
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v8, v10

    .line 274
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_3

    .line 276
    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v4, v1, -0x1

    .line 277
    .local v4, div:I
    :goto_4
    int-to-float v10, v4

    div-float v10, v8, v10

    int-to-float v11, v4

    div-float v11, v9, v11

    invoke-virtual {p0, v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(FF)V

    .line 280
    const/4 v2, 0x0

    .local v2, devSumX:F
    const/4 v3, 0x0

    .line 281
    .local v3, devSumY:F
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_6

    .line 282
    if-ne v7, v5, :cond_5

    .line 281
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v2           #devSumX:F
    .end local v3           #devSumY:F
    .end local v4           #div:I
    :cond_4
    move v4, v1

    .line 276
    goto :goto_4

    .line 284
    .restart local v2       #devSumX:F
    .restart local v3       #devSumY:F
    .restart local v4       #div:I
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Landroid/view/ScaleGestureDetector$ScaleData;->this$0:Landroid/view/ScaleGestureDetector;

    #getter for: Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I
    invoke-static {v11}, Landroid/view/ScaleGestureDetector;->access$100(Landroid/view/ScaleGestureDetector;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    add-float/2addr v2, v10

    .line 285
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Landroid/view/ScaleGestureDetector$ScaleData;->this$0:Landroid/view/ScaleGestureDetector;

    #getter for: Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I
    invoke-static {v11}, Landroid/view/ScaleGestureDetector;->access$100(Landroid/view/ScaleGestureDetector;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    add-float/2addr v3, v10

    goto :goto_6

    .line 290
    :cond_6
    int-to-float v10, v4

    div-float v10, v2, v10

    mul-float/2addr v10, v13

    int-to-float v11, v4

    div-float v11, v3, v11

    mul-float/2addr v11, v13

    invoke-virtual {p0, v10, v11}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(FF)V

    .line 291
    return-void
.end method

.method public setFromEventHistory(Landroid/view/MotionEvent;I)V
    .locals 10
    .parameter "event"
    .parameter "pos"

    .prologue
    const/high16 v9, 0x4000

    const v8, 0x3f333333

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 297
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, sumX:F
    const/4 v5, 0x0

    .line 298
    .local v5, sumY:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 299
    invoke-virtual {p1, v3, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    add-float/2addr v4, v6

    .line 300
    invoke-virtual {p1, v3, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    add-float/2addr v5, v6

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_0
    int-to-float v6, v0

    div-float v6, v4, v6

    int-to-float v7, v0

    div-float v7, v5, v7

    invoke-virtual {p0, v6, v7}, Landroid/view/ScaleGestureDetector$ScaleData;->setFocus(FF)V

    .line 305
    const/4 v1, 0x0

    .local v1, devSumX:F
    const/4 v2, 0x0

    .line 306
    .local v2, devSumY:F
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 307
    invoke-virtual {p1, v3, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/view/ScaleGestureDetector$ScaleData;->this$0:Landroid/view/ScaleGestureDetector;

    #getter for: Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I
    invoke-static {v7}, Landroid/view/ScaleGestureDetector;->access$100(Landroid/view/ScaleGestureDetector;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 309
    invoke-virtual {p1, v3, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$ScaleData;->getFocusY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/view/ScaleGestureDetector$ScaleData;->this$0:Landroid/view/ScaleGestureDetector;

    #getter for: Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I
    invoke-static {v7}, Landroid/view/ScaleGestureDetector;->access$100(Landroid/view/ScaleGestureDetector;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v2, v6

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 315
    :cond_1
    int-to-float v6, v0

    div-float v6, v1, v6

    mul-float/2addr v6, v9

    int-to-float v7, v0

    div-float v7, v2, v7

    mul-float/2addr v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(FF)V

    .line 316
    return-void
.end method

.method public setSpan(FF)V
    .locals 0
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 249
    iput p1, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    .line 250
    iput p2, p0, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    .line 251
    return-void
.end method

.method public setSpan(Landroid/view/ScaleGestureDetector$ScaleData;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 245
    iget v0, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanX:F

    iget v1, p1, Landroid/view/ScaleGestureDetector$ScaleData;->mSpanY:F

    invoke-virtual {p0, v0, v1}, Landroid/view/ScaleGestureDetector$ScaleData;->setSpan(FF)V

    .line 246
    return-void
.end method

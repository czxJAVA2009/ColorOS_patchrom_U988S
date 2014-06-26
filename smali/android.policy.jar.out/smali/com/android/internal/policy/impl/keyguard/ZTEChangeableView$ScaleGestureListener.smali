.class public Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZTEChangeableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 212
    const-string v1, "ZTEChangeableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnMultiTouch ... detec span="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",current Span="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 218
    .local v0, isIn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$200(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->stopOnLongClick()V

    .line 219
    if-eqz v0, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isUnlockViewManagerVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$300(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$300(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$200(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->isHasDoneActionDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "ZTEChangeableView"

    const-string v2, "------------OPEN-------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->showItemImageView()V

    .line 238
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    return v1

    .line 217
    .end local v0           #isIn:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    .restart local v0       #isIn:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->isItemImageViewManagerVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$300(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchInAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->mItemImageViewManager:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->access$300(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->isStartPinchOutAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "ZTEChangeableView"

    const-string v2, "------------CLOSE------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView$ScaleGestureListener;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->showUnlockView()V

    goto :goto_1
.end method

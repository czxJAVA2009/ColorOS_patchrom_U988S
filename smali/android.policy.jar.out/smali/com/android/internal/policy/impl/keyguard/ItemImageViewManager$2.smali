.class Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;
.super Ljava/lang/Object;
.source "ItemImageViewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->createPinchOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 239
    .local v0, mMoveCircleR:Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$302(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;F)F

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->circleR:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;)F

    move-result v2

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->reLayout(F)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/ItemImageViewManager;F)V

    .line 241
    return-void
.end method

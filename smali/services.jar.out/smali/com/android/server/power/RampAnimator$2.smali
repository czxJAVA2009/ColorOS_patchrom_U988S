.class Lcom/android/server/power/RampAnimator$2;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    .local p0, this:Lcom/android/server/power/RampAnimator$2;,"Lcom/android/server/power/RampAnimator.2;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    .local p0, this:Lcom/android/server/power/RampAnimator$2;,"Lcom/android/server/power/RampAnimator.2;"
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GYP DEBUG:RampAnitor,mSmartPowerCallback Runnable,mLightValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mFirstTime:Z
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mFirstTime:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    #setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$502(Lcom/android/server/power/RampAnimator;I)I

    .line 155
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    #setter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$302(Lcom/android/server/power/RampAnimator;I)I

    .line 156
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    int-to-float v1, v1

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    .line 157
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 158
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$1002(Lcom/android/server/power/RampAnimator;I)I

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GYP DEBUG:RampAnitor,mSmartPowerCallback Runnable,conlict!mLightValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLightValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mFirstTime:Z
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

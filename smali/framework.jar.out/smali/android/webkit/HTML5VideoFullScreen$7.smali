.class Landroid/webkit/HTML5VideoFullScreen$7;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen;->setWaiting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;

.field final synthetic val$isWaiting:Z


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-boolean p2, p0, Landroid/webkit/HTML5VideoFullScreen$7;->val$isWaiting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen$7;->val$isWaiting:Z

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mIsWaiting:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1302(Landroid/webkit/HTML5VideoFullScreen;Z)Z

    .line 397
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$7;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->updateProgressViewVisibility()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$1200(Landroid/webkit/HTML5VideoFullScreen;)V

    goto :goto_0
.end method

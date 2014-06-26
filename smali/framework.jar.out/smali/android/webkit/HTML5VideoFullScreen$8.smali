.class Landroid/webkit/HTML5VideoFullScreen$8;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen;->setVideoSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;

.field final synthetic val$videoHeight:I

.field final synthetic val$videoWidth:I


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput p2, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoWidth:I

    iput p3, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoWidth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoHeight:I

    if-eq v0, v1, :cond_0

    .line 411
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoWidth:I

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$002(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 412
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->val$videoHeight:I

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$102(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 414
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$000(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$8;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$100(Landroid/webkit/HTML5VideoFullScreen;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

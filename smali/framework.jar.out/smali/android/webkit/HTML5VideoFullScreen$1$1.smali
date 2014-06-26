.class Landroid/webkit/HTML5VideoFullScreen$1$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen$1;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/HTML5VideoFullScreen$1;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen$1;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 108
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$1$1$1;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$1$1$1;-><init>(Landroid/webkit/HTML5VideoFullScreen$1$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 118
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestRender()V

    .line 120
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

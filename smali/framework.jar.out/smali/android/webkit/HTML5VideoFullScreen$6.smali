.class Landroid/webkit/HTML5VideoFullScreen$6;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;

.field final synthetic val$isPlaying:Z


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-boolean p2, p0, Landroid/webkit/HTML5VideoFullScreen$6;->val$isPlaying:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen$6;->val$isPlaying:Z

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1002(Landroid/webkit/HTML5VideoFullScreen;Z)Z

    .line 379
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1000(Landroid/webkit/HTML5VideoFullScreen;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 380
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 383
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 385
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$6;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->updateProgressViewVisibility()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$1200(Landroid/webkit/HTML5VideoFullScreen;)V

    goto :goto_0
.end method

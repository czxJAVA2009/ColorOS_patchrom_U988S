.class Landroid/webkit/HTML5VideoFullScreen$4;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen;->onPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 324
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v3, v3, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;Landroid/view/View;)V

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 333
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 334
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 335
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestRender()V

    .line 339
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1000(Landroid/webkit/HTML5VideoFullScreen;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 341
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mIsPrepared:Z
    invoke-static {v0, v5}, Landroid/webkit/HTML5VideoFullScreen;->access$1102(Landroid/webkit/HTML5VideoFullScreen;Z)Z

    .line 343
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->updateProgressViewVisibility()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$1200(Landroid/webkit/HTML5VideoFullScreen;)V

    goto :goto_0
.end method

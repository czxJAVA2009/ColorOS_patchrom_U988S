.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "video"

    .prologue
    .line 459
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    .line 460
    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 461
    iput-object p3, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 462
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 483
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 484
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 486
    .local v2, uniqueDown:Z
    :goto_0
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 487
    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v4, v4, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v4, :cond_2

    .line 488
    iget-object v4, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v4, v4, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 489
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 495
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    :goto_1
    return v3

    .line 484
    .end local v2           #uniqueDown:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 495
    .restart local v2       #uniqueDown:Z
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 478
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 479
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 466
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 467
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 470
    :cond_0
    return-void
.end method

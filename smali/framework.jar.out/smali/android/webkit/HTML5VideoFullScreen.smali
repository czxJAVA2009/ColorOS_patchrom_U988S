.class Landroid/webkit/HTML5VideoFullScreen;
.super Landroid/os/Handler;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullScreenMode:I

.field private mIsPlaying:Z

.field private mIsPrepared:Z

.field private mIsWaiting:Z

.field private mMediaController:Landroid/widget/MediaController;

.field mNativePointer:I

.field private mPercentLoaded:I

.field mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I

.field mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(ILandroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "nativePointer"
    .parameter "webViewClassic"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$1;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 206
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$3;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 156
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    .line 157
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    .line 158
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 159
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 160
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 162
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 163
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->nativeReleasePointer(I)V

    .line 164
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$2;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoFullScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/HTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$102(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoFullScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/webkit/HTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->updateProgressViewVisibility()V

    return-void
.end method

.method static synthetic access$1302(Landroid/webkit/HTML5VideoFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsWaiting:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mPercentLoaded:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object p1
.end method

.method static synthetic access$400(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/webkit/HTML5VideoFullScreen;->nativeInitGLContext(I)V

    return-void
.end method

.method static synthetic access$502(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/webkit/HTML5VideoFullScreen;->nativeRenderCurrentFrame(I)V

    return-void
.end method

.method static synthetic access$700()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/webkit/HTML5VideoFullScreen;->nativeReleasePointer(I)V

    return-void
.end method

.method private static native nativeGetCurrentTime(I)I
.end method

.method private static native nativeGetDuration(I)I
.end method

.method private static native nativeInitGLContext(I)V
.end method

.method private static native nativePause(I)V
.end method

.method private static native nativePlay(I)V
.end method

.method private static native nativeReleasePointer(I)V
.end method

.method private static native nativeRenderCurrentFrame(I)V
.end method

.method private static native nativeSeekTo(II)V
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private updateProgressViewVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPrepared:Z

    if-nez v0, :cond_1

    .line 198
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsWaiting:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 200
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public enterFullScreenVideoState()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 235
    iput v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 237
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    .line 238
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    .line 239
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    .line 243
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 244
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 249
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 252
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 253
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_2

    .line 254
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 257
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    .line 261
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 262
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :cond_1
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->updateProgressViewVisibility()V

    .line 267
    :cond_2
    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$10;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$10;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPercentLoaded:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->nativeGetCurrentTime(I)I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->nativeGetDuration(I)I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsPlaying:Z

    return v0
.end method

.method public onFrameAvailable()V
    .locals 1

    .prologue
    .line 445
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$11;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$11;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$4;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$5;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 146
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->nativePause(I)V

    .line 278
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 282
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0, p1}, Landroid/webkit/HTML5VideoFullScreen;->nativeSeekTo(II)V

    .line 283
    return-void
.end method

.method public setPercentLoaded(I)V
    .locals 1
    .parameter "percentLoaded"

    .prologue
    .line 420
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$9;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$9;-><init>(Landroid/webkit/HTML5VideoFullScreen;I)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1
    .parameter "isPlaying"

    .prologue
    .line 373
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$6;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$6;-><init>(Landroid/webkit/HTML5VideoFullScreen;Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .parameter "videoWidth"
    .parameter "videoHeight"

    .prologue
    .line 403
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$8;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/HTML5VideoFullScreen$8;-><init>(Landroid/webkit/HTML5VideoFullScreen;II)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public setWaiting(Z)V
    .locals 1
    .parameter "isWaiting"

    .prologue
    .line 391
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$7;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$7;-><init>(Landroid/webkit/HTML5VideoFullScreen;Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->nativePlay(I)V

    .line 273
    return-void
.end method

.class Landroid/webkit/HTML5VideoFullScreen$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
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
    .line 97
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 140
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoFullScreen;->nativeRenderCurrentFrame(I)V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$600(I)V

    .line 141
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 102
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$1$1;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$1$1;-><init>(Landroid/webkit/HTML5VideoFullScreen$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoFullScreen;->nativeInitGLContext(I)V
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$400(I)V

    .line 128
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$1$2;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$1$2;-><init>(Landroid/webkit/HTML5VideoFullScreen$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

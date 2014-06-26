.class Landroid/webkit/HTML5VideoFullScreen$1$2;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen$1;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
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
    .line 128
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1$2;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$2;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$2;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x2

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$502(Landroid/webkit/HTML5VideoFullScreen;I)I

    goto :goto_0
.end method

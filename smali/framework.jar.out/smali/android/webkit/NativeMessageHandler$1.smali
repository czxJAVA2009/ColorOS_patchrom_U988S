.class Landroid/webkit/NativeMessageHandler$1;
.super Landroid/os/Handler;
.source "NativeMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/NativeMessageHandler;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/NativeMessageHandler;


# direct methods
.method constructor <init>(Landroid/webkit/NativeMessageHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Landroid/webkit/NativeMessageHandler$1;->this$0:Landroid/webkit/NativeMessageHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/NativeMessageHandler$1;->this$0:Landroid/webkit/NativeMessageHandler;

    #getter for: Landroid/webkit/NativeMessageHandler;->mNativePointer:I
    invoke-static {v0}, Landroid/webkit/NativeMessageHandler;->access$000(Landroid/webkit/NativeMessageHandler;)I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Landroid/webkit/NativeMessageHandler$1;->this$0:Landroid/webkit/NativeMessageHandler;

    iget-object v1, p0, Landroid/webkit/NativeMessageHandler$1;->this$0:Landroid/webkit/NativeMessageHandler;

    #getter for: Landroid/webkit/NativeMessageHandler;->mNativePointer:I
    invoke-static {v1}, Landroid/webkit/NativeMessageHandler;->access$000(Landroid/webkit/NativeMessageHandler;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #calls: Landroid/webkit/NativeMessageHandler;->nativeHandleMessage(IIIII)V
    invoke-static/range {v0 .. v5}, Landroid/webkit/NativeMessageHandler;->access$100(Landroid/webkit/NativeMessageHandler;IIIII)V

    goto :goto_0
.end method

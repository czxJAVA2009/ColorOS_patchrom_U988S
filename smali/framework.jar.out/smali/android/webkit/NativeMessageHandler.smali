.class Landroid/webkit/NativeMessageHandler;
.super Ljava/lang/Object;
.source "NativeMessageHandler.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNativePointer:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "nativePointer"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/webkit/NativeMessageHandler;->mNativePointer:I

    .line 33
    new-instance v0, Landroid/webkit/NativeMessageHandler$1;

    invoke-direct {v0, p0}, Landroid/webkit/NativeMessageHandler$1;-><init>(Landroid/webkit/NativeMessageHandler;)V

    iput-object v0, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/NativeMessageHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Landroid/webkit/NativeMessageHandler;->mNativePointer:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/NativeMessageHandler;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Landroid/webkit/NativeMessageHandler;->nativeHandleMessage(IIIII)V

    return-void
.end method

.method private native nativeHandleMessage(IIIII)V
.end method


# virtual methods
.method public detachNativePointer()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/NativeMessageHandler;->mNativePointer:I

    .line 58
    return-void
.end method

.method public hasMessages(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public removeAllMessages()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    return-void
.end method

.method public sendMessage(IIII)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 61
    iget-object v1, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 63
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 64
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    return-void
.end method

.method public sendMessageDelayed(IJIII)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 69
    iget-object v1, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, message:Landroid/os/Message;
    iput p4, v0, Landroid/os/Message;->arg1:I

    .line 71
    iput p5, v0, Landroid/os/Message;->arg2:I

    .line 72
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Landroid/webkit/NativeMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    return-void
.end method

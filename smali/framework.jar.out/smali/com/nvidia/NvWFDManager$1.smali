.class Lcom/nvidia/NvWFDManager$1;
.super Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;
.source "NvWFDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvWFDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvWFDManager;


# direct methods
.method constructor <init>(Lcom/nvidia/NvWFDManager;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    invoke-direct {p0}, Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelConnect(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 360
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onConnectDone(Z)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, value:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 345
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v1, "NvWFDManager"

    const-string v2, "Connection failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDisconnectDone(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    return-void
.end method

.method public onDiscovery(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 357
    return-void
.end method

.method public onNotifyError(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 350
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 351
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method

.method public onSinksFound(Ljava/util/List;)V
    .locals 2
    .parameter "sinks"

    .prologue
    .line 329
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 330
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 331
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$1;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void
.end method

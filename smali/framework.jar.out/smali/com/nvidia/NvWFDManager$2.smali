.class Lcom/nvidia/NvWFDManager$2;
.super Landroid/os/Handler;
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
    .line 382
    iput-object p1, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 385
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onSetupComplete(I)V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 396
    .local v1, sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onSinkFound(Ljava/util/List;)V

    goto :goto_0

    .line 403
    .end local v1           #sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 404
    .local v2, status:I
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onConnectionDone(I)V

    goto :goto_0

    .line 411
    .end local v2           #status:I
    :pswitch_3
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onConnectionDisconnect()V

    goto :goto_0

    .line 418
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 419
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onCancelConnectionDone(I)V

    goto :goto_0

    .line 426
    .end local v2           #status:I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, error:Ljava/lang/String;
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/nvidia/NvWFDManager$2;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/nvidia/NvWFDManager$NvwfdListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

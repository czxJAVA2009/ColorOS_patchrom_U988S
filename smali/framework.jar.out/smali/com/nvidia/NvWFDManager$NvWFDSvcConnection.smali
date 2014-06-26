.class Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;
.super Ljava/lang/Object;
.source "NvWFDManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvWFDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NvWFDSvcConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvWFDManager;


# direct methods
.method constructor <init>(Lcom/nvidia/NvWFDManager;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 442
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 443
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 445
    if-nez p2, :cond_0

    .line 446
    const-string v2, "NvWFDManager"

    const-string v3, "NVWFDService: Invalid Binder given"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    invoke-static {p2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    move-result-object v3

    #setter for: Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    invoke-static {v2, v3}, Lcom/nvidia/NvWFDManager;->access$202(Lcom/nvidia/NvWFDManager;Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    .line 453
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    iget-object v3, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    invoke-static {v3}, Lcom/nvidia/NvWFDManager;->access$200(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    move-result-object v3

    iget-object v4, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mServiceListener:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;
    invoke-static {v4}, Lcom/nvidia/NvWFDManager;->access$400(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->createConnection(Lcom/nvidia/NvWFDSvc/INvWFDServiceListener;)I

    move-result v3

    #setter for: Lcom/nvidia/NvWFDManager;->mConnectionId:I
    invoke-static {v2, v3}, Lcom/nvidia/NvWFDManager;->access$302(Lcom/nvidia/NvWFDManager;I)I

    .line 454
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/nvidia/NvWFDManager;->access$500(Lcom/nvidia/NvWFDManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/nvidia/NvWFDManager;->access$500(Lcom/nvidia/NvWFDManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->mConnectionId:I
    invoke-static {v2}, Lcom/nvidia/NvWFDManager;->access$300(Lcom/nvidia/NvWFDManager;)I

    move-result v2

    if-gez v2, :cond_2

    .line 458
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "couldn\'t connect to service !!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 463
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    const/4 v2, 0x0

    #setter for: Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    invoke-static {v1, v2}, Lcom/nvidia/NvWFDManager;->access$202(Lcom/nvidia/NvWFDManager;Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    .line 470
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 471
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 472
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 473
    iget-object v1, p0, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;->this$0:Lcom/nvidia/NvWFDManager;

    #getter for: Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nvidia/NvWFDManager;->access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    const-string v1, "NvWFDManager"

    const-string v2, "Couldn\'t bind to service !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

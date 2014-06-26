.class Lcom/android/server/TwWifiPolicy$MyHanlder;
.super Landroid/os/Handler;
.source "TwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHanlder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TwWifiPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/TwWifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TwWifiPolicy;Lcom/android/server/TwWifiPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/android/server/TwWifiPolicy$MyHanlder;-><init>(Lcom/android/server/TwWifiPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 728
    :pswitch_0
    const-string v0, "TwWifiPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[waitThreadStart] msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNoDataMsgToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->mNoDataMsgToken:I
    invoke-static {v2}, Lcom/android/server/TwWifiPolicy;->access$500(Lcom/android/server/TwWifiPolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->mNoDataMsgToken:I
    invoke-static {v1}, Lcom/android/server/TwWifiPolicy;->access$500(Lcom/android/server/TwWifiPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #setter for: Lcom/android/server/TwWifiPolicy;->isDataDisConnecting:Z
    invoke-static {v0, v3}, Lcom/android/server/TwWifiPolicy;->access$602(Lcom/android/server/TwWifiPolicy;Z)Z

    .line 731
    const-string v0, "TwWifiPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[waitThreadStart] isDisConnectingHaveDate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z
    invoke-static {v2}, Lcom/android/server/TwWifiPolicy;->access$700(Lcom/android/server/TwWifiPolicy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z
    invoke-static {v0}, Lcom/android/server/TwWifiPolicy;->access$700(Lcom/android/server/TwWifiPolicy;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #setter for: Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z
    invoke-static {v0, v3}, Lcom/android/server/TwWifiPolicy;->access$802(Lcom/android/server/TwWifiPolicy;Z)Z

    .line 734
    const-string v0, "TwWifiPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[waitThreadStart] isWifiDataConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #getter for: Lcom/android/server/TwWifiPolicy;->isWifiDataConnect:Z
    invoke-static {v2}, Lcom/android/server/TwWifiPolicy;->access$800(Lcom/android/server/TwWifiPolicy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/android/server/TwWifiPolicy$MyHanlder;->this$0:Lcom/android/server/TwWifiPolicy;

    #setter for: Lcom/android/server/TwWifiPolicy;->isDisConnectingHaveDate:Z
    invoke-static {v0, v3}, Lcom/android/server/TwWifiPolicy;->access$702(Lcom/android/server/TwWifiPolicy;Z)Z

    goto/16 :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

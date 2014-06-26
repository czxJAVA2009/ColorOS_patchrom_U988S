.class Landroid/view/ViewRootImpl$SmartPowerHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPowerHandler"
.end annotation


# static fields
.field static final MSG_PROCESS_APPSWITCH:I = 0x3

.field static final MSG_SAVE_STATISTICS:I = 0x0

.field static final MSG_SEND_LCD_AJUST_COMMAND:I = 0x2

.field static final MSG_SEND_LCD_TIME_OUT:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 408
    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartPowerHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 409
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 410
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 413
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartPowerHandler;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->SaveProbabilityPrediciton()V
    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$000(Landroid/view/ViewRootImpl;)V

    .line 416
    invoke-static {}, Landroid/view/ViewRootImpl;->access$100()Landroid/view/ViewRootImpl$SmartPowerHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$SmartPowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, newMsg:Landroid/os/Message;
    invoke-static {}, Landroid/view/ViewRootImpl;->access$100()Landroid/view/ViewRootImpl$SmartPowerHandler;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl$SmartPowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 421
    .end local v0           #newMsg:Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->setLCDDim(II)V

    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartPowerHandler;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->anotherAppDisplayed()V
    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

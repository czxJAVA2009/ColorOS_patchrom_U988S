.class Lcom/nvidia/NvAppProfileService$1;
.super Ljava/lang/Object;
.source "NvAppProfileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/NvAppProfileService;->updatePowerModeAutoSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvAppProfileService;


# direct methods
.method constructor <init>(Lcom/nvidia/NvAppProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/nvidia/NvAppProfileService$1;->this$0:Lcom/nvidia/NvAppProfileService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TSKIN_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, statusIntent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 647
    iget-object v1, p0, Lcom/nvidia/NvAppProfileService$1;->this$0:Lcom/nvidia/NvAppProfileService;

    #getter for: Lcom/nvidia/NvAppProfileService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nvidia/NvAppProfileService;->access$000(Lcom/nvidia/NvAppProfileService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 648
    return-void
.end method

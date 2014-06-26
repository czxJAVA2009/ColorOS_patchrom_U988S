.class Lcom/zte/privacy/ZTEPrivacyManagerService$1;
.super Landroid/os/Handler;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 81
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;

    .line 84
    .local v1, event:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    #getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;
    invoke-static {v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zte/privacy/ZTEPermissionEventUtils;->sendPermissionEventBroadcast(Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;)V

    goto :goto_0

    .line 88
    .end local v1           #event:Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    #getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;
    invoke-static {v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$400(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->checkAppLockStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v2           #packageName:Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;

    .line 94
    .local v0, appInfo:Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v5, v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->uid:I

    #calls: Lcom/zte/privacy/ZTEPrivacyManagerService;->doKillApplication(Ljava/lang/String;I)V
    invoke-static {v4, v5, v6}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$500(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    goto :goto_0

    .line 98
    .end local v0           #appInfo:Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 99
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    #getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;
    invoke-static {v4}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/privacy/ZTEPermissionEventUtils;->sendAntiPhoneEventBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

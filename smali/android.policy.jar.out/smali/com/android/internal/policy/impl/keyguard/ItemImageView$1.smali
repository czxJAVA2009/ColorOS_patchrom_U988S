.class Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;
.super Landroid/os/Handler;
.source "ItemImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/ItemImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateRingModeSource()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$000(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$100(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$100(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryMMS()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$200(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryEmail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$300(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryCalls()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$400(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    goto :goto_0

    .line 117
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    #calls: Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryCalendar()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->access$500(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

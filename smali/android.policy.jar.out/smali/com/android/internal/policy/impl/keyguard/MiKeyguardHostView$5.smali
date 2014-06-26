.class Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;
.super Ljava/lang/Object;
.source "MiKeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->initializeTransportControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerAttached()V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1179
    return-void
.end method

.method public onListenerDetached()V
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->removeTransportFromWidgetPager()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1200(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1173
    :cond_0
    return-void
.end method

.method public onPlayStateChanged()V
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1184
    return-void
.end method

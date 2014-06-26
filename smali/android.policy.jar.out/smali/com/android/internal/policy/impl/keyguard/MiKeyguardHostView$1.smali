.class Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MiKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;
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
    .line 164
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$000(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->checkAppWidgetConsistency()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$002(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;Z)Z

    .line 172
    :cond_0
    return-void
.end method

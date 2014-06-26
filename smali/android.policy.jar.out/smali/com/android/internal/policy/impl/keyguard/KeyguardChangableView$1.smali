.class Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardChangableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V

    .line 64
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardChangableView;)V

    .line 69
    return-void
.end method

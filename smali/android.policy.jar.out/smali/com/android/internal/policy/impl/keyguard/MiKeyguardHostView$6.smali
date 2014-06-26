.class Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$6;
.super Ljava/lang/Object;
.source "MiKeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1322
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->showAppropriateWidgetPage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/MiKeyguardHostView;)V

    .line 1326
    return-void
.end method

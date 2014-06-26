.class Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$21;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;)V
    .locals 0
    .parameter

    .prologue
    .line 4591
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4594
    const-string v0, "WindowManager"

    const-string v1, "Lock screen displayed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->val$screenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 4596
    return-void
.end method

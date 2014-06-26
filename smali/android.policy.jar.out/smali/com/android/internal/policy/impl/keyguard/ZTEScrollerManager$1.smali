.class Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;
.super Ljava/lang/Object;
.source "ZTEScrollerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    const-string v0, "ZTEScrollerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllStatus.getChildCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(I)V

    .line 150
    :cond_0
    return-void
.end method

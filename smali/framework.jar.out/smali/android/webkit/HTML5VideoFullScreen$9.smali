.class Landroid/webkit/HTML5VideoFullScreen$9;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen;->setPercentLoaded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;

.field final synthetic val$percentLoaded:I


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$9;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput p2, p0, Landroid/webkit/HTML5VideoFullScreen$9;->val$percentLoaded:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$9;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mNativePointer:I

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$9;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget v1, p0, Landroid/webkit/HTML5VideoFullScreen$9;->val$percentLoaded:I

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mPercentLoaded:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$1402(Landroid/webkit/HTML5VideoFullScreen;I)I

    goto :goto_0
.end method

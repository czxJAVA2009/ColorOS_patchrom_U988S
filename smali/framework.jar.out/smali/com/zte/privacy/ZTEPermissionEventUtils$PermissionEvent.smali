.class public Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
.super Ljava/lang/Object;
.source "ZTEPermissionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPermissionEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionEvent"
.end annotation


# instance fields
.field public eventType:I

.field public needNotify:Z

.field public permission:Ljava/lang/String;

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "pkg"
    .parameter "permission"
    .parameter "eventType"
    .parameter "needNotify"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->pkg:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->permission:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->eventType:I

    .line 41
    iput-boolean p4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->needNotify:Z

    .line 42
    return-void
.end method

.class Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;
.super Ljava/lang/Object;
.source "ZTEPermissionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPermissionEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionEventRecord"
.end annotation


# instance fields
.field public permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/privacy/ZTEPermissionEventUtils;

.field public timeStamp:J


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPermissionEventUtils;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "permission"
    .parameter "timeStamp"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->this$0:Lcom/zte/privacy/ZTEPermissionEventUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->permission:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEventRecord;->timeStamp:J

    .line 52
    return-void
.end method

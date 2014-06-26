.class public Lcom/nvidia/NvWFDManager;
.super Ljava/lang/Object;
.source "NvWFDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;,
        Lcom/nvidia/NvWFDManager$NvwfdListener;
    }
.end annotation


# static fields
.field private static final CANCELCONNECTDONE:I = 0x6

.field private static final CONNECTDONE:I = 0x2

.field private static final DBG:Z = false

.field private static final DISCONNECT:I = 0x3

.field private static final HANDLEERROR:I = 0x4

.field private static final SETUPCOMPLETE:I = 0x5

.field private static final SINKFOUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NvWFDManager"


# instance fields
.field private connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

.field private mCondVar:Landroid/os/ConditionVariable;

.field private mConnectionId:I

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;

.field private mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

.field private mServiceListener:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;

.field private msgHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/nvidia/NvWFDManager;->mConnectionId:I

    .line 327
    new-instance v0, Lcom/nvidia/NvWFDManager$1;

    invoke-direct {v0, p0}, Lcom/nvidia/NvWFDManager$1;-><init>(Lcom/nvidia/NvWFDManager;)V

    iput-object v0, p0, Lcom/nvidia/NvWFDManager;->mServiceListener:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;

    .line 382
    new-instance v0, Lcom/nvidia/NvWFDManager$2;

    invoke-direct {v0, p0}, Lcom/nvidia/NvWFDManager$2;-><init>(Lcom/nvidia/NvWFDManager;)V

    iput-object v0, p0, Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/nvidia/NvWFDManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDManager$NvwfdListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nvidia/NvWFDManager;Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;)Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nvidia/NvWFDManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/nvidia/NvWFDManager;->mConnectionId:I

    return v0
.end method

.method static synthetic access$302(Lcom/nvidia/NvWFDManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/nvidia/NvWFDManager;->mConnectionId:I

    return p1
.end method

.method static synthetic access$400(Lcom/nvidia/NvWFDManager;)Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mServiceListener:Lcom/nvidia/NvWFDSvc/INvWFDServiceListener$Stub;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nvidia/NvWFDManager;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public cancelConnect()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->cancelConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in onService cancelConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;

    .line 93
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    iget v1, p0, Lcom/nvidia/NvWFDManager;->mConnectionId:I

    invoke-interface {v0, v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->closeConnection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 113
    iput-object v2, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    .line 115
    :cond_2
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "sinkSSID"
    .parameter "mAuthentication"

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2, p1, p2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->connect(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in onService Connected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in onService disConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public discoverSinks()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->discoverSinks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in discoverSinks"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedSinkId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getConnectedSinkId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :cond_0
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in getConnectedSinkId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRememberedSinkList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getRememberedSinkList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in getRememberedSinkList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSinkAvailabilityStatus(Ljava/lang/String;)Z
    .locals 4
    .parameter "sinkSSID"

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkAvailabilityStatus(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in getSinkAvailabilityStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSinkBusyStatus(Ljava/lang/String;)Z
    .locals 4
    .parameter "sinkSSID"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkBusyStatus(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSinkBusyStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkGroupNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sinkSSID"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkGroupNetwork(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in getSinkGroupNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkNetworkGroupList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkNetworkGroupList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in getSinkNetworkGroupList"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sinkSSID"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkNickname(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in getSinkNickname"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSinkSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sinkSSID"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v0, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getSinkSSID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isConnectionOngoing()Z
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->isConnectionOngoing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPbcModeSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "sinkSSID"

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getPbcModeSupport(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPbcModeSupport :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPinModeSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "sinkSSID"

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->getPinModeSupport(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPinModeSupport :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public modifySink(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .parameter "sinkSSID"
    .parameter "modify"
    .parameter "nickName"

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v2, :cond_0

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v2, p1, p2, p3}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->modifySink(Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const-string v2, "NvWFDManager"

    const-string v3, "Exception in modifySink"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeNetworkGroupSink(Ljava/lang/String;)Z
    .locals 3
    .parameter "networkGroupName"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvWFDManager;->mNvWFDSvc:Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;

    invoke-interface {v1, p1}, Lcom/nvidia/NvWFDSvc/INvWFDRemoteService;->removeNetworkGroupSink(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NvWFDManager"

    const-string v2, "Exception in removeNetworkGroupSink"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/nvidia/NvWFDManager$NvwfdListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/nvidia/NvWFDManager;->mListener:Lcom/nvidia/NvWFDManager$NvwfdListener;

    .line 380
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 64
    :try_start_0
    new-instance v2, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    invoke-direct {v2, p0}, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;-><init>(Lcom/nvidia/NvWFDManager;)V

    iput-object v2, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v1, intentWFDSvc:Landroid/content/Intent;
    const-string v2, "com.nvidia.NvWFDSvc"

    const-string v3, "com.nvidia.NvWFDSvc.NvwfdService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 69
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    .line 70
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mCondVar:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #intentWFDSvc:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NVWFDService: Failed to establish binding. Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAsync()V
    .locals 5

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    invoke-direct {v2, p0}, Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;-><init>(Lcom/nvidia/NvWFDManager;)V

    iput-object v2, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, intentWFDSvc:Landroid/content/Intent;
    const-string v2, "com.nvidia.NvWFDSvc"

    const-string v3, "com.nvidia.NvWFDSvc.NvwfdService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/nvidia/NvWFDManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nvidia/NvWFDManager;->connWFDSvc:Lcom/nvidia/NvWFDManager$NvWFDSvcConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #intentWFDSvc:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvWFDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NVWFDService: Failed to establish binding. Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

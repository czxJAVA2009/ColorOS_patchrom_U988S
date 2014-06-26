.class public Landroid/webkit/reflectadapter/ChameleonManagementProxy;
.super Ljava/lang/Object;
.source "ChameleonManagementProxy.java"


# static fields
.field private static mInstance:Landroid/webkit/reflectadapter/ChameleonManagementProxy;


# instance fields
.field private mReflectUtil:Landroid/webkit/utils/ReflectUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mInstance:Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    .line 12
    new-instance v0, Landroid/webkit/utils/ReflectUtil;

    const-string v1, "com.Chameleon.ChameleonManagement"

    invoke-static {}, Landroid/webkit/macro/ProjectMacro;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/webkit/utils/ReflectUtil;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    .line 14
    return-void
.end method

.method public static getChameleonData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "sb"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, result:I
    invoke-static {}, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->getInstance()Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    const-string v3, "getChameleonData"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/webkit/utils/ReflectUtil;->reflectInvokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    :cond_0
    return v1
.end method

.method public static getChameleonData(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "key"
    .parameter "sb"

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, result:I
    invoke-static {}, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->getInstance()Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    const-string v3, "getChameleonData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/webkit/utils/ReflectUtil;->reflectInvokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    :cond_0
    return v1
.end method

.method public static getChameleonDataFromXml(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "key"
    .parameter "sb"

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, result:I
    invoke-static {}, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->getInstance()Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    const-string v3, "getChameleonDataFromXml"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/webkit/utils/ReflectUtil;->reflectInvokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 52
    :cond_0
    return v1
.end method

.method private static getInstance()Landroid/webkit/reflectadapter/ChameleonManagementProxy;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mInstance:Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    invoke-direct {v0}, Landroid/webkit/reflectadapter/ChameleonManagementProxy;-><init>()V

    sput-object v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mInstance:Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    .line 24
    :cond_0
    sget-object v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mInstance:Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    return-object v0
.end method

.method public static setChameleonData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "nodeValue"

    .prologue
    .line 57
    invoke-static {}, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->getInstance()Landroid/webkit/reflectadapter/ChameleonManagementProxy;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/reflectadapter/ChameleonManagementProxy;->mReflectUtil:Landroid/webkit/utils/ReflectUtil;

    const-string/jumbo v1, "setChameleonData"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/utils/ReflectUtil;->reflectInvokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

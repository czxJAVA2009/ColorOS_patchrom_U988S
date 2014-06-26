.class public Landroid/webkit/macro/ProjectMacro;
.super Landroid/webkit/macro/ProjectMacroDefine;
.source "ProjectMacro.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Bookmarks"

.field public static final ZTE_OPERATOR_NAME:Ljava/lang/String; = "ZTE_OPERATOR_NAME"

.field public static final ZTE_TARGET_DEVICE:Ljava/lang/String; = "ZTE_TARGET_DEVICE"

.field public static final ZTE_TARGET_PRODUCT:Ljava/lang/String; = "ZTE_TARGET_PRODUCT"

.field private static mAppContext:Landroid/content/Context; = null

.field private static mCurrentCountry:Ljava/lang/String; = null

.field private static mProjectConfigXml:Landroid/content/res/XmlResourceParser; = null

.field private static final mProjectName:Ljava/lang/String; = "Project_Name"

.field private static final mSettingsConfFilePathNvida:Ljava/lang/String; = "/zteconfig/settings.conf"

.field private static final mSettingsConfFilePathQualcom:Ljava/lang/String; = "/persist/settings.conf"

.field private static mZTETOperatorName:Ljava/lang/String;

.field private static mZTETargetDevice:Ljava/lang/String;

.field private static mZTETargetProduct:Ljava/lang/String;

.field private static testTargetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetDevice:Ljava/lang/String;

    .line 22
    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETOperatorName:Ljava/lang/String;

    .line 23
    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetProduct:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    .line 29
    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mAppContext:Landroid/content/Context;

    .line 30
    const-string v0, ""

    sput-object v0, Landroid/webkit/macro/ProjectMacro;->mCurrentCountry:Ljava/lang/String;

    .line 31
    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mProjectConfigXml:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/webkit/macro/ProjectMacroDefine;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/webkit/macro/ProjectMacro;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "zteTargetDevice"

    .prologue
    .line 118
    const-string v4, ""

    .line 120
    .local v4, result:Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/util/Config;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Config;

    .line 121
    .local v1, config:Landroid/util/Config;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 122
    .local v3, field:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1           #config:Landroid/util/Config;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "Bookmarks"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getFromProjectConfig(Ljava/lang/String;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 181
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->mAppContext:Landroid/content/Context;

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mProjectConfigXml:Landroid/content/res/XmlResourceParser;

    invoke-static {v1, p0, v2}, Landroid/webkit/utils/ProjectsConfigUtils;->getProjectMacro(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    .line 183
    .local v0, result:Z
    return v0
.end method

.method private static getFromSettingsConfNvida(Ljava/lang/String;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, result:Z
    const-string v2, "Project_Name"

    const-string v3, "/zteconfig/settings.conf"

    invoke-static {v2, v3}, Landroid/webkit/macro/ProjectMacro;->getPropertyFromConf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, project:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 197
    :cond_0
    return v1
.end method

.method private static getFromSettingsConfQualcom(Ljava/lang/String;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, result:Z
    const-string v2, "Project_Name"

    const-string v3, "/persist/settings.conf"

    invoke-static {v2, v3}, Landroid/webkit/macro/ProjectMacro;->getPropertyFromConf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, project:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 207
    :cond_0
    return v1
.end method

.method private static getPropertyFromConf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "property"
    .parameter "filePath"

    .prologue
    .line 214
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 216
    .local v3, stream:Ljava/io/FileInputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 217
    .local v2, properties:Ljava/util/Properties;
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 226
    .end local v1           #file:Ljava/io/File;
    .end local v2           #properties:Ljava/util/Properties;
    .end local v3           #stream:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Bookmarks"

    const-string/jumbo v6, "read email setting in config file failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v4, "Unavailable"

    goto :goto_0
.end method

.method public static getSecureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 130
    const-string v3, ""

    .line 132
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/provider/Settings$Secure;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Settings$Secure;

    .line 133
    .local v4, secure:Landroid/provider/Settings$Secure;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 134
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #secure:Landroid/provider/Settings$Secure;
    :goto_0
    return-object v3

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Bookmarks"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSystemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    .line 142
    const-string v3, ""

    .line 144
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/provider/Settings$System;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Settings$System;

    .line 145
    .local v4, system:Landroid/provider/Settings$System;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 146
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #system:Landroid/provider/Settings$System;
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "Bookmarks"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    sput-object p0, Landroid/webkit/macro/ProjectMacro;->mAppContext:Landroid/content/Context;

    .line 36
    :try_start_0
    const-string/jumbo v1, "ro.product.locale.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mCurrentCountry:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mCurrentCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setProjectConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "xml"

    .prologue
    .line 46
    sput-object p0, Landroid/webkit/macro/ProjectMacro;->mProjectConfigXml:Landroid/content/res/XmlResourceParser;

    .line 47
    return-void
.end method

.method public static testTargetCopy(Ljava/lang/String;)Z
    .locals 5
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    .line 53
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetDevice:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 54
    const-string v1, "ZTE_TARGET_DEVICE"

    invoke-static {v1}, Landroid/webkit/macro/ProjectMacro;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetDevice:Ljava/lang/String;

    .line 55
    const-string v1, "ZTE_OPERATOR_NAME"

    invoke-static {v1}, Landroid/webkit/macro/ProjectMacro;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETOperatorName:Ljava/lang/String;

    .line 56
    const-string v1, "ZTE_TARGET_PRODUCT"

    invoke-static {v1}, Landroid/webkit/macro/ProjectMacro;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetProduct:Ljava/lang/String;

    .line 57
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetDevice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mZTETargetDevice:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETOperatorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mZTETOperatorName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->mZTETargetProduct:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 62
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mZTETargetProduct:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    invoke-static {p0}, Landroid/webkit/macro/ProjectMacro;->testTargetCopyProcess(Ljava/lang/String;)Z

    move-result v0

    .line 72
    .local v0, result:Z
    if-nez v0, :cond_3

    .line 73
    invoke-static {p0}, Landroid/webkit/macro/ProjectMacro;->testTargetCopyByDevice(Ljava/lang/String;)Z

    move-result v0

    .line 74
    sget-object v1, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    return v0
.end method

.method public static varargs testTargetCopy([Ljava/lang/String;)Z
    .locals 3
    .parameter "strings"

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 109
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/webkit/macro/ProjectMacro;->testTargetCopy(Ljava/lang/String;)Z

    move-result v1

    .line 110
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 113
    :cond_0
    return v1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static testTargetCopyByDevice(Ljava/lang/String;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, result:Z
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_3
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/macro/ProjectMacro;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static testTargetCopyProcess(Ljava/lang/String;)Z
    .locals 6
    .parameter "target"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, result:Z
    sget-object v4, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    sget-object v4, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 159
    :cond_1
    :try_start_0
    const-class v4, Landroid/util/Config;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Config;

    .line 161
    .local v0, config:Landroid/util/Config;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    sget-object v4, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v0           #config:Landroid/util/Config;
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 166
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {p0}, Landroid/webkit/macro/ProjectMacro;->getFromProjectConfig(Ljava/lang/String;)Z

    move-result v3

    .line 167
    if-nez v3, :cond_0

    .line 169
    invoke-static {p0}, Landroid/webkit/macro/ProjectMacro;->getFromSettingsConfNvida(Ljava/lang/String;)Z

    move-result v3

    .line 170
    if-nez v3, :cond_2

    .line 171
    invoke-static {p0}, Landroid/webkit/macro/ProjectMacro;->getFromSettingsConfQualcom(Ljava/lang/String;)Z

    move-result v3

    .line 173
    :cond_2
    sget-object v4, Landroid/webkit/macro/ProjectMacro;->testTargetList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

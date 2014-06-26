.class public Landroid/webkit/utils/ProjectsConfigUtils;
.super Ljava/lang/Object;
.source "ProjectsConfigUtils.java"


# static fields
.field public static mProjects:Ljava/util/HashMap;
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
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/utils/ProjectsConfigUtils;->mProjects:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllProjectMacro(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter "context"
    .parameter "xml"

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, dbProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 32
    .local v3, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 34
    .local v2, key:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 35
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string v5, "item"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    const-string/jumbo v5, "value"

    invoke-static {p0, p1, v5}, Landroid/webkit/utils/ProjectsConfigUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v5, "key"

    invoke-static {p0, p1, v5}, Landroid/webkit/utils/ProjectsConfigUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    sget-object v5, Landroid/webkit/utils/ProjectsConfigUtils;->mProjects:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v4           #xmlEventType:I
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ProjectsConfigUtils"

    const-string v6, "Error while trying to load all provider config settings."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 41
    .restart local v4       #xmlEventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :try_start_1
    const-string/jumbo v5, "target"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method public static getProjectMacro(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Z
    .locals 2
    .parameter "context"
    .parameter "project"
    .parameter "xml"

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, result:Z
    sget-object v1, Landroid/webkit/utils/ProjectsConfigUtils;->mProjects:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {p0, p2}, Landroid/webkit/utils/ProjectsConfigUtils;->getAllProjectMacro(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 18
    :cond_0
    sget-object v1, Landroid/webkit/utils/ProjectsConfigUtils;->mProjects:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    sget-object v1, Landroid/webkit/utils/ProjectsConfigUtils;->mProjects:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    :cond_1
    return v0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "xml"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 56
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

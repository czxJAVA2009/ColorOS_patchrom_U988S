.class public Lcom/android/server/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public appNum:I

.field public freqDivList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/FreqDiv;",
            ">;"
        }
    .end annotation
.end field

.field public freqDiv_init:I

.field public packageName:Ljava/lang/String;

.field public tskinFlag:Ljava/lang/Double;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public whetherChangeType:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppInfo;->packageName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/AppInfo;->versionName:Ljava/lang/String;

    .line 12
    iput v2, p0, Lcom/android/server/AppInfo;->versionCode:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppInfo;->tskinFlag:Ljava/lang/Double;

    .line 15
    iput-boolean v2, p0, Lcom/android/server/AppInfo;->whetherChangeType:Z

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppInfo;->freqDiv_init:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppInfo;->freqDivList:Ljava/util/ArrayList;

    .line 18
    iput v2, p0, Lcom/android/server/AppInfo;->appNum:I

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNum()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/AppInfo;->appNum:I

    return v0
.end method

.method public getFreqDiv()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/FreqDiv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/AppInfo;->freqDivList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFreqDiv_init()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/AppInfo;->freqDiv_init:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTskinFlag()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AppInfo;->tskinFlag:Ljava/lang/Double;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isWhetherChangeType()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/AppInfo;->whetherChangeType:Z

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setAppNum(I)V
    .locals 0
    .parameter "appNum"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/AppInfo;->appNum:I

    .line 85
    return-void
.end method

.method public setFreqDiv(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/FreqDiv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, freqDiv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/FreqDiv;>;"
    iput-object p1, p0, Lcom/android/server/AppInfo;->freqDivList:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public setFreqDiv_init(I)V
    .locals 0
    .parameter "freqDiv_init"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/AppInfo;->freqDiv_init:I

    .line 73
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/AppInfo;->packageName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTskinFlag(Ljava/lang/Double;)V
    .locals 0
    .parameter "tskinFlag"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/AppInfo;->tskinFlag:Ljava/lang/Double;

    .line 61
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/server/AppInfo;->versionCode:I

    .line 49
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/AppInfo;->versionName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setWhetherChangeType(Z)V
    .locals 0
    .parameter "whetherChangeType"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/server/AppInfo;->whetherChangeType:Z

    .line 67
    return-void
.end method

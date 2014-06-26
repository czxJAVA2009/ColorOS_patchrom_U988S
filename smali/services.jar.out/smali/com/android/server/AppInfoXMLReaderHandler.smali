.class public Lcom/android/server/AppInfoXMLReaderHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AppInfoXMLReaderHandler.java"


# instance fields
.field private appInfo:Lcom/android/server/AppInfo;

.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentDataBuilder:Ljava/lang/StringBuilder;

.field private freqDiv:Lcom/android/server/FreqDiv;

.field private kEntryElementName:Ljava/lang/String;

.field private startEntryElementFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    const-string v0, "entry"

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->kEntryElementName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->startEntryElementFlag:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 53
    iget-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->currentDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "Sax"

    const-string v1, "End"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->startEntryElementFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->currentDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, currentData:Ljava/lang/String;
    const-string v1, "appName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    iput-object v0, v1, Lcom/android/server/AppInfo;->appName:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->currentDataBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    .end local v0           #currentData:Ljava/lang/String;
    :cond_1
    return-void

    .line 64
    .restart local v0       #currentData:Ljava/lang/String;
    :cond_2
    const-string v1, "appPackage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    iput-object v0, v1, Lcom/android/server/AppInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_3
    const-string v1, "isChecked"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/AppInfo;->tskinFlag:Ljava/lang/Double;

    goto :goto_0

    .line 70
    :cond_4
    const-string v1, "whetherChangeType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/AppInfo;->whetherChangeType:Z

    goto :goto_0

    .line 73
    :cond_5
    const-string v1, "freqDiv"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    iget-object v1, v1, Lcom/android/server/AppInfo;->freqDivList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/AppInfoXMLReaderHandler;->freqDiv:Lcom/android/server/FreqDiv;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_6
    const-string v1, "actionName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->freqDiv:Lcom/android/server/FreqDiv;

    iput-object v0, v1, Lcom/android/server/FreqDiv;->actionName:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_7
    const-string v1, "counter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->freqDiv:Lcom/android/server/FreqDiv;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/FreqDiv;->counter:I

    goto :goto_0

    .line 82
    :cond_8
    const-string v1, "total"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 83
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->freqDiv:Lcom/android/server/FreqDiv;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/FreqDiv;->total:I

    goto :goto_0

    .line 85
    :cond_9
    const-string v1, "freqDiv_init"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 86
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/AppInfo;->freqDiv_init:I

    goto/16 :goto_0

    .line 88
    :cond_a
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->kEntryElementName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppInfoXMLReaderHandler;->startEntryElementFlag:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method public getAppInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->currentDataBuilder:Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->kEntryElementName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lcom/android/server/AppInfo;

    invoke-direct {v0}, Lcom/android/server/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->appInfo:Lcom/android/server/AppInfo;

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->startEntryElementFlag:Ljava/lang/Boolean;

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "freqDiv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/server/FreqDiv;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/FreqDiv;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/AppInfoXMLReaderHandler;->freqDiv:Lcom/android/server/FreqDiv;

    goto :goto_0
.end method

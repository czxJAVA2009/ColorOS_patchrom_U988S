.class public Lcom/android/server/FreqDiv;
.super Ljava/lang/Object;
.source "FreqDiv.java"


# instance fields
.field public actionName:Ljava/lang/String;

.field public counter:I

.field public total:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter "activityName"
    .parameter "counter"
    .parameter "total"

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/FreqDiv;->actionName:Ljava/lang/String;

    .line 5
    iput v1, p0, Lcom/android/server/FreqDiv;->counter:I

    .line 6
    iput v1, p0, Lcom/android/server/FreqDiv;->total:I

    .line 9
    iput-object p1, p0, Lcom/android/server/FreqDiv;->actionName:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/android/server/FreqDiv;->counter:I

    .line 11
    iput p3, p0, Lcom/android/server/FreqDiv;->total:I

    .line 12
    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/FreqDiv;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/android/server/FreqDiv;->counter:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/FreqDiv;->total:I

    return v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .parameter "actionName"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/server/FreqDiv;->actionName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setCounter(I)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/server/FreqDiv;->counter:I

    .line 25
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/FreqDiv;->total:I

    .line 31
    return-void
.end method

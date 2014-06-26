.class Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWirelessEnv"
.end annotation


# instance fields
.field private identify1:I

.field private identify2:I

.field private identify3:I

.field private identify4:I

.field private identify5:I

.field private networkType:I

.field private signalValue:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1132
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    .line 1135
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    .line 1136
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    .line 1137
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    .line 1138
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    .line 1139
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    .line 1140
    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    .line 1141
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->isSameLocation(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->copyFrom(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1123
    iget v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1123
    iput p1, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    return p1
.end method

.method private copyFrom(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 1157
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    .line 1158
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    .line 1159
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    .line 1160
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    .line 1161
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    .line 1162
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    .line 1163
    iget v0, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    .line 1164
    return-void
.end method

.method private isSameLocation(Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;)Z
    .locals 5
    .parameter "location"

    .prologue
    const/4 v1, 0x0

    .line 1144
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->networkType:I

    if-eq v2, v3, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v1

    .line 1145
    :cond_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify1:I

    if-ne v2, v3, :cond_0

    .line 1146
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify2:I

    if-ne v2, v3, :cond_0

    .line 1147
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify3:I

    if-ne v2, v3, :cond_0

    .line 1148
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify4:I

    if-ne v2, v3, :cond_0

    .line 1149
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->identify5:I

    if-ne v2, v3, :cond_0

    .line 1150
    iget v2, p0, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    iget v3, p1, Lcom/android/server/power/PowerManagerService$LocationWirelessEnv;->signalValue:I

    sub-int v0, v2, v3

    .line 1151
    .local v0, signalDifferent:I
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signalDifferent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    if-nez v0, :cond_0

    .line 1153
    const/4 v1, 0x1

    goto :goto_0
.end method

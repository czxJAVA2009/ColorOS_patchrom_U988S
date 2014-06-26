.class Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStatus"
.end annotation


# instance fields
.field private DeviceBit:I

.field private SensorType:[I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 1
    .parameter
    .parameter "my_id"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    .line 747
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->uid:I

    .line 748
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->getDeviceBit()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->setSensorType(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->setDeviceBit(ZI)V

    return-void
.end method

.method private getDeviceBit()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    return v0
.end method

.method private getSensorType()[I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    return-object v0
.end method

.method private setDeviceBit(ZI)V
    .locals 2
    .parameter "set"
    .parameter "Mask"

    .prologue
    .line 751
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 752
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    .line 753
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->uid:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #getter for: Lcom/android/internal/os/BatteryStatsImpl;->mForeGroundAppUid:I
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$1376(Lcom/android/internal/os/BatteryStatsImpl;I)I

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->DeviceBit:I

    goto :goto_0
.end method

.method private setSensorType(ZI)V
    .locals 4
    .parameter "set"
    .parameter "sensor"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 770
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    if-nez v1, :cond_1

    .line 771
    if-eqz p1, :cond_0

    .line 772
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    .line 773
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aput p2, v1, v3

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    const/4 v0, 0x0

    .line 777
    .local v0, i:I
    if-eqz p1, :cond_6

    .line 778
    :goto_1
    if-ge v0, v2, :cond_2

    .line 779
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_4

    .line 783
    :cond_2
    if-lt v0, v2, :cond_0

    .line 784
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    .line 785
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aget v1, v1, v0

    if-nez v1, :cond_5

    .line 786
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aput p2, v1, v0

    .line 790
    :cond_3
    if-lt v0, v2, :cond_0

    .line 791
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUseSensorType[] is full,sensor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 784
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 795
    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_7

    .line 797
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DeviceStatus;->SensorType:[I

    aput v3, v1, v0

    goto :goto_0

    .line 795
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

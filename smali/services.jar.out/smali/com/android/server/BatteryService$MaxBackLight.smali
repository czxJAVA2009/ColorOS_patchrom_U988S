.class final Lcom/android/server/BatteryService$MaxBackLight;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaxBackLight"
.end annotation


# instance fields
.field private final mMaxBackLight:Lcom/android/server/LightsService$Light;

.field private final maxBackLightContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/server/BatteryService$MaxBackLight;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 945
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$MaxBackLight;->mMaxBackLight:Lcom/android/server/LightsService$Light;

    .line 946
    iput-object p2, p0, Lcom/android/server/BatteryService$MaxBackLight;->maxBackLightContext:Landroid/content/Context;

    .line 947
    return-void
.end method


# virtual methods
.method public setMaxBackLight(I)V
    .locals 1
    .parameter "maxBrightness"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/BatteryService$MaxBackLight;->mMaxBackLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setMaxBrightness(I)V

    .line 951
    return-void
.end method

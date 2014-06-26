.class Lcom/nvidia/NvAppProfileService$App;
.super Ljava/lang/Object;
.source "NvAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvAppProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final emcRate:I

.field public final packageName:Ljava/lang/String;

.field public final powerMode:I

.field public final tskinValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "_packageName"
    .parameter "_emcRate"
    .parameter "_powerMode"
    .parameter "_tskinValue"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/nvidia/NvAppProfileService$App;->packageName:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/nvidia/NvAppProfileService$App;->emcRate:I

    .line 99
    iput p3, p0, Lcom/nvidia/NvAppProfileService$App;->powerMode:I

    .line 100
    iput p4, p0, Lcom/nvidia/NvAppProfileService$App;->tskinValue:I

    .line 101
    return-void
.end method

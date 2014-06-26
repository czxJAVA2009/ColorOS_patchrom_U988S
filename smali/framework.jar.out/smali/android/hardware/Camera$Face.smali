.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1444
    iput-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1453
    iput-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1462
    iput-object v1, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1376
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 1474
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/16 v1, 0x78

    if-lt v0, v1, :cond_0

    .line 1475
    const/4 v0, 0x1

    .line 1480
    :goto_0
    return v0

    .line 1477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1480
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 1468
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.class public Lcom/nvidia/NvCamera$NvParameters;
.super Landroid/hardware/Camera$Parameters;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvParameters"
.end annotation


# static fields
.field private static final NV_ADVANCED_NOISE_REDUCTION_MODE:Ljava/lang/String; = "nv-advanced-noise-reduction-mode"

.field private static final NV_AUTOEXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final NV_AUTOWHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final NV_AUTO_ROTATION:Ljava/lang/String; = "nv-auto-rotation"

.field private static final NV_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-burst-picture-count"

.field private static final NV_CAPABILITY_FOR_VIDEO_SIZE:Ljava/lang/String; = "nv-capabilities-for-video-size"

.field private static final NV_CAPTURE_MODE:Ljava/lang/String; = "nv-capture-mode"

.field private static final NV_COLOR_CORRECTION:Ljava/lang/String; = "nv-color-correction"

.field private static final NV_CONTINUOUS_SHOT_MODE:Ljava/lang/String; = "shot2shot"

.field private static final NV_CONTRAST:Ljava/lang/String; = "nv-contrast"

.field private static final NV_DISABLE_PREVIEW_PAUSE:Ljava/lang/String; = "nv-disable-preview-pause"

.field private static final NV_EDGE_ENHANCEMENT:Ljava/lang/String; = "nv-edge-enhancement"

.field private static final NV_EV_BRACKET_CAPTURE:Ljava/lang/String; = "nv-ev-bracket-capture"

.field private static final NV_EXPOSURE_STATUS:Ljava/lang/String; = "nv-exposure-status"

.field private static final NV_EXPOSURE_TIME:Ljava/lang/String; = "nv-exposure-time"

.field private static final NV_FLIP_PREVIEW:Ljava/lang/String; = "nv-flip-preview"

.field private static final NV_FLIP_STILL:Ljava/lang/String; = "nv-flip-still"

.field private static final NV_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final NV_FOCUS_POSITION:Ljava/lang/String; = "nv-focus-position"

.field private static final NV_MAX_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-burst-picture-count-max"

.field private static final NV_MAX_NSL_BURST_COUNT:Ljava/lang/String; = "nv-nsl-burst-picture-count-max"

.field private static final NV_MAX_NSL_NUM_BUFFERS:Ljava/lang/String; = "nv-nsl-num-buffers-max"

.field private static final NV_MAX_NSL_SKIP_COUNT:Ljava/lang/String; = "nv-nsl-burst-skip-count-max"

.field private static final NV_MAX_SKIP_COUNT:Ljava/lang/String; = "nv-burst-skip-count-max"

.field private static final NV_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final NV_NORMAL_SHOT_MODE:Ljava/lang/String; = "normal"

.field private static final NV_NSL_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-nsl-burst-picture-count"

.field private static final NV_NSL_NUM_BUFFERS:Ljava/lang/String; = "nv-nsl-num-buffers"

.field private static final NV_NSL_SKIP_COUNT:Ljava/lang/String; = "nv-nsl-burst-skip-count"

.field private static final NV_PICTURE_ISO:Ljava/lang/String; = "nv-picture-iso"

.field private static final NV_RAW_DUMP_FLAG:Ljava/lang/String; = "nv-raw-dump-flag"

.field private static final NV_SATURATION:Ljava/lang/String; = "nv-saturation"

.field private static final NV_SENSOR_CAPTURE_RATE:Ljava/lang/String; = "nv-sensor-capture-rate"

.field private static final NV_SKIP_COUNT:Ljava/lang/String; = "nv-burst-skip-count"

.field private static final NV_STEREO_MODE:Ljava/lang/String; = "nv-stereo-mode"

.field private static final NV_STILL_HDR:Ljava/lang/String; = "nv-still-hdr"

.field private static final NV_SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final NV_VIDEO_SPEED:Ljava/lang/String; = "nv-video-speed"


# instance fields
.field final synthetic this$0:Lcom/nvidia/NvCamera;


# direct methods
.method protected constructor <init>(Lcom/nvidia/NvCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/nvidia/NvCamera$NvParameters;->this$0:Lcom/nvidia/NvCamera;

    .line 311
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 312
    return-void
.end method

.method private StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1636
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1638
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "("

    invoke-direct {v5, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1641
    new-instance v6, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v6}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    .line 1642
    .local v6, window:Lcom/nvidia/NvCamera$NvWindow;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1643
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v3, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    .local v3, subTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1645
    .local v2, subToken:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 1646
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1647
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 1648
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 1650
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1651
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 1652
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1653
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, ")"

    invoke-direct {v1, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    .local v1, endTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1655
    .local v0, endToken:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 1656
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1659
    .end local v0           #endToken:Ljava/lang/String;
    .end local v1           #endTokenizer:Ljava/util/StringTokenizer;
    .end local v2           #subToken:Ljava/lang/String;
    .end local v3           #subTokenizer:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    .end local v6           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_0
    return-void
.end method

.method private WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1606
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1608
    :cond_0
    const/4 v4, 0x0

    .line 1631
    :goto_0
    return-object v4

    .line 1612
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1613
    .local v1, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1614
    .local v3, windowsString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1616
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nvidia/NvCamera$NvWindow;

    .line 1617
    .local v2, window:Lcom/nvidia/NvCamera$NvWindow;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1619
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1621
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1623
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1625
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1627
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_2

    .line 1629
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1631
    .end local v2           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getAdvancedNoiseReductionMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    const-string/jumbo v0, "nv-advanced-noise-reduction-mode"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 1408
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation()Z
    .locals 2

    .prologue
    .line 1432
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 1392
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 541
    const-string/jumbo v0, "nv-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCapabilitiesForVideoSizes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/NvCamera$NvVideoPreviewFps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v1, VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    const-string/jumbo v9, "nv-capabilities-for-video-size-values"

    invoke-virtual {p0, v9}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 917
    .end local v1           #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_0
    return-object v1

    .line 883
    .restart local v1       #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v6, v2, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .local v6, tokenizer1:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 886
    new-instance v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvVideoPreviewFps;-><init>()V

    .line 888
    .local v0, TempVideoPreviewFps:Lcom/nvidia/NvCamera$NvVideoPreviewFps;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 891
    .local v3, token1:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v7, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .local v7, tokenizer2:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, token2:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v8, tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 898
    .local v5, token3:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    .line 899
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 900
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    .line 902
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 903
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8           #tokenizer3:Ljava/util/StringTokenizer;
    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .restart local v8       #tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 907
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    .line 908
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    .line 911
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    .line 915
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColorCorrection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1071
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorCorrection([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/16 v7, 0x10

    .line 1089
    if-eqz p1, :cond_1

    array-length v6, p1

    if-ne v6, v7, :cond_1

    .line 1091
    const-string/jumbo v6, "nv-color-correction"

    invoke-virtual {p0, v6}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1094
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1095
    const/4 v6, 0x0

    aput v6, p1, v0

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v0           #i:I
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 1101
    .local v1, index:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1103
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, token:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, p1, v1

    move v1, v2

    .line 1105
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 1108
    .end local v1           #index:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method

.method public getContrast_nv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeEnhancement()I
    .locals 1

    .prologue
    .line 1199
    const-string/jumbo v0, "nv-edge-enhancement"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposureStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    const-string/jumbo v0, "nv-exposure-status"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTime()I
    .locals 1

    .prologue
    .line 1300
    const-string/jumbo v0, "nv-exposure-time"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFlipPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    const-string/jumbo v0, "nv-flip-preview"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlipStill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    const-string/jumbo v0, "nv-flip-still"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 1365
    const-string/jumbo v0, "nv-focus-position"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxBurstPictureCount()I
    .locals 1

    .prologue
    .line 1471
    const-string/jumbo v0, "nv-burst-picture-count-max"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxNSLBurstCount()I
    .locals 1

    .prologue
    .line 1497
    const-string/jumbo v0, "nv-nsl-burst-picture-count-max"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxNSLNumBuffers()I
    .locals 1

    .prologue
    .line 1523
    const-string/jumbo v0, "nv-nsl-num-buffers-max"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxNSLSkipCount()I
    .locals 1

    .prologue
    .line 1510
    const-string/jumbo v0, "nv-nsl-burst-skip-count-max"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSkipCount()I
    .locals 1

    .prologue
    .line 1484
    const-string/jumbo v0, "nv-burst-skip-count-max"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public getNSLBurstCount()I
    .locals 1

    .prologue
    .line 464
    const-string/jumbo v0, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLNumBuffers()I
    .locals 1

    .prologue
    .line 399
    const-string/jumbo v0, "nv-nsl-num-buffers"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLSkipCount()I
    .locals 1

    .prologue
    .line 435
    const-string/jumbo v0, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewPauseDisabled()Z
    .locals 2

    .prologue
    .line 1599
    const-string/jumbo v1, "nv-disable-preview-pause"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getRawDumpFlag()I
    .locals 1

    .prologue
    .line 645
    const-string/jumbo v0, "nv-raw-dump-flag"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 1133
    const-string/jumbo v0, "nv-saturation"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 522
    const-string/jumbo v0, "nv-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStereoMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1556
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStillHDR()Z
    .locals 2

    .prologue
    .line 1457
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedFlipPreviewModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    const-string/jumbo v1, "nv-flip-preview-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFlipStillModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    const-string/jumbo v1, "nv-flip-still-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedSensorCaptureRate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    const-string/jumbo v5, "nv-sensor-capture-rate-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 805
    :cond_0
    return-object v0

    .line 797
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v0, SensorCaptureRate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 803
    .local v1, r:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedStereoModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    const-string/jumbo v1, "nv-stereo-mode-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSpeeds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    const-string/jumbo v5, "nv-video-speed-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 858
    :cond_0
    return-object v4

    .line 850
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v4, videospeeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, token:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 856
    .local v0, s:F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public inContinuousShotMode()Z
    .locals 2

    .prologue
    .line 597
    const-string/jumbo v1, "nv-capture-mode"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, nvCaptureMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 599
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 600
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdvancedNoiseReductionMode(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1230
    const-string/jumbo v0, "nv-advanced-noise-reduction-mode"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1400
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1424
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1384
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public setBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 533
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setColorCorrection(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1063
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return-void
.end method

.method public setColorCorrection([F)V
    .locals 5
    .parameter "matrix"

    .prologue
    const/16 v4, 0xf

    .line 1075
    if-eqz p1, :cond_1

    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1078
    .local v1, matrixString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1080
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1081
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1084
    const-string/jumbo v2, "nv-color-correction"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .end local v0           #i:I
    .end local v1           #matrixString:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1163
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public setEdgeEnhancement(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1190
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-edge-enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method public setEvBracketCapture([F)V
    .locals 4
    .parameter "evValues"

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 742
    .local v0, evString:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 744
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :goto_0
    const-string/jumbo v2, "nv-ev-bracket-capture"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void

    .line 748
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 750
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 751
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 753
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setExposureTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1292
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    return-void
.end method

.method public setFlipPreview(Ljava/lang/String;)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 663
    const-string/jumbo v0, "nv-flip-preview"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public setFlipStill(Ljava/lang/String;)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 697
    const-string/jumbo v0, "nv-flip-still"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 966
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1357
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-focus-position"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void
.end method

.method public setMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1026
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_0
    return-void
.end method

.method public setNSLBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public setNSLNumBuffers(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-num-buffers"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setNSLSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 427
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public setNVShotMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, retVal:Z
    if-eqz p1, :cond_0

    .line 581
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "shot2shot"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 585
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "normal"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPictureISO(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1323
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method public setPreviewPauseDisabled(Z)V
    .locals 2
    .parameter "disable"

    .prologue
    .line 1591
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-disable-preview-pause"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method public setRawDumpFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 637
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-raw-dump-flag"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public setSaturation(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1125
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-saturation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method

.method public setSensorCaptureRate(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 785
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-sensor-capture-rate"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public setSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public setStereoMode(Ljava/lang/String;)V
    .locals 1
    .parameter "stereoMode"

    .prologue
    .line 1544
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method public setStillHDR(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1449
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    return-void
.end method

.method public setVideoSpeed(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 838
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-video-speed"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method protected splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 329
    :cond_0
    return-object v0

    .line 324
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

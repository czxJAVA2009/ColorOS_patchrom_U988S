.class public final Lcom/android/internal/policy/impl/keyguard/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;,
        Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final OFFSET_HIGHT:F = 0.0f

.field private static final OFFSET_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Utilities"

.field public static mNumOfMissdeCalendar:I

.field public static mNumOfMissdeCall:I

.field public static mNumOfUnreadEmail:I

.field public static mNumOfUnreadMessage:I

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    .line 36
    sput v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    .line 37
    sput v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    .line 38
    sput v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/Utilities;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    .line 48
    :cond_0
    return-void
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v8, 0x0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 302
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 303
    .local v3, height:I
    const-string v5, "taoyong taoyong "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width and height"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 305
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 310
    return-object v0

    .line 304
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-class v1, Lcom/android/internal/policy/impl/keyguard/Utilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Utilities;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/Utilities;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->sInstance:Lcom/android/internal/policy/impl/keyguard/Utilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasMissNum()Z
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, hasMissNum:Z
    sget v1, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    if-nez v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    const/4 v0, 0x1

    .line 320
    :cond_1
    return v0
.end method


# virtual methods
.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "num"
    .parameter "src"

    .prologue
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 57
    .local v20, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 58
    .local v10, height:I
    const-string v21, "Utilities"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "width="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "height="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 60
    .local v15, newIcon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 61
    .local v12, iconABit:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 62
    .local v13, iconBBit:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v9, cv:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800cb

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 64
    .local v14, iconBg:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 65
    .local v6, bgWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 66
    .local v5, bgHight:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 67
    .local v8, bitWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 68
    .local v7, bitHight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    sub-float v21, v21, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v9, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    move-object/from16 v11, p2

    .line 71
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    if-ltz p1, :cond_1

    const/16 v21, 0x9

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 73
    sub-int v21, v20, v6

    sub-int v22, v6, v8

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v18, v21, v22

    .line 74
    .local v18, offsetX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 75
    .local v19, offsetY:F
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 p2, v11

    .line 297
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    .end local p2
    :cond_0
    :goto_1
    return-object p2

    .line 77
    .restart local v18       #offsetX:F
    .restart local v19       #offsetY:F
    .restart local p2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 78
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 81
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 82
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 85
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 86
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 89
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 90
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 93
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 94
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 97
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 98
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 101
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 102
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 105
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 106
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 109
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 110
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 113
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 114
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 117
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 118
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 121
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 122
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 125
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 126
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 129
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 130
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 133
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 134
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 137
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 138
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 141
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 142
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 145
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 146
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 149
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 150
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 153
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 154
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 160
    .end local v18           #offsetX:F
    .end local v19           #offsetY:F
    :cond_1
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v21, 0x63

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 161
    sub-int v21, v20, v6

    mul-int/lit8 v22, v8, 0x2

    sub-int v22, v6, v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-float v16, v21, v22

    .line 162
    .local v16, offsetAbitX:F
    int-to-float v0, v8

    move/from16 v21, v0

    add-float v17, v16, v21

    .line 163
    .local v17, offsetBbitX:F
    sub-int v21, v5, v7

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    add-float v19, v21, v22

    .line 165
    .restart local v19       #offsetY:F
    div-int/lit8 v3, p1, 0xa

    .line 166
    .local v3, aBit:I
    rem-int/lit8 v4, p1, 0xa

    .line 167
    .local v4, bBit:I
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aBitaBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v21, "taoyong"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bBitbBit"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    packed-switch v3, :pswitch_data_1

    .line 213
    :goto_2
    packed-switch v4, :pswitch_data_2

    :goto_3
    move-object/from16 p2, v11

    .line 295
    goto/16 :goto_1

    .line 171
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 172
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 175
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 176
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 179
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 180
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 183
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 184
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 187
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 188
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 191
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 192
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 195
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 196
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 199
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 200
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 204
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 205
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 208
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 209
    const/16 v21, 0x0

    move/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 215
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c1

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 216
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 219
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 220
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 223
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c2

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 224
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 227
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 228
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 231
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c3

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 232
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 235
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 236
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 239
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c4

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 240
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 243
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 244
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 247
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c5

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 248
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 249
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 251
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 252
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 255
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c6

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 256
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 259
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 260
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 263
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c7

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 264
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 267
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 268
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 271
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c8

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 272
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 275
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 276
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 277
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 279
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800c9

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 280
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 283
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 284
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 287
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10800ca

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 288
    const/16 v21, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v9, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 289
    const/16 v21, 0x1f

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 291
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 292
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 213
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.class Landroid/webkit/NativeAudioManager;
.super Ljava/lang/Object;
.source "NativeAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x0

.field private static final AUDIOFOCUS_LOSS:I = 0x1

.field private static final AUDIOFOCUS_LOSS_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = 0x3

.field private static final STREAM_ALARM:I = 0x4

.field private static final STREAM_DTMF:I = 0x6

.field private static final STREAM_MUSIC:I = 0x3

.field private static final STREAM_NOTIFICATION:I = 0x5

.field private static final STREAM_RING:I = 0x2

.field private static final STREAM_SYSTEM:I = 0x1

.field private static final STREAM_VOICE_CALL:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mNativePointer:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .parameter "nativePointer"
    .parameter "context"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    .line 46
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    return-void
.end method

.method private native nativeOnAudioFocusChange(II)V
.end method


# virtual methods
.method public declared-synchronized abandonAudioFocus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 83
    :goto_0
    monitor-exit p0

    return v2

    .line 81
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 83
    .local v0, result:I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 78
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized detachNativePointer()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/NativeAudioManager;->abandonAudioFocus()Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 105
    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/webkit/NativeAudioManager;->nativeOnAudioFocusChange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :pswitch_2
    :try_start_2
    iget v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/webkit/NativeAudioManager;->nativeOnAudioFocusChange(II)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/NativeAudioManager;->nativeOnAudioFocusChange(II)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget v0, p0, Landroid/webkit/NativeAudioManager;->mNativePointer:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/webkit/NativeAudioManager;->nativeOnAudioFocusChange(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized requestAudioFocus(I)Z
    .locals 6
    .parameter "nativeStreamType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return v3

    .line 60
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const/4 v1, 0x0

    .line 71
    .local v1, streamType:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Landroid/webkit/NativeAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v1, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 74
    .local v0, result:I
    if-ne v0, v2, :cond_1

    :goto_2
    move v3, v2

    goto :goto_0

    .line 62
    .end local v0           #result:I
    .end local v1           #streamType:I
    :pswitch_1
    const/4 v1, 0x1

    .restart local v1       #streamType:I
    goto :goto_1

    .line 63
    .end local v1           #streamType:I
    :pswitch_2
    const/4 v1, 0x2

    .restart local v1       #streamType:I
    goto :goto_1

    .line 64
    .end local v1           #streamType:I
    :pswitch_3
    const/4 v1, 0x3

    .restart local v1       #streamType:I
    goto :goto_1

    .line 65
    .end local v1           #streamType:I
    :pswitch_4
    const/4 v1, 0x4

    .restart local v1       #streamType:I
    goto :goto_1

    .line 66
    .end local v1           #streamType:I
    :pswitch_5
    const/4 v1, 0x5

    .restart local v1       #streamType:I
    goto :goto_1

    .line 67
    .end local v1           #streamType:I
    :pswitch_6
    const/16 v1, 0x8

    .restart local v1       #streamType:I
    goto :goto_1

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 74
    goto :goto_2

    .line 56
    .end local v0           #result:I
    .end local v1           #streamType:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 60
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
    .end packed-switch
.end method

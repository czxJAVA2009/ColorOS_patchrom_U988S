.class public Lcom/android/internal/policy/impl/keyguard/ItemImageView;
.super Landroid/widget/ImageView;
.source "ItemImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_LOCK_SCREEN_SETTING:Ljava/lang/String; = "action_lock_screen_setting"

.field private static final DEBUG:Z = true

.field private static final DELAY:J = 0x190L

.field private static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final MISSED_CALLS:I = 0x1

.field public static final MISSED_EMAILS:I = 0x1

.field public static final MISSED_MESSAGES:I = 0x1

.field private static final MSG_QUERY_CALENDER:I = 0x131

.field private static final MSG_QUERY_CALLS:I = 0x130

.field private static final MSG_QUERY_EMAIL:I = 0x12f

.field private static final MSG_QUERY_MMS:I = 0x12e

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x12c

.field private static final MSG_START_UNLOCK:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "ItemImageView"


# instance fields
.field private final RING_MODE_ID:I

.field private final UNLOCK_ID:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private isStartCallLog:Z

.field private ishascalendar:Z

.field private mAppComponentNameItem:[Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mCalendarRespondingOnChange:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mCallsRespondingOnChange:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Landroid/database/ContentObserver;

.field private mEmailRespondingOnChange:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mItemBgId:[I

.field private mItemId:I

.field private mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

.field private mMessageRespondingOnChange:Z

.field private mMessagesObserver:Landroid/database/ContentObserver;

.field private mMissedCallsObserver:Landroid/database/ContentObserver;

.field mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceID:I

.field private mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

.field private mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    const-string v1, "lockscreen_conponentname_item5"

    aput-object v1, v0, v4

    const-string v1, "lockscreen_conponentname_item6"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 50
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemBgId:[I

    .line 58
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    .line 70
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 76
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isStartCallLog:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->ishascalendar:Z

    .line 78
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->RING_MODE_ID:I

    .line 79
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->UNLOCK_ID:I

    .line 374
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z

    .line 375
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    .line 398
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessageRespondingOnChange:Z

    .line 399
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    .line 422
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailRespondingOnChange:Z

    .line 423
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    .line 446
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarRespondingOnChange:Z

    .line 447
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 501
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0xdft 0x0t 0x8t 0x1t
        0xe0t 0x0t 0x8t 0x1t
        0xe1t 0x0t 0x8t 0x1t
        0xe2t 0x0t 0x8t 0x1t
        0xe3t 0x0t 0x8t 0x1t
        0xe4t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    const-string v1, "lockscreen_conponentname_item5"

    aput-object v1, v0, v4

    const-string v1, "lockscreen_conponentname_item6"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 50
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemBgId:[I

    .line 58
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    .line 70
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 76
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isStartCallLog:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->ishascalendar:Z

    .line 78
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->RING_MODE_ID:I

    .line 79
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->UNLOCK_ID:I

    .line 374
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z

    .line 375
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    .line 398
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessageRespondingOnChange:Z

    .line 399
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    .line 422
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailRespondingOnChange:Z

    .line 423
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    .line 446
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarRespondingOnChange:Z

    .line 447
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 501
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    .line 92
    iput-object p0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    .line 93
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    .line 94
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    .line 123
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0xdft 0x0t 0x8t 0x1t
        0xe0t 0x0t 0x8t 0x1t
        0xe1t 0x0t 0x8t 0x1t
        0xe2t 0x0t 0x8t 0x1t
        0xe3t 0x0t 0x8t 0x1t
        0xe4t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateRingModeSource()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryMMS()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryEmail()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->handleQueryCalendar()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessageRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessageRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/ItemImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/ItemImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailRespondingOnChange:Z

    return p1
.end method

.method private getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "packageManager"
    .parameter "componentname"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ItemImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackInfo failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 302
    goto :goto_0

    .line 300
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleQueryCalendar()V
    .locals 8

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(state=1)"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SORTORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private handleQueryCalls()V
    .locals 8

    .prologue
    .line 394
    const-string v0, "ItemImageView"

    const-string v1, "handleQueryCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(type=3 AND new>0 )"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SORTORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private handleQueryEmail()V
    .locals 8

    .prologue
    .line 442
    const-string v0, "ItemImageView"

    const-string v1, "handleQueryEmail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "unreadCount > 0"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SORTORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private handleQueryMMS()V
    .locals 8

    .prologue
    .line 418
    const-string v0, "ItemImageView"

    const-string v1, "handleQueryMMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemImageView:Lcom/android/internal/policy/impl/keyguard/ItemImageView;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(type = 1 AND read = 0)"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SORTORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private isNormalMode()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerMessagesObserver()V
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    return-void
.end method

.method private registerMissedCalendarsObserver()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 323
    return-void
.end method

.method private registerMissedCallsObserver()V
    .locals 4

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    return-void
.end method

.method private registerMissedEmailsObserver()V
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 318
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "content://com.android.email.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    return-void
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 489
    const-string v2, "ItemImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNormalMode11111="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isNormalMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    .line 492
    .local v0, vibe:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 498
    .end local v0           #vibe:Z
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    return-void
.end method

.method private updateRingModeSource()V
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateSourceId()V

    .line 516
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mSourceID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    .line 517
    return-void
.end method

.method private updateSourceId()V
    .locals 3

    .prologue
    .line 473
    const-string v0, "ItemImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalMode22222="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isNormalMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const v0, 0x10800dc

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mSourceID:I

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10800dd

    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mSourceID:I

    goto :goto_0

    :cond_1
    const v0, 0x10800de

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->unRegisterContentObserver()V

    goto :goto_0
.end method

.method public initRingMode()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const-wide/16 v5, 0x190

    const/4 v4, 0x0

    const/16 v3, 0x12d

    const/4 v2, 0x5

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->stopTimer()V

    .line 141
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-ne v0, v2, :cond_3

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-ne v0, v2, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->toggleRingMode()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    .line 152
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isStartCallLog:Z

    if-eqz v0, :cond_5

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 155
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->ishascalendar:Z

    if-eqz v0, :cond_6

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 157
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.alerts.AlertActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 160
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    .line 162
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.lockscreensetting"

    const-string v2, "com.android.lockscreensetting.LockScreenSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "action_lock_screen_setting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "item_id"

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 136
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    .line 176
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 182
    return-void
.end method

.method public setZTEChangeableView(Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;)V
    .locals 0
    .parameter "ztechangeableview"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    .line 179
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1
    .parameter "intent"
    .parameter "tag"

    .prologue
    .line 184
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 198
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateIconBitmap()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x0

    const v5, 0x10800db

    .line 202
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 203
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-ne v2, v4, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateRingModeSource()V

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->invalidate()V

    .line 235
    return-void

    .line 206
    :cond_1
    const v2, 0x10800e5

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, componentNameString:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 213
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 215
    :cond_3
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 217
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 218
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 219
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 220
    const-string v2, "ItemImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 224
    :cond_4
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 225
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateIconBitmapAndNumber()V
    .locals 10

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    const v3, 0x10800db

    .line 237
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    if-ne v0, v2, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->updateRingModeSource()V

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->invalidate()V

    .line 290
    return-void

    .line 241
    :cond_1
    const v0, 0x10800e5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mAppComponentNameItem:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mItemId:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, componentNameString:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 248
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_0

    .line 250
    :cond_3
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 252
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    .line 253
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v9, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 255
    const-string v0, "ItemImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 257
    const-string v0, "LCJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conpentNameString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, "com.android.mms/com.android.mms.ui.ConversationList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->registerMessagesObserver()V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x1

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(type = 1 AND read = 0)"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SORTORDER:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    const-string v0, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->registerMissedCallsObserver()V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(type=3 AND new>0 )"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SORTORDER:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_6
    const-string v0, "com.android.email/com.android.email.activity.Welcome"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->registerMissedEmailsObserver()V

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "unreadCount > 0"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SORTORDER:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_7
    const-string v0, "com.android.calendar/com.android.calendar.AllInOneActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->registerMissedCalendarsObserver()V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x3

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->PROJECT:[Ljava/lang/String;

    const-string v5, "(state=1)"

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/Utilities$CalendarInfo;->SORTORDER:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_8
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mComponentName:Landroid/content/ComponentName;

    .line 280
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 284
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public updateMissedNumber(II)V
    .locals 5
    .parameter "token"
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    const-string v0, "ItemImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMissedNumber :token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    if-lez p2, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mZTEChangeableView:Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEChangeableView;->updateImgLock()V

    .line 373
    return-void

    .line 337
    :pswitch_0
    if-lez p2, :cond_1

    .line 338
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isStartCallLog:Z

    .line 342
    :goto_2
    sput p2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    .line 343
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCallsRespondingOnChange:Z

    goto :goto_0

    .line 340
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->isStartCallLog:Z

    goto :goto_2

    .line 346
    :pswitch_1
    if-lez p2, :cond_2

    .line 347
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->ishascalendar:Z

    .line 351
    :goto_3
    sput p2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    .line 352
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mCalendarRespondingOnChange:Z

    goto :goto_0

    .line 349
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->ishascalendar:Z

    goto :goto_3

    .line 355
    :pswitch_2
    sput p2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    .line 356
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mMessageRespondingOnChange:Z

    goto :goto_0

    .line 359
    :pswitch_3
    sput p2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    .line 360
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->mEmailRespondingOnChange:Z

    goto :goto_0

    .line 368
    :cond_3
    const v0, 0x10800db

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ItemImageView;->setImageResource(I)V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

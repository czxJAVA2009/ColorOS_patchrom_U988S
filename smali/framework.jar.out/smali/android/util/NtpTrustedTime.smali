.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mUseCivilServer:Z

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field final civilServer:Ljava/lang/String;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter "server"
    .parameter "timeout"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "cn.pool.ntp.org"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->civilServer:Ljava/lang/String;

    .line 52
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .parameter "context"

    .prologue
    .line 58
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v9, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 62
    .local v4, resolver:Landroid/content/ContentResolver;
    const v9, 0x1040032

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, defaultServer:Ljava/lang/String;
    const v9, 0x10e0036

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v1, v9

    .line 67
    .local v1, defaultTimeout:J
    const-string/jumbo v9, "ntp_server"

    invoke-static {v4, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, secureServer:Ljava/lang/String;
    const-string/jumbo v9, "ntp_timeout"

    invoke-static {v4, v9, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 72
    .local v7, timeout:J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 73
    .local v6, server:Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/util/NtpTrustedTime;

    invoke-direct {v9, v6, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 76
    .end local v0           #defaultServer:Ljava/lang/String;
    .end local v1           #defaultTimeout:J
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #secureServer:Ljava/lang/String;
    .end local v6           #server:Ljava/lang/String;
    .end local v7           #timeout:J
    :cond_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .restart local v0       #defaultServer:Ljava/lang/String;
    .restart local v1       #defaultTimeout:J
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #secureServer:Ljava/lang/String;
    .restart local v7       #timeout:J
    :cond_1
    move-object v6, v0

    .line 72
    goto :goto_0

    .line 58
    .end local v0           #defaultServer:Ljava/lang/String;
    .end local v1           #defaultTimeout:J
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #secureServer:Ljava/lang/String;
    .end local v7           #timeout:J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 83
    const-string v2, "NtpTrustedTime"

    const-string v3, "[NTP]missing server, so no trusted time available."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v4

    .line 87
    :cond_0
    const-string v2, "NtpTrustedTime"

    const-string v5, "forceRefresh() from cache miss"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Landroid/net/SntpClient;

    invoke-direct {v1}, Landroid/net/SntpClient;-><init>()V

    .line 91
    .local v1, client:Landroid/net/SntpClient;
    sget-boolean v2, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    if-eqz v2, :cond_2

    const-string v0, "cn.pool.ntp.org"

    .line 92
    .local v0, actualServer:Ljava/lang/String;
    :goto_1
    sget-boolean v2, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    sput-boolean v2, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    .line 93
    const-string v2, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NTP]actualServer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-wide v5, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    sget-boolean v2, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    if-nez v2, :cond_1

    move v4, v3

    :cond_1
    sput-boolean v4, Landroid/util/NtpTrustedTime;->mUseCivilServer:Z

    .line 97
    iput-boolean v3, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 98
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 99
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 100
    invoke-virtual {v1}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v4, v3

    .line 101
    goto :goto_0

    .line 91
    .end local v0           #actualServer:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    goto :goto_1

    .restart local v0       #actualServer:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 92
    goto :goto_2

    .line 103
    :cond_4
    const-string v2, "NtpTrustedTime"

    const-string v3, "[NTP]client.requestTime() FAILED!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 118
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 125
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 127
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 144
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

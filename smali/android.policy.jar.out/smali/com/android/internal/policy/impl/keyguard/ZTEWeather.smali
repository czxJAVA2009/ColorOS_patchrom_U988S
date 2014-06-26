.class public Lcom/android/internal/policy/impl/keyguard/ZTEWeather;
.super Landroid/widget/RelativeLayout;
.source "ZTEWeather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEWeather"

.field protected static final WEATHER_QUERY_TOKEN:I = 0x0

.field private static final debug:Z = true

.field private static final timeOneDay:J = 0x5265c00L


# instance fields
.field private cityName:Landroid/widget/TextView;

.field private curTemp:Landroid/widget/TextView;

.field private highTemp:Landroid/widget/TextView;

.field private info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

.field private lowTemp:Landroid/widget/TextView;

.field private mContentUri:Landroid/net/Uri;

.field protected mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

.field private mRegisterObserver:Z

.field private mWeatherIsdefultIndex:I

.field private mWeatherQueryColumns:[Ljava/lang/String;

.field private originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

.field private weaterCp:Ljava/lang/String;

.field private weatherDescription:Landroid/widget/TextView;

.field private weathernIcon:Landroid/widget/ImageView;

.field private weathernSeperator:Landroid/widget/ImageView;

.field private weathernSeperatorHorizonal:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mRegisterObserver:Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveHFWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveOriginalInfo(Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->updateWidgetView()V

    return-void
.end method

.method private formatCityName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 227
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, englishName:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, reName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 232
    .end local v2           #reName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 231
    .restart local v2       #reName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 232
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "ZTEWeather"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    .line 99
    const-string v0, "ZTEWeather"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_keyguard_weather_cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v1, "accu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    .line 102
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$WeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->query()V

    .line 110
    return-void

    .line 105
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$HFWeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/WeatherProvider$HFWeatherColumns;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I

    goto :goto_0
.end method

.method private isChinese()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 236
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, chinese:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 239
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 240
    .local v2, config:Landroid/content/res/Configuration;
    iget-object v6, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, language:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    .line 246
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v4           #language:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, ex:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveHFWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 2
    .parameter "c"

    .prologue
    .line 214
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    .line 216
    .local v0, wInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->formatCityName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCityName(Ljava/lang/String;)V

    .line 217
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 218
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 219
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 220
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 224
    return-object v0
.end method

.method private saveOriginalInfo(Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 2
    .parameter "wInfo"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    return-object v0
.end method

.method private saveWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    .locals 3
    .parameter "c"

    .prologue
    .line 183
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;-><init>()V

    .line 189
    .local v0, wInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCityName(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 192
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 193
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 194
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 195
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionText(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setReportTime(J)V

    .line 197
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition1(I)V

    .line 198
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition2(I)V

    .line 199
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition3(I)V

    .line 200
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastCondition4(I)V

    .line 201
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax1(Ljava/lang/String;)V

    .line 202
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax2(Ljava/lang/String;)V

    .line 203
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax3(Ljava/lang/String;)V

    .line 204
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMax4(Ljava/lang/String;)V

    .line 205
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin1(Ljava/lang/String;)V

    .line 206
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin2(Ljava/lang/String;)V

    .line 207
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin3(Ljava/lang/String;)V

    .line 208
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setForecastTempMin4(Ljava/lang/String;)V

    .line 209
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentDate(Ljava/lang/String;)V

    .line 210
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentWeek(Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method private updateWidgetView()V
    .locals 18

    .prologue
    .line 267
    const-string v9, ""

    .line 268
    .local v9, tempUnit:Ljava/lang/String;
    const/4 v12, 0x0

    .line 269
    .local v12, weatherState:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    const v15, 0x104001d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, degree:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    const v15, 0x104001b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, defDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v15, "accu"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 276
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, weatherUnit:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    const v15, 0x104001e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, noCityDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    const v15, 0x104001a

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, autoLocationDescription:Ljava/lang/String;
    const-string v14, "ZTEWeather"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateWidgetView="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v5, 0x0

    .line 281
    .local v5, metric:I
    if-nez v5, :cond_4

    .line 282
    const/4 v14, 0x0

    aget-object v9, v13, v14

    .line 286
    :goto_1
    const/4 v4, 0x0

    .line 287
    .local v4, i:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherUtils;->getStartTime(J)J

    move-result-wide v10

    .line 291
    .local v10, time:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentDate()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherUtils;->getObservationTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 292
    .local v7, observationTime:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-eqz v14, :cond_1

    .line 293
    cmp-long v14, v10, v7

    if-gez v14, :cond_5

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    .line 334
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unknown"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unknown"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->highTemp:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->lowTemp:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperator:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperatorHorizonal:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    :goto_4
    return-void

    .line 274
    .end local v1           #autoLocationDescription:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #metric:I
    .end local v6           #noCityDescription:Ljava/lang/String;
    .end local v7           #observationTime:J
    .end local v10           #time:J
    .end local v13           #weatherUnit:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107003c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 284
    .restart local v1       #autoLocationDescription:Ljava/lang/String;
    .restart local v5       #metric:I
    .restart local v6       #noCityDescription:Ljava/lang/String;
    .restart local v13       #weatherUnit:[Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    aget-object v9, v13, v14

    goto/16 :goto_1

    .line 299
    .restart local v4       #i:I
    .restart local v7       #observationTime:J
    .restart local v10       #time:J
    :cond_5
    sub-long v14, v10, v7

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    long-to-int v4, v14

    .line 300
    packed-switch v4, :pswitch_data_0

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    if-eqz v14, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMin()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMax()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition1()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax1()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition2()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax2()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 318
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition3()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax3()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 323
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastCondition4()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentConditionImg(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTemp(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMin4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMin(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getForecastTempMax4()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->setCurrentTempMax(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "auto location"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 353
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperator:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperatorHorizonal:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTemp()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->highTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMax()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->lowTemp:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentTempMin()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v15, "accu"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 359
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 362
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v14

    if-ltz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v14

    array-length v15, v12

    add-int/lit8 v15, v15, -0x2

    if-le v14, v15, :cond_c

    .line 363
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 366
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/WeatherInfo;->getCurrentConditionImg()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public formatReportTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "time"

    .prologue
    .line 249
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 254
    :goto_0
    return-object v3

    .line 250
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 252
    .local v1, pos:Ljava/text/ParsePosition;
    invoke-virtual {v0, p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 253
    .local v2, reportDate:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 254
    .local v3, reportTime:Ljava/lang/Long;
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 115
    const v0, 0x102031a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->cityName:Landroid/widget/TextView;

    .line 116
    const v0, 0x1020315

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->curTemp:Landroid/widget/TextView;

    .line 117
    const v0, 0x1020317

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->highTemp:Landroid/widget/TextView;

    .line 118
    const v0, 0x1020319

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->lowTemp:Landroid/widget/TextView;

    .line 119
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weatherDescription:Landroid/widget/TextView;

    .line 120
    const v0, 0x102031c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    .line 121
    const v0, 0x1020316

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperator:Landroid/widget/ImageView;

    .line 122
    const v0, 0x1020318

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernSeperatorHorizonal:Landroid/widget/ImageView;

    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->init()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;

    const-string v1, "accu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const-string v0, "ZTEWeather"

    const-string v1, "weathernIcon accu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    const v1, 0x10800f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "ZTEWeather"

    const-string v1, "weathernIcon hf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weathernIcon:Landroid/widget/ImageView;

    const v1, 0x10800f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 377
    const-string v0, "ZTEWeather"

    const-string v1, "onInterceptTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 373
    const-string v0, "ZTEWeather"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mContentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherQueryColumns:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

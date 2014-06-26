.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IapData"
.end annotation


# instance fields
.field public Data:Ljava/lang/String;

.field public recNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->recNum:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->Data:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "recNum"
    .parameter "Data"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->recNum:I

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->Data:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " IapRecord :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->recNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$IapData;->Data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

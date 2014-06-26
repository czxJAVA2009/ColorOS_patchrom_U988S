.class Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;
.super Landroid/widget/TextView;
.source "KeyguardOwnerInfoArea.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->setSelected(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->update()V

    .line 53
    return-void
.end method


# virtual methods
.method getOwnerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 76
    .end local v0           #ownerInfoEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    .restart local v0       #ownerInfoEnabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method update()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->setVisibility(I)V

    goto :goto_0
.end method

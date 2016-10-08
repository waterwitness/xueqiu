.class public Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;
.super Lcom/xueqiu/android/common/b;
.source "TradeSecuritySettingActivity.java"


# instance fields
.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/CheckBox;

.field private p:Landroid/widget/Button;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/xueqiu/android/trade/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->s:Lcom/xueqiu/android/trade/e;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;Lcom/xueqiu/android/trade/e;)Lcom/xueqiu/android/trade/e;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->s:Lcom/xueqiu/android/trade/e;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->p:Landroid/widget/Button;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 131
    invoke-static {p1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->getlable(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->r:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Lcom/xueqiu/android/trade/e;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->s:Lcom/xueqiu/android/trade/e;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    if-ne p2, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 119
    if-ne p2, v3, :cond_3

    move v2, v0

    .line 120
    :goto_2
    if-eqz v2, :cond_4

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2048
    const-string v0, "pref_key_pattern_sha1"

    invoke-static {v0, p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->remove(Ljava/lang/String;Landroid/content/Context;)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2361
    iput-boolean v1, v0, Lcom/xueqiu/android/base/t;->g:Z

    goto :goto_1

    :cond_3
    move v2, v1

    .line 119
    goto :goto_2

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 47
    const v1, 0x7f0704c8

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(I)V

    .line 48
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f0e01a9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    .line 51
    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->k:Landroid/widget/CheckBox;

    .line 52
    const v0, 0x7f0e01aa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->p:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->q:Landroid/view/View;

    .line 54
    const v0, 0x7f0e01a8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->r:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    const v1, 0x7f0701e1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->k:Landroid/widget/CheckBox;

    const v1, 0x7f0701f0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->j:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->k:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$3;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$4;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-string v0, "trade_write_token_expires"

    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 95
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->b(I)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->q:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

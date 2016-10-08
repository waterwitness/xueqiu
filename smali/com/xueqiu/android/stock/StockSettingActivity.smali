.class public Lcom/xueqiu/android/stock/StockSettingActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private p:Lcom/xueqiu/android/stock/StockSettingActivity;

.field private q:Landroid/content/SharedPreferences;

.field private r:Landroid/view/View;

.field private s:Lcom/xueqiu/android/common/widget/SwitchButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockSettingActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockSettingActivity;Z)V
    .locals 5

    .prologue
    const v3, 0x7f0704c9

    .line 4080
    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 4081
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4086
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 4087
    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 4088
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/stock/StockSettingActivity$2;

    iget-object v4, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->p:Lcom/xueqiu/android/stock/StockSettingActivity;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/stock/StockSettingActivity$2;-><init>(Lcom/xueqiu/android/stock/StockSettingActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4730
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v2, v1, v0, v3}, Lcom/xueqiu/android/base/b/am;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 36
    return-void

    .line 4080
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 4087
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/StockSettingActivity;)Lcom/xueqiu/android/stock/StockSettingActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->p:Lcom/xueqiu/android/stock/StockSettingActivity;

    return-object v0
.end method


# virtual methods
.method public changeStockColor(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 103
    const v2, 0x7f0703c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x7f0c0007

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/xueqiu/android/stock/StockSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/StockSettingActivity$3;-><init>(Lcom/xueqiu/android/stock/StockSettingActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/StockSettingActivity;->changeStockColor(Landroid/view/View;)V

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "/setting/mobile/stock-alert"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->p:Lcom/xueqiu/android/stock/StockSettingActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0e01a4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 50
    const-string v1, "\u81ea\u9009\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockSettingActivity;->setContentView(I)V

    .line 52
    iput-object p0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->p:Lcom/xueqiu/android/stock/StockSettingActivity;

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->p:Lcom/xueqiu/android/stock/StockSettingActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    .line 4060
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4061
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->j:Landroid/view/View;

    .line 4062
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4063
    const v0, 0x7f0e0149

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->k:Landroid/widget/TextView;

    .line 4064
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->k:Landroid/widget/TextView;

    const v2, 0x7f0c0007

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->g(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4065
    const v0, 0x7f0e01a4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->r:Landroid/view/View;

    .line 4066
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4068
    const v0, 0x7f0e01a6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchButton;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->s:Lcom/xueqiu/android/common/widget/SwitchButton;

    .line 4069
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->q:Landroid/content/SharedPreferences;

    const v1, 0x7f0704c9

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4070
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->s:Lcom/xueqiu/android/common/widget/SwitchButton;

    const-string v2, "1"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setChecked(Z)V

    .line 4071
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockSettingActivity;->s:Lcom/xueqiu/android/common/widget/SwitchButton;

    new-instance v1, Lcom/xueqiu/android/stock/StockSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockSettingActivity$1;-><init>(Lcom/xueqiu/android/stock/StockSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    return-void
.end method

.class public final Lcom/xueqiu/android/trade/c/l;
.super Lcom/xueqiu/android/common/c;
.source "PositionCardItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field a:Z

.field private ak:Lcom/xueqiu/android/base/a/a;

.field private al:Z

.field b:Lcom/xueqiu/android/trade/model/TradeAccount;

.field c:Lrx/j;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/xueqiu/android/trade/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->d:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->al:Z

    return-void
.end method

.method private G()V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 232
    :cond_0
    const v0, 0x7f0e050a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    const v1, 0x7f0e050c

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 235
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getAssetBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const-string v2, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 239
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getUnrealizedPnl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v0, v4, v8

    if-lez v0, :cond_1

    const-string v0, "+"

    :goto_1
    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 240
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getUnrealizedPnl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 238
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v2, "%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getUnrealizedPnlRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/l;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getAssetBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v2, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 247
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getDayIncomeBalance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v0, v4, v8

    if-lez v0, :cond_3

    const-string v0, "+"

    :goto_2
    aput-object v0, v3, v6

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 248
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getDayIncomeBalance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 246
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v2, "%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;->getDayIncomeRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/l;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 247
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public static a(Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/l;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/trade/c/l;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/l;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "args_trade_account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    const-string v2, "args_is_visible"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/l;->e(Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;)Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    .line 10199
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/l;->d:Z

    .line 10200
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10201
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10202
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/base/a/a;)V
    .locals 4

    .prologue
    const v3, 0x7f0e050c

    const/16 v2, 0x8

    .line 51
    .line 10207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->d:Z

    .line 10208
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    if-eqz v0, :cond_0

    .line 10209
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 10210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    .line 10212
    :cond_0
    const v0, 0x7f0e050a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10213
    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10214
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10215
    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10216
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10217
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10218
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10219
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 255
    invoke-static {p0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    .line 256
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/c/l$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/l$3;-><init>(Lcom/xueqiu/android/trade/c/l;)V

    new-instance v2, Lcom/xueqiu/android/trade/c/l$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/l$4;-><init>(Lcom/xueqiu/android/trade/c/l;)V

    invoke-static {p1, p2, v0, v1, v2}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;Lcom/xueqiu/android/trade/c/c;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->h:Lcom/xueqiu/android/trade/c;

    .line 364
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->h:Lcom/xueqiu/android/trade/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c;->a()V

    .line 365
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/l;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/l;->G()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/l;)Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/l;)V
    .locals 4

    .prologue
    .line 51
    .line 11166
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11167
    :cond_0
    :goto_0
    return-void

    .line 11169
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/l$1;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/trade/c/l$1;-><init>(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/base/b/q;)V

    .line 11722
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/am;->f(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/l;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->F()V

    return-void
.end method


# virtual methods
.method final C()V
    .locals 9

    .prologue
    const v8, 0x7f07046a

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v2, 0x7f0e050b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    const-string v2, ""

    .line 145
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const v3, 0x7f07023d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/l;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v0, 0x7f07055c

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const v3, 0x7f070492

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/l;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 152
    :cond_1
    const v3, 0x7f07048c

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/l;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final C_()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->a:Z

    .line 270
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->F()V

    .line 271
    return-void
.end method

.method final D()V
    .locals 5

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 162
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 163
    return-void
.end method

.method public final E()Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final F()V
    .locals 7

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_0
    const v0, 0x7f0e050a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const v0, 0x7f0e050c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/l;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    const-string v1, "0.00(0.00%)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5298
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->d:Z

    if-nez v0, :cond_1

    .line 4286
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_fund_income"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4287
    if-nez v1, :cond_3

    .line 4288
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->f:Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 4290
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/l;->G()V

    .line 5294
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->a:Z

    if-eqz v0, :cond_1

    .line 5297
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5300
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    if-eqz v0, :cond_4

    .line 5301
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 5302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    .line 5304
    :cond_4
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/trade/c/l$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/l$2;-><init>(Lcom/xueqiu/android/trade/c/l;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f030148

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 80
    const-string v1, "args_is_visible"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/trade/c/l;->a:Z

    .line 81
    const-string v1, "args_trade_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 82
    return-void
.end method

.method public final c_(Z)V
    .locals 1

    .prologue
    .line 411
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->al:Z

    .line 412
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 93
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->al:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->u()V

    .line 96
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->C()V

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->D()V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->F()V

    .line 101
    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x4b0

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 371
    :pswitch_1
    const-string v0, "/broker/bind-list"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "/broker/open/DYZQ"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xc

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 378
    :cond_1
    const-string v0, "/broker/open/PINGAN"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xb

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 383
    :pswitch_3
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setCurrentJumpAccountTid(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    const-string v1, "trade_tag"

    .line 7519
    const-string v2, "trade_tag"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "trends_tag"

    .line 7520
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "public_timeline_tag"

    .line 7521
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "quotes_center_tag"

    .line 7522
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "portfolio_tag"

    .line 7523
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7524
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 8092
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 390
    invoke-static {v0}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 9064
    iget-object v1, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 391
    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/trade/c/l;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto/16 :goto_0

    .line 395
    :pswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 9092
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 397
    invoke-static {v0}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l;->ak:Lcom/xueqiu/android/base/a/a;

    .line 10064
    iget-object v1, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/trade/c/l;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x7f0e0507
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->p()V

    .line 327
    return-void
.end method

.method final u()V
    .locals 8

    .prologue
    const v7, 0x7f0e050c

    const v6, 0x7f0e050b

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v2, 0x7f0e050d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v3, 0x7f0e050f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e0510

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    const v1, 0x7f0e0507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/l;->d:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_1
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

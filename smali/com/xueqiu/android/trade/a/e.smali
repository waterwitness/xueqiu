.class public final Lcom/xueqiu/android/trade/a/e;
.super Landroid/widget/BaseAdapter;
.source "TradeHistoryTransactionListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/e;->a:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/e;->c:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/Transaction;

    .line 52
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/Transaction;->getCtimestamp()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/Transaction;->getCtimestamp()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/xueqiu/android/base/util/h;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    new-instance v1, Lcom/xueqiu/android/trade/a/f;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/f;-><init>()V

    .line 54
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/Transaction;->getCtimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->c(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xueqiu/android/trade/a/f;->b:Ljava/lang/String;

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    new-instance v1, Lcom/xueqiu/android/trade/a/f;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/f;-><init>()V

    .line 60
    iput-object v0, v1, Lcom/xueqiu/android/trade/a/f;->a:Lcom/xueqiu/android/trade/model/Transaction;

    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/f;

    iget-object v0, v0, Lcom/xueqiu/android/trade/a/f;->a:Lcom/xueqiu/android/trade/model/Transaction;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/f;

    .line 88
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/e;->getItemViewType(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xueqiu/android/trade/a/e;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301ec

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    :cond_0
    const v1, 0x7f0e06cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    iget-object v0, v0, Lcom/xueqiu/android/trade/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-object p2

    .line 96
    :cond_1
    if-nez p2, :cond_2

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301eb

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v0, Lcom/xueqiu/android/trade/a/g;

    invoke-direct {v0, p2}, Lcom/xueqiu/android/trade/a/g;-><init>(Landroid/view/View;)V

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/f;

    iget-object v2, v0, Lcom/xueqiu/android/trade/a/f;->a:Lcom/xueqiu/android/trade/model/Transaction;

    .line 106
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getSname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getTradeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string v4, "BUY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1139
    const-string v0, "\u4e70\u5165"

    .line 108
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_3
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->c:Landroid/widget/TextView;

    const-string v3, "%.2f"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getCprice()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getCamount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getBusinessBalance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getCtime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/trade/a/e;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->h:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_4
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/e;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    .line 127
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->i:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->j:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/g;

    move-object v1, v0

    goto/16 :goto_1

    .line 1141
    :cond_3
    const-string v4, "SELL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1142
    const-string v0, "\u5356\u51fa"

    goto :goto_2

    .line 1144
    :cond_4
    const-string v4, "SELL_SHORT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1145
    const-string v0, "\u5356\u7a7a"

    goto :goto_2

    .line 1147
    :cond_5
    const-string v4, "BUY_COVER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1148
    const-string v0, "\u8865\u56de"

    goto/16 :goto_2

    .line 1150
    :cond_6
    const-string v0, ""

    goto/16 :goto_2

    .line 110
    :cond_7
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getTradeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 122
    :cond_8
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/Transaction;->getCtime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 130
    :cond_9
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/g;->j:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x2

    return v0
.end method

.method public final refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/e;->d:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/e;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.class public final Lcom/xueqiu/android/trade/a/h;
.super Landroid/widget/BaseAdapter;
.source "TradeHistoryTrustDeedListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TrustDeed;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/trade/a/i;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/h;->c:Landroid/content/Context;

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    const-string v1, "BUY"

    const-string v2, "\u4e70\u5165"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    const-string v1, "SELL"

    const-string v2, "\u5356\u51fa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    const-string v1, "SELL_SHORT"

    const-string v2, "\u5356\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    const-string v1, "BUY_COVER"

    const-string v2, "\u8865\u56de"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010120

    aput v1, v0, v3

    .line 2043
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2044
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2045
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    iput v1, p0, Lcom/xueqiu/android/trade/a/h;->e:I

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/a/h;)Lcom/xueqiu/android/trade/a/i;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->b:Lcom/xueqiu/android/trade/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/a/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f0d001a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ed

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/xueqiu/android/trade/a/j;

    invoke-direct {v0, p2}, Lcom/xueqiu/android/trade/a/j;-><init>(Landroid/view/View;)V

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TrustDeed;

    .line 96
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getSname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOtimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 98
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->b:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_1
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getCprice()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOprop()Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 104
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOprop()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->c:Landroid/widget/TextView;

    const-string v3, "\u5e02\u4ef7"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_2
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getCamount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOstatusName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOstatusColor()Ljava/lang/String;

    move-result-object v1

    const-string v3, "blue"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    iget-object v3, v2, Lcom/xueqiu/android/trade/a/j;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/a/h;->c:Landroid/content/Context;

    .line 2364
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2365
    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 3031
    invoke-virtual {v1, v10}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 115
    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_4
    iget-object v3, v2, Lcom/xueqiu/android/trade/a/j;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/a/h;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->isRevokeable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->i:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/trade/a/h$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/a/h$1;-><init>(Lcom/xueqiu/android/trade/a/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/h;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    .line 136
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->j:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->k:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_5
    return-object p2

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/j;

    move-object v2, v0

    goto/16 :goto_0

    .line 100
    :cond_1
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOtimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 107
    :cond_2
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->c:Landroid/widget/TextView;

    const-string v3, "%.3f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TrustDeed;->getPrice()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2368
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    .line 117
    :cond_4
    iget-object v1, v2, Lcom/xueqiu/android/trade/a/j;->g:Landroid/widget/TextView;

    iget v3, p0, Lcom/xueqiu/android/trade/a/h;->e:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 139
    :cond_5
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->j:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, v2, Lcom/xueqiu/android/trade/a/j;->k:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public final refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TrustDeed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/h;->notifyDataSetChanged()V

    goto :goto_0
.end method

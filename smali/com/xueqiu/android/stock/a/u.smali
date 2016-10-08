.class public final Lcom/xueqiu/android/stock/a/u;
.super Lcom/xueqiu/android/common/a/h;
.source "QuoteRankListAdapter.java"


# instance fields
.field public d:Lcom/xueqiu/android/base/util/ar;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/common/a/h;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/u;->d:Lcom/xueqiu/android/base/util/ar;

    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/a/u;->a()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/u;->h:Landroid/util/SparseArray;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/u;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2369
    sparse-switch p1, :sswitch_data_0

    .line 2392
    const-string v0, ""

    .line 2390
    :goto_0
    return-object v0

    .line 2376
    :sswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    const v1, 0x7f070226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2381
    :sswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    const v1, 0x7f070225

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2390
    :sswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    const v1, 0x7f070227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2369
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0xb4 -> :sswitch_2
        0xbe -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/a/u;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    const v3, 0x7f070570

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/u;->g:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockRank;",
            ">;",
            "Lcom/xueqiu/android/stock/m;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->h:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/a/u;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 259
    if-nez p2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301bf

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2339
    new-instance v1, Lcom/xueqiu/android/stock/a/v;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/v;-><init>()V

    .line 2340
    const v0, 0x7f0e0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    .line 261
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getSectionForPosition(I)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/a/v;

    .line 268
    iget-object v4, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 272
    instance-of v5, v0, Lcom/xueqiu/android/stock/model/StockRank;

    if-eqz v5, :cond_1

    .line 273
    check-cast v0, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockRank;->getRankType()I

    move-result v0

    .line 274
    const/16 v4, 0x33

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_3

    :cond_2
    move v0, v3

    .line 278
    :goto_0
    if-eqz v0, :cond_4

    .line 279
    iget-object v0, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    iget-object v0, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_1
    return-object p2

    :cond_3
    move v0, v2

    .line 274
    goto :goto_0

    .line 282
    :cond_4
    iget-object v0, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 283
    iget-object v0, v1, Lcom/xueqiu/android/stock/a/v;->a:Landroid/widget/TextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .prologue
    const/16 v3, 0x49

    const/16 v2, 0x2c

    .line 290
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getSectionForPosition(I)I

    move-result v0

    .line 291
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->c:Ljava/util/List;

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 293
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/m;

    .line 294
    iget v1, v0, Lcom/xueqiu/android/stock/m;->g:I

    if-ne v1, v3, :cond_0

    .line 295
    const/4 v0, 0x3

    .line 308
    :goto_0
    return v0

    .line 296
    :cond_0
    iget v0, v0, Lcom/xueqiu/android/stock/m;->g:I

    if-ne v0, v2, :cond_1

    .line 297
    const/4 v0, 0x5

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockRank;->getRankType()I

    move-result v0

    .line 303
    if-ne v0, v3, :cond_3

    .line 304
    const/4 v0, 0x2

    goto :goto_0

    .line 305
    :cond_3
    if-ne v0, v2, :cond_4

    .line 306
    const/4 v0, 0x4

    goto :goto_0

    .line 308
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItemViewType(I)I

    move-result v5

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    if-ne v5, v3, :cond_8

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c7

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1353
    invoke-static {p2, v4}, Lcom/xueqiu/android/stock/a/w;->a(Landroid/view/View;Z)Lcom/xueqiu/android/stock/a/w;

    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    :cond_1
    :goto_0
    if-eq v5, v3, :cond_2

    if-eq v5, v8, :cond_2

    const/4 v0, 0x5

    if-ne v5, v0, :cond_d

    .line 123
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/w;

    .line 125
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/m;

    .line 126
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    const v6, 0x7f070055

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const v6, 0x7f070053

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 133
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 134
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/w;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_4
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/w;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/w;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/xueqiu/android/stock/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/w;->c:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/xueqiu/android/stock/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/w;->d:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/xueqiu/android/stock/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    if-ne v5, v8, :cond_5

    .line 141
    iget-object v5, v0, Lcom/xueqiu/android/stock/a/w;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/stock/m;

    iget-object v3, v3, Lcom/xueqiu/android/stock/m;->f:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_5
    if-eqz v4, :cond_6

    .line 145
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/w;->a:Landroid/widget/TextView;

    new-instance v3, Lcom/xueqiu/android/stock/a/u$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/xueqiu/android/stock/a/u$1;-><init>(Lcom/xueqiu/android/stock/a/u;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->h:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockRank;

    .line 216
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getRankType()I

    move-result v1

    .line 218
    new-instance v2, Lcom/xueqiu/android/stock/a/u$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/xueqiu/android/stock/a/u$2;-><init>(Lcom/xueqiu/android/stock/a/u;IILjava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_7
    return-object p2

    .line 101
    :cond_8
    if-ne v5, v8, :cond_9

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c1

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    invoke-static {p2, v3}, Lcom/xueqiu/android/stock/a/w;->a(Landroid/view/View;Z)Lcom/xueqiu/android/stock/a/w;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :cond_9
    const/4 v0, 0x5

    if-ne v5, v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301be

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    invoke-static {p2, v3}, Lcom/xueqiu/android/stock/a/w;->a(Landroid/view/View;Z)Lcom/xueqiu/android/stock/a/w;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 107
    :cond_a
    if-ne v5, v2, :cond_b

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c0

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/g;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_b
    const/4 v0, 0x4

    if-ne v5, v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301bd

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 112
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/c;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 114
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c6

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/ag;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/ag;

    move-result-object v0

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 198
    :cond_d
    if-ne v5, v2, :cond_e

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/g;

    .line 200
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockRank;

    .line 201
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getAhStockQuote()Lcom/xueqiu/android/stock/model/AHStockQuote;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/a/f;->a(Lcom/xueqiu/android/stock/model/AHStockQuote;Lcom/xueqiu/android/stock/a/g;)V

    goto/16 :goto_2

    .line 202
    :cond_e
    const/4 v0, 0x4

    if-ne v5, v0, :cond_f

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/c;

    .line 204
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockRank;

    .line 205
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getPortFolio()Lcom/xueqiu/android/stock/model/OldPortFolio;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/a/b;->a(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/a/c;)V

    goto/16 :goto_2

    .line 207
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/a/ag;

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xueqiu/android/stock/model/StockRank;

    .line 209
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getPortFolio()Lcom/xueqiu/android/stock/model/OldPortFolio;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getRankType()I

    move-result v1

    iget-object v3, p0, Lcom/xueqiu/android/stock/a/u;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/u;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/stock/a/u;->d:Lcom/xueqiu/android/base/util/ar;

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/stock/a/af;->a(Lcom/xueqiu/android/stock/model/OldPortFolio;ILcom/xueqiu/android/stock/a/ag;Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/util/ar;)V

    goto/16 :goto_2

    :cond_10
    move v4, v3

    goto/16 :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x6

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/u;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

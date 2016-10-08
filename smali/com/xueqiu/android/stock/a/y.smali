.class public final Lcom/xueqiu/android/stock/a/y;
.super Lcom/xueqiu/android/tactic/a/c;
.source "QuotesRecyclerAdapter.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/xueqiu/android/tactic/a/c;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/xueqiu/android/stock/a/y;->f:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/y;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/y;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/xueqiu/android/stock/a/z;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/y;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030193

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/z;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/support/v7/widget/ao;I)V
    .locals 10

    .prologue
    .line 43
    check-cast p1, Lcom/xueqiu/android/stock/a/z;

    .line 1051
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/y;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/g;

    .line 1052
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 1199
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    .line 1052
    iget-object v3, p1, Lcom/xueqiu/android/stock/a/z;->k:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/y;->e:Lcom/d/a/b/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 1053
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/z;->l:Landroid/widget/TextView;

    .line 1247
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 1053
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%+.2f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1319
    iget-wide v6, v0, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 1054
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    iget-object v2, p1, Lcom/xueqiu/android/stock/a/z;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/z;->m:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    .line 2319
    iget-wide v4, v0, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 1056
    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/z;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/stock/a/y$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/a/y$1;-><init>(Lcom/xueqiu/android/stock/a/y;Lcom/xueqiu/android/tactic/d/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

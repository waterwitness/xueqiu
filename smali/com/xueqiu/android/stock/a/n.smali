.class public final Lcom/xueqiu/android/stock/a/n;
.super Landroid/widget/BaseAdapter;
.source "PortfolioGroupAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/stock/a/o;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/n;)Lcom/xueqiu/android/stock/a/o;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n;->b:Lcom/xueqiu/android/stock/a/o;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 107
    iget-object v3, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 115
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    if-lez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bf

    .line 56
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/xueqiu/android/stock/a/p;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/a/p;-><init>(Lcom/xueqiu/android/stock/a/n;)V

    .line 58
    const v0, 0x7f0e030c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/p;->a:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0e030b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/p;->b:Landroid/widget/CheckBox;

    .line 60
    const v0, 0x7f0e00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/p;->c:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_0
    new-instance v0, Lcom/xueqiu/android/stock/a/n$1;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/stock/a/n$1;-><init>(Lcom/xueqiu/android/stock/a/n;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/p;

    .line 74
    if-lez p1, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 76
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/p;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/p;->b:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/p;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 86
    :goto_1
    return-object p2

    :cond_1
    move v1, v2

    .line 77
    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/p;->a:Landroid/widget/TextView;

    const v3, 0x7f0700ca

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/p;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

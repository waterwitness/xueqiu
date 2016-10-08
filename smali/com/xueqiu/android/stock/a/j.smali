.class public final Lcom/xueqiu/android/stock/a/j;
.super Lcom/xueqiu/android/common/a/d;
.source "LHBListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/F10Table;",
        ">;>;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/j;->f:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/j;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/j;->e:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/j;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03018a

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 33
    new-instance v0, Lcom/xueqiu/android/stock/a/k;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/k;-><init>(Lcom/xueqiu/android/stock/a/j;)V

    .line 1044
    new-instance v3, Lcom/xueqiu/android/stock/a/k;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/k;->c:Lcom/xueqiu/android/stock/a/j;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/a/k;-><init>(Lcom/xueqiu/android/stock/a/j;)V

    .line 1045
    const v0, 0x7f0e0469

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/xueqiu/android/stock/a/k;->a:Landroid/widget/TextView;

    .line 1046
    const v0, 0x7f0e046e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lcom/xueqiu/android/stock/a/k;->b:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1052
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1056
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/F10Table;

    .line 1057
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/F10Table;

    .line 1059
    iget-object v4, v3, Lcom/xueqiu/android/stock/a/k;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/F10Table;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v4, v3, Lcom/xueqiu/android/stock/a/k;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1062
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/stock/a/k;->a(Lcom/xueqiu/android/stock/model/F10Table;)V

    .line 1063
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/a/k;->a(Lcom/xueqiu/android/stock/model/F10Table;)V

    .line 36
    :cond_0
    return-object v2
.end method

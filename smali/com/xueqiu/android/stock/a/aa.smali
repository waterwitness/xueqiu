.class public final Lcom/xueqiu/android/stock/a/aa;
.super Lcom/xueqiu/android/tactic/a/c;
.source "QuotesTopicRecyclerAdapter.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xueqiu/android/tactic/a/c;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/aa;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/xueqiu/android/stock/a/ab;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/aa;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030194

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/ab;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/support/v7/widget/ao;I)V
    .locals 5

    .prologue
    .line 44
    check-cast p1, Lcom/xueqiu/android/stock/a/ab;

    .line 6053
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/aa;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/c;

    .line 6054
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 7038
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/c;->c:Ljava/lang/String;

    .line 6054
    iget-object v3, p1, Lcom/xueqiu/android/stock/a/ab;->k:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/aa;->e:Lcom/d/a/b/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 8022
    iget v1, v0, Lcom/xueqiu/android/tactic/d/c;->a:I

    .line 6055
    if-nez v1, :cond_0

    .line 6056
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ab;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6061
    :goto_0
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ab;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/stock/a/aa$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/a/aa$1;-><init>(Lcom/xueqiu/android/stock/a/aa;Lcom/xueqiu/android/tactic/d/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 6058
    :cond_0
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ab;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6059
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ab;->l:Landroid/widget/TextView;

    .line 8030
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/c;->b:Ljava/lang/String;

    .line 6059
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/aa;->f:Ljava/util/List;

    .line 5338
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 35
    return-void
.end method

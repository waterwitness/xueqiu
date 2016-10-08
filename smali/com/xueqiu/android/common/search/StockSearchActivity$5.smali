.class final Lcom/xueqiu/android/common/search/StockSearchActivity$5;
.super Ljava/lang/Object;
.source "StockSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/StockSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/StockSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->b(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const v2, 0x7f0e013e

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const v2, 0x7f0e0140

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 134
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->c(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->c(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->d(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->d(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->c(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->e(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/b;->notifyDataSetChanged()V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const v2, 0x7f0e013e

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const v2, 0x7f0e0140

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$5;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->b(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

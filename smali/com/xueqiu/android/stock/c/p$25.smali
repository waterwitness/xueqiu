.class final Lcom/xueqiu/android/stock/c/p$25;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->d(Lcom/xueqiu/android/stock/c/p;)Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getHeaderViewsCount()I

    move-result v0

    .line 347
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sub-int v1, p3, v0

    if-gez v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v5

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/a/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 353
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    const v4, 0x7f0704dc

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/stock/c/p;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    const v3, 0x7f0704df

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/stock/c/p;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 355
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/xueqiu/android/stock/c/p$25$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/stock/c/p$25$1;-><init>(Lcom/xueqiu/android/stock/c/p$25;Lcom/xueqiu/android/stock/model/PortfolioStock;)V

    .line 356
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

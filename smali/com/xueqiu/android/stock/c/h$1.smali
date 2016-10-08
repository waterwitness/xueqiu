.class final Lcom/xueqiu/android/stock/c/h$1;
.super Ljava/lang/Object;
.source "IndustryListItemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/h;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/h$1;->a:Lcom/xueqiu/android/stock/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h$1;->a:Lcom/xueqiu/android/stock/c/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/h;->b(Lcom/xueqiu/android/stock/c/h;)Lcom/xueqiu/android/stock/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/h$1;->a:Lcom/xueqiu/android/stock/c/h;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/h;->a(Lcom/xueqiu/android/stock/c/h;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/IndustryInStock;

    .line 85
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/h$1;->a:Lcom/xueqiu/android/stock/c/h;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/h;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v2, "extra_rank_type"

    const/16 v3, 0x3d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v2, "extra_industry"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/h$1;->a:Lcom/xueqiu/android/stock/c/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/h;->a(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

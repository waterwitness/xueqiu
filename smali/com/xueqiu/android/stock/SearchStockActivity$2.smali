.class final Lcom/xueqiu/android/stock/SearchStockActivity$2;
.super Ljava/lang/Object;
.source "SearchStockActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/SearchStockActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a/f;

.field final synthetic b:Lcom/xueqiu/android/stock/SearchStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/common/a/f;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/stock/SearchStockActivity$2;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/SearchStockActivity$2;->a:Lcom/xueqiu/android/common/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$2;->a:Lcom/xueqiu/android/common/a/f;

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/common/a/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v2, "extra_stock"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$2;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/stock/SearchStockActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$2;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->finish()V

    .line 81
    return-void
.end method

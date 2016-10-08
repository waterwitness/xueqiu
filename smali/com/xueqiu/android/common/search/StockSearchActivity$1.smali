.class final Lcom/xueqiu/android/common/search/StockSearchActivity$1;
.super Ljava/lang/Object;
.source "StockSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$1;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$1;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/common/search/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$1;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V

    .line 114
    return-void
.end method

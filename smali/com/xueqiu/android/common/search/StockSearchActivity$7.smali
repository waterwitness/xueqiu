.class final Lcom/xueqiu/android/common/search/StockSearchActivity$7;
.super Ljava/lang/Object;
.source "StockSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$7;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$7;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->g(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$7;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/common/search/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$7;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->d(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$7;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/common/search/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/b;->notifyDataSetChanged()V

    .line 182
    :cond_0
    return-void
.end method

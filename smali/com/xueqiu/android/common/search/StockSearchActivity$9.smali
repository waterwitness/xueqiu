.class final Lcom/xueqiu/android/common/search/StockSearchActivity$9;
.super Ljava/lang/Object;
.source "StockSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 201
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$9;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const v1, 0x7f0e013b

    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$9;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$9;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->i(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$9;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/common/search/StockSearchActivity$6;
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
    .line 159
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$6;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$6;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->finish()V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$6;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->f(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/base/h5/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$6;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const v1, 0x7f04000a

    const v2, 0x7f04000b

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/search/StockSearchActivity;->overridePendingTransition(II)V

    .line 166
    :cond_0
    return-void
.end method

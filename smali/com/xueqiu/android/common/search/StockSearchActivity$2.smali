.class final Lcom/xueqiu/android/common/search/StockSearchActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "StockSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/StockSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/search/StockSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$2;->b:Lcom/xueqiu/android/common/search/StockSearchActivity;

    iput-object p3, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$2;->b:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 317
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 307
    check-cast p1, Ljava/util/ArrayList;

    .line 1311
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$2;->b:Lcom/xueqiu/android/common/search/StockSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 307
    return-void
.end method

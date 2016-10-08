.class final Lcom/xueqiu/android/stock/SearchStockActivity$7;
.super Lcom/xueqiu/android/base/b/p;
.source "SearchStockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/SearchStockActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/SearchStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xueqiu/android/stock/SearchStockActivity$7;->a:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$7;->a:Lcom/xueqiu/android/stock/SearchStockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Lcom/xueqiu/android/stock/SearchStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 193
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 183
    check-cast p1, Ljava/util/ArrayList;

    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$7;->a:Lcom/xueqiu/android/stock/SearchStockActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Lcom/xueqiu/android/stock/SearchStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 183
    return-void
.end method

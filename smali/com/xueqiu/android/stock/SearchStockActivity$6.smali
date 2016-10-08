.class final Lcom/xueqiu/android/stock/SearchStockActivity$6;
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
.field final synthetic a:Lcom/xueqiu/android/common/a/f;

.field final synthetic b:Lcom/xueqiu/android/stock/SearchStockActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/common/a/f;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/stock/SearchStockActivity$6;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    iput-object p3, p0, Lcom/xueqiu/android/stock/SearchStockActivity$6;->a:Lcom/xueqiu/android/common/a/f;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 148
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$6;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->b(Lcom/xueqiu/android/stock/SearchStockActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1154
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$6;->a:Lcom/xueqiu/android/common/a/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/f;->notifyDataSetChanged()V

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity$6;->b:Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->i()V

    .line 145
    return-void
.end method

.class final Lcom/xueqiu/android/stock/e$1;
.super Lcom/xueqiu/android/base/b/p;
.source "FundRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/FundType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/e;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 80
    check-cast p1, Ljava/util/List;

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/e;->a(Lcom/xueqiu/android/stock/e;Ljava/util/List;)Ljava/util/List;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->a(Lcom/xueqiu/android/stock/e;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->b(Lcom/xueqiu/android/stock/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->b(Lcom/xueqiu/android/stock/e;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$1;->a:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->c(Lcom/xueqiu/android/stock/e;)V

    .line 80
    return-void
.end method

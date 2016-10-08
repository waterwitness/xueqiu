.class final Lcom/xueqiu/android/stock/d/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/d/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    iput-object p3, p0, Lcom/xueqiu/android/stock/d/a$1;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 115
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 111
    check-cast p1, Ljava/util/Map;

    .line 1120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1122
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iput-object v1, v0, Lcom/xueqiu/android/stock/d/a;->g:Ljava/util/ArrayList;

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    .line 3057
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 1127
    if-nez v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1128
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    .line 5057
    iget-object v1, v1, Lcom/xueqiu/android/stock/d/a;->g:Ljava/util/ArrayList;

    .line 1128
    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;)V

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$1;->b:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 111
    return-void
.end method

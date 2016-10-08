.class final Lcom/xueqiu/android/stock/d/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/IndustryInStock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 142
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 138
    check-cast p1, Ljava/util/ArrayList;

    .line 1147
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iput-object p1, v0, Lcom/xueqiu/android/stock/d/a;->h:Ljava/util/ArrayList;

    .line 1150
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    .line 3057
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 1150
    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1151
    invoke-interface {v0, p1}, Lcom/xueqiu/android/stock/b/c;->b(Ljava/util/ArrayList;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$2;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 138
    :cond_1
    return-void
.end method

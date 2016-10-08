.class final Lcom/xueqiu/android/stock/d/a$3;
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
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/tactic/d/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 166
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 168
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 163
    check-cast p1, Ljava/util/List;

    .line 1172
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iput-object p1, v0, Lcom/xueqiu/android/stock/d/a;->i:Ljava/util/List;

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    .line 3057
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 1175
    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1176
    invoke-interface {v0, p1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/List;)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$3;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 163
    :cond_1
    return-void
.end method

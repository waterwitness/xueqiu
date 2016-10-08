.class final Lcom/xueqiu/android/stock/c/aa$1;
.super Lcom/xueqiu/android/base/b/p;
.source "USETFRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/aa;->u()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/c/aa;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/aa;Lcom/xueqiu/android/base/b/q;I)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    iput p3, p0, Lcom/xueqiu/android/stock/c/aa$1;->a:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->a(Lcom/xueqiu/android/stock/c/aa;)I

    .line 109
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->b(Lcom/xueqiu/android/stock/c/aa;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/aa;->c(Lcom/xueqiu/android/stock/c/aa;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->d(Lcom/xueqiu/android/stock/c/aa;)V

    .line 113
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 105
    check-cast p1, Ljava/util/ArrayList;

    .line 1117
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->a(Lcom/xueqiu/android/stock/c/aa;)I

    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->e(Lcom/xueqiu/android/stock/c/aa;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/aa$1;->a:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->b(Lcom/xueqiu/android/stock/c/aa;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/aa;->c(Lcom/xueqiu/android/stock/c/aa;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa$1;->b:Lcom/xueqiu/android/stock/c/aa;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->d(Lcom/xueqiu/android/stock/c/aa;)V

    .line 105
    :cond_0
    return-void
.end method

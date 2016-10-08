.class final Lcom/xueqiu/android/community/c/k$1;
.super Ljava/lang/Object;
.source "OptionFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/stock/model/StockOption;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/xueqiu/android/community/c/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/k;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/community/c/k$1;->b:Lcom/xueqiu/android/community/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$1;->b:Lcom/xueqiu/android/community/c/k;

    iget v1, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/community/c/k;->a(Lcom/xueqiu/android/community/c/k;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    if-nez p3, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$1;->b:Lcom/xueqiu/android/community/c/k;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/k;->a(Lcom/xueqiu/android/community/c/k;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$1;->b:Lcom/xueqiu/android/community/c/k;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/k;->a(Lcom/xueqiu/android/community/c/k;Ljava/util/ArrayList;)V

    .line 109
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$1;->b:Lcom/xueqiu/android/community/c/k;

    iget v1, p0, Lcom/xueqiu/android/community/c/k$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/community/c/k;->a(Lcom/xueqiu/android/community/c/k;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

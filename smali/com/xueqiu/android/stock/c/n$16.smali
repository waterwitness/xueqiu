.class final Lcom/xueqiu/android/stock/c/n$16;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->M()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a;

.field final synthetic b:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;Lrx/a;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$16;->b:Lcom/xueqiu/android/stock/c/n;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/n$16;->a:Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 762
    check-cast p1, Ljava/lang/Throwable;

    .line 1765
    const-string v0, "PortfolioFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "othersBySocket failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$16;->a:Lrx/a;

    new-instance v1, Lcom/xueqiu/android/stock/c/n$16$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$16$1;-><init>(Lcom/xueqiu/android/stock/c/n$16;)V

    new-instance v2, Lcom/xueqiu/android/stock/c/n$16$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$16$2;-><init>(Lcom/xueqiu/android/stock/c/n$16;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 762
    return-void
.end method

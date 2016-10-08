.class final Lcom/xueqiu/android/stock/c/n$16$1;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n$16;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n$16;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n$16;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$16$1;->a:Lcom/xueqiu/android/stock/c/n$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 766
    check-cast p1, Ljava/util/Map;

    .line 1769
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$16$1;->a:Lcom/xueqiu/android/stock/c/n$16;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/n$16;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->p(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/Map;)V

    .line 766
    return-void
.end method

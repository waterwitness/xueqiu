.class final Lcom/xueqiu/android/stock/c/n$15;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$15;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 757
    check-cast p1, Ljava/util/Map;

    .line 1760
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$15;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->p(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/Map;)V

    .line 757
    return-void
.end method

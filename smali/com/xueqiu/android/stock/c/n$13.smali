.class final Lcom/xueqiu/android/stock/c/n$13;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->M()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lrx/a",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$13;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    check-cast p1, Ljava/util/List;

    .line 1747
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$13;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/c/n;->c(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)Lrx/a;

    move-result-object v0

    .line 744
    return-object v0
.end method

.class final Lcom/xueqiu/android/stock/c/t$7;
.super Lcom/xueqiu/android/base/b/p;
.source "QuoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/c/a;

.field final synthetic b:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$7;->b:Lcom/xueqiu/android/stock/c/t;

    iput-object p3, p0, Lcom/xueqiu/android/stock/c/t$7;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$7;->a:Lcom/xueqiu/android/stockchart/c/a;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$7;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/c/a;->a(Ljava/lang/Exception;)V

    .line 706
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 700
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1710
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$7;->a:Lcom/xueqiu/android/stockchart/c/a;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$7;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/c/a;->a(Ljava/lang/Object;)V

    .line 700
    :cond_0
    return-void
.end method

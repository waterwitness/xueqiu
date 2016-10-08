.class final Lcom/xueqiu/android/stock/c/t$6;
.super Lcom/xueqiu/android/base/b/p;
.source "QuoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
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
    .line 678
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$6;->b:Lcom/xueqiu/android/stock/c/t;

    iput-object p3, p0, Lcom/xueqiu/android/stock/c/t$6;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$6;->a:Lcom/xueqiu/android/stockchart/c/a;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$6;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/c/a;->a(Ljava/lang/Exception;)V

    .line 684
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 678
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1688
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$6;->a:Lcom/xueqiu/android/stockchart/c/a;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$6;->a:Lcom/xueqiu/android/stockchart/c/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/c/a;->a(Ljava/lang/Object;)V

    .line 678
    :cond_0
    return-void
.end method

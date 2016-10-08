.class final Lcom/xueqiu/android/trade/d/a$3;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeFee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;DD)V
    .locals 1

    .prologue
    .line 894
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$3;->c:Lcom/xueqiu/android/trade/d/a;

    iput-wide p3, p0, Lcom/xueqiu/android/trade/d/a$3;->a:D

    iput-wide p5, p0, Lcom/xueqiu/android/trade/d/a$3;->b:D

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 8

    .prologue
    .line 903
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$3;->c:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$3;->c:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 903
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a$3;->a:D

    iget-wide v6, p0, Lcom/xueqiu/android/trade/d/a$3;->b:D

    invoke-static/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;DDD)V

    .line 904
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 894
    check-cast p1, Lcom/xueqiu/android/trade/model/TradeFee;

    .line 1898
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$3;->c:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$3;->c:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1898
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeFee;->getCalculateAmount()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/trade/d/a$3;->a:D

    iget-wide v6, p0, Lcom/xueqiu/android/trade/d/a$3;->b:D

    invoke-static/range {v0 .. v7}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;DDD)V

    .line 894
    return-void
.end method

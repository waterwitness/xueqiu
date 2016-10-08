.class final Lcom/xueqiu/android/trade/c/s$10;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeItemAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

.field final synthetic b:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$10;->b:Lcom/xueqiu/android/trade/c/s;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 875
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 876
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 872
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1880
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    const-string v1, "opening_url"

    .line 2110
    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1880
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setOpeningUrl(Ljava/lang/String;)V

    .line 1881
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    const-string v1, "status_msg"

    .line 3110
    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1881
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setStatusMsg(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    const-string v1, "status_name"

    .line 4110
    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1882
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setStatusName(Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    const-string v1, "status_title"

    .line 5110
    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1883
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setStatusTitle(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    const-string v1, "status"

    sget-object v2, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->UNDONE:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->safeValueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setStatus(Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V

    .line 1885
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$10;->b:Lcom/xueqiu/android/trade/c/s;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$10;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    .line 872
    return-void
.end method

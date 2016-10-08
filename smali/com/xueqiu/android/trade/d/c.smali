.class final Lcom/xueqiu/android/trade/d/c;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;

.field private b:D

.field private c:D

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/d/a;DD)V
    .locals 2

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1229
    iput-wide p2, p0, Lcom/xueqiu/android/trade/d/c;->b:D

    .line 1230
    iput-wide p4, p0, Lcom/xueqiu/android/trade/d/c;->c:D

    .line 1231
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/d/c;->f:I

    .line 1232
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput-object p2, p0, Lcom/xueqiu/android/trade/d/c;->d:Ljava/lang/String;

    .line 1236
    iput-object p3, p0, Lcom/xueqiu/android/trade/d/c;->e:Ljava/util/Map;

    .line 1237
    const-string v0, "tid"

    .line 2069
    iget-object v1, p1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1237
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/trade/d/c;->f:I

    .line 1239
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/c;Z)V
    .locals 14

    .prologue
    .line 2242
    if-eqz p1, :cond_1

    .line 2243
    iget v0, p0, Lcom/xueqiu/android/trade/d/c;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/c;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 2248
    :goto_0
    return-void

    .line 3069
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2246
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2246
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v12

    .line 2247
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2247
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2247
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 2247
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v5, v0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 2247
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v6, v0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 2247
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v7, v0, Lcom/xueqiu/android/trade/d/a;->s:Ljava/lang/String;

    .line 2247
    iget-wide v8, p0, Lcom/xueqiu/android/trade/d/c;->b:D

    iget-wide v10, p0, Lcom/xueqiu/android/trade/d/c;->c:D

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-object v13, v0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 2247
    invoke-virtual/range {v1 .. v13}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/c;->a:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2250
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

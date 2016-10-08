.class final Lcom/xueqiu/android/trade/d/a$20;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 403
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1411
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    const-string v3, "bp1"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/j;->a(Lcom/google/gson/JsonElement;)D

    move-result-wide v4

    .line 2069
    iput-wide v4, v2, Lcom/xueqiu/android/trade/d/a;->o:D

    .line 1412
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    const-string v3, "sp1"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/j;->a(Lcom/google/gson/JsonElement;)D

    move-result-wide v4

    .line 3069
    iput-wide v4, v2, Lcom/xueqiu/android/trade/d/a;->n:D

    .line 1413
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    const-string v3, "current"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/j;->a(Lcom/google/gson/JsonElement;)D

    move-result-wide v4

    .line 4069
    iput-wide v4, v2, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 1414
    const-string v2, "BUY"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 1414
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1415
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-wide v2, v2, Lcom/xueqiu/android/trade/d/a;->n:D

    .line 1415
    cmpl-double v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-wide v0, v0, Lcom/xueqiu/android/trade/d/a;->m:D

    :goto_0
    move-wide v6, v0

    .line 1419
    :goto_1
    const-string v0, "LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 13069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 1419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTER_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 14069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 1419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRE_LMT"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 15069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 1419
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 16069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1419
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 17069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1420
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/String;)V

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 18069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1422
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 19069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 1422
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 20069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1422
    if-eqz v0, :cond_2

    .line 1423
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 21069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1423
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 22069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1423
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 23069
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1423
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 24069
    iget-object v4, v4, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 1423
    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 25069
    iget-object v5, v5, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 1423
    iget-object v8, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 26069
    iget-object v8, v8, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 1423
    invoke-static/range {v0 .. v8}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 403
    :cond_2
    return-void

    .line 1415
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-wide v0, v0, Lcom/xueqiu/android/trade/d/a;->n:D

    goto :goto_0

    .line 1416
    :cond_4
    const-string v2, "SELL"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 1416
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1417
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-wide v2, v2, Lcom/xueqiu/android/trade/d/a;->o:D

    .line 1417
    cmpl-double v0, v2, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-wide v0, v0, Lcom/xueqiu/android/trade/d/a;->m:D

    :goto_2
    move-wide v6, v0

    .line 1417
    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$20;->a:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-wide v0, v0, Lcom/xueqiu/android/trade/d/a;->o:D

    goto :goto_2

    :cond_6
    move-wide v6, v0

    goto/16 :goto_1
.end method

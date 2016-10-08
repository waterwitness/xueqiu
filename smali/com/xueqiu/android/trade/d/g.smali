.class public final Lcom/xueqiu/android/trade/d/g;
.super Ljava/lang/Object;
.source "TradeHistoryPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/k;


# instance fields
.field a:Lcom/xueqiu/android/trade/b/l;

.field b:Lcom/xueqiu/android/trade/model/TradeAccount;

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/b/l;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/trade/d/g;->f:I

    .line 54
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 55
    iput-object p2, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/g;Lcom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 4

    .prologue
    .line 38
    .line 7190
    const/4 v0, 0x0

    .line 7191
    const-string v1, "60000"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7192
    const/4 v0, 0x1

    .line 7208
    const-string v1, "msg"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7209
    new-instance v1, Lcom/xueqiu/android/base/a/a;

    invoke-direct {v1}, Lcom/xueqiu/android/base/a/a;-><init>()V

    .line 7210
    const-string v2, "result_code"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8068
    iput-object v2, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 7211
    const-string v2, "msg"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8076
    iput-object v2, v1, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 7212
    const-string v2, "result_data"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "result_data"

    .line 7213
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7214
    const-string v2, "result_data"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 8096
    iput-object v2, v1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 7194
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 7195
    invoke-static {p2}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9092
    iget-object v2, v1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 7196
    invoke-static {v2}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    .line 7197
    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ILjava/lang/Object;)V

    .line 38
    :cond_1
    :goto_1
    return v0

    .line 7218
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 10072
    :cond_3
    iget-object v1, v1, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 7199
    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method final a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 270
    .line 5064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v2, Lcom/xueqiu/android/trade/d/g$5;

    invoke-direct {v2, p0, p3, p4}, Lcom/xueqiu/android/trade/d/g$5;-><init>(Lcom/xueqiu/android/trade/d/g;ILjava/lang/Object;)V

    invoke-static {v1, p2, v0, v2}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/base/a/a;)V

    .line 297
    return-void
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 224
    return-void
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TrustDeed;)V
    .locals 8

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 4069
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v7

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getOid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getEtype()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/trade/d/g$4;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-direct {v6, p0, v0, p1}, Lcom/xueqiu/android/trade/d/g$4;-><init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/model/TrustDeed;)V

    .line 4698
    iget-object v0, v7, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/List;Z)V

    .line 145
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/d/g$2;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-direct {v4, p0, v0, p1}, Lcom/xueqiu/android/trade/d/g$2;-><init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 3690
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/l;->b(Ljava/util/List;Z)V

    .line 187
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/d/g$3;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-direct {v4, p0, v0, p1}, Lcom/xueqiu/android/trade/d/g$3;-><init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 3694
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/ArrayList;)V

    .line 104
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/d/g$1;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/trade/d/g$1;-><init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->i(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->d:Ljava/lang/String;

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 301
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->e:Ljava/lang/String;

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 306
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g;->e:Ljava/lang/String;

    return-object v0
.end method

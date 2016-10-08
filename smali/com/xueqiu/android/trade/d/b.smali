.class final Lcom/xueqiu/android/trade/d/b;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/trade/model/OrderSheet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;

.field private b:Lcom/xueqiu/android/trade/d/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/d/c;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1259
    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 1260
    iput-object p3, p0, Lcom/xueqiu/android/trade/d/b;->b:Lcom/xueqiu/android/trade/d/c;

    .line 1261
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x4

    const v8, 0x7f070070

    const/16 v7, 0x11

    .line 1278
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_a

    .line 1279
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-boolean v0, v0, Lcom/xueqiu/android/trade/d/a;->g:Z

    .line 1279
    if-nez v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    .line 1280
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->z()V

    .line 1283
    :cond_0
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 5064
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1285
    invoke-static {v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 1286
    if-eqz v0, :cond_2

    .line 6092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 1287
    invoke-static {v0}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7064
    iget-object v2, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1288
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/b;->b:Lcom/xueqiu/android/trade/d/c;

    invoke-static {v1, v2, v0, v3}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/trade/d/c;)V

    .line 1311
    :cond_1
    :goto_0
    return-void

    .line 1289
    :cond_2
    const-string v0, "70001"

    .line 8064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1290
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1290
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1291
    :cond_3
    const-string v0, "70105"

    .line 9064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1292
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10041
    const-string v1, "\u63d0\u793a"

    .line 10042
    const-string v2, "\u60a8\u672a\u505a\u6307\u5b9a\u4ea4\u6613\uff0c\u662f\u5426\u8fdb\u884c\u6307\u5b9a\u4ea4\u6613\u3002"

    .line 10043
    const-string v3, "\u4e0b\u5355\u6307\u5b9a"

    .line 10044
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v5, Lcom/xueqiu/android/trade/d/a$10;

    invoke-direct {v5, v0}, Lcom/xueqiu/android/trade/d/a$10;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-static {v4, v5}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v4

    .line 10062
    invoke-virtual {v4, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 10063
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 10127
    iput v7, v1, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 10064
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 10065
    invoke-virtual {v2, v8}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 10066
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 10067
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto :goto_0

    .line 1293
    :cond_4
    const-string v0, "70017"

    .line 11064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1294
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 12092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 11943
    if-eqz v0, :cond_1

    .line 11946
    const-string v2, "\u6ce8\u610f"

    .line 11947
    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 13092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 11948
    const-string v4, "callback_path"

    .line 13106
    invoke-static {v0, v4, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 11949
    const-string v5, "params"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 11950
    const-string v5, "params"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 11951
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/trade/d/a$5;

    invoke-direct {v6, v1}, Lcom/xueqiu/android/trade/d/a$5;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    .line 11952
    invoke-virtual {v6}, Lcom/xueqiu/android/trade/d/a$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 11951
    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 11953
    const-string v5, "tid"

    iget-object v6, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v6}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11954
    iget-object v5, v1, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v6, Lcom/xueqiu/android/trade/d/a$6;

    invoke-direct {v6, v1, v0, v4}, Lcom/xueqiu/android/trade/d/a$6;-><init>(Lcom/xueqiu/android/trade/d/a;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11971
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11972
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 15127
    iput v7, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 11973
    iget-object v2, v1, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 11974
    invoke-virtual {v2, v8}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v2, v1, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    const v3, 0x7f0700b1

    .line 11975
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 11976
    iget-object v0, v1, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto/16 :goto_0

    .line 1295
    :cond_5
    const-string v0, "70000"

    .line 16064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "70007"

    .line 17064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "70010"

    .line 18064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1297
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "79014"

    .line 19064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1299
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 19069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1299
    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    :cond_7
    const-string v0, "70018"

    .line 20064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1300
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1301
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/a/a;)V

    goto/16 :goto_0

    .line 1302
    :cond_8
    const-string v0, "70114"

    .line 21064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 21069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1302
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAMID"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1303
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 22071
    const-string v1, "\u63d0\u793a"

    .line 22072
    const-string v2, "\u60a8\u5c1a\u672a\u5f00\u901a\u521b\u4e1a\u677f\u6743\u9650\uff0c\u8bf7\u5f00\u901a\u540e\u518d\u8bd5\u3002"

    .line 22073
    const-string v3, "\u521b\u4e1a\u677f\u8f6c\u7b7e"

    .line 22074
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v5, Lcom/xueqiu/android/trade/d/a$11;

    invoke-direct {v5, v0}, Lcom/xueqiu/android/trade/d/a$11;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-static {v4, v5}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v4

    .line 22091
    invoke-virtual {v4, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 22092
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 22127
    iput v7, v1, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 22093
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 22094
    invoke-virtual {v2, v8}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 22095
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 22096
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto/16 :goto_0

    .line 1305
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 23069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1305
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1308
    :cond_a
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1309
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 24069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1309
    invoke-interface {v0, v2, v5}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1255
    check-cast p1, Ljava/util/List;

    .line 24265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/OrderSheet;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderSheet;->getOrderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24266
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 25069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->w:Ljava/lang/String;

    .line 24266
    if-eqz v0, :cond_0

    .line 24267
    iget-object v6, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 26069
    iget-object v1, v0, Lcom/xueqiu/android/trade/d/a;->w:Ljava/lang/String;

    .line 24267
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 27069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 24267
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 28069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 24267
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/OrderSheet;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderSheet;->getXoid()Ljava/lang/String;

    move-result-object v4

    .line 28910
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v5, Lcom/xueqiu/android/trade/d/a$4;

    iget-object v7, v6, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v5, v6, v7}, Lcom/xueqiu/android/trade/d/a$4;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V

    .line 29641
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 28922
    iget-object v1, v6, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 24269
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 30069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 24269
    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 24272
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/b;->a:Lcom/xueqiu/android/trade/d/a;

    .line 31069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 24272
    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

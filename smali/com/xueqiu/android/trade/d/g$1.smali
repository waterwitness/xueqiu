.class final Lcom/xueqiu/android/trade/d/g$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeHistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/g;->c()V
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
.field final synthetic a:Lcom/xueqiu/android/trade/d/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 75
    const-string v0, "TradeHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryPositionList error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    .line 1038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 77
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/l;->c()V

    .line 78
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 72
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1082
    if-eqz p1, :cond_0

    .line 1085
    const-string v1, "TradeHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v1, "result_code"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    invoke-static {v2, p1, v1, v6, v0}, Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/trade/d/g;Lcom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    .line 2038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1088
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/ArrayList;)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1093
    :cond_1
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1094
    const-string v1, "PAMID"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    .line 3038
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1094
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1095
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    const-string v0, "result_data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 4322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4323
    if-eqz v3, :cond_5

    .line 4326
    const-string v0, "stocks"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4328
    const-string v0, "stocks"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 4329
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/trade/d/g$6;

    invoke-direct {v5, v2}, Lcom/xueqiu/android/trade/d/g$6;-><init>(Lcom/xueqiu/android/trade/d/g;)V

    .line 4330
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/d/g$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 4329
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4331
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4332
    new-instance v4, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-direct {v4, v7}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4335
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_3

    .line 4336
    new-instance v0, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-direct {v0, v8}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    :cond_3
    const-string v0, "repos"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4340
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 4341
    new-instance v0, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4344
    :cond_4
    const-string v0, "repos"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 4345
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/d/g$7;

    invoke-direct {v4, v2}, Lcom/xueqiu/android/trade/d/g$7;-><init>(Lcom/xueqiu/android/trade/d/g;)V

    .line 4346
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/d/g$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4345
    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4347
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4348
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-direct {v2, v6}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4349
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v0, v1

    .line 1100
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    .line 6038
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1100
    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/l;->c()V

    .line 1101
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    .line 7038
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1101
    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1096
    :cond_7
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1097
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/g$1;->a:Lcom/xueqiu/android/trade/d/g;

    const-string v0, "result_data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 5357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5358
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/d/g$8;

    invoke-direct {v4, v2}, Lcom/xueqiu/android/trade/d/g$8;-><init>(Lcom/xueqiu/android/trade/d/g;)V

    .line 5359
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/d/g$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 5358
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5360
    iget-object v3, v2, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5361
    new-instance v3, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5365
    :goto_2
    if-eqz v0, :cond_8

    .line 5366
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5368
    :cond_8
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/g;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_9

    .line 5369
    new-instance v0, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-direct {v0, v8}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v0, v1

    .line 1097
    goto :goto_1

    .line 5363
    :cond_a
    new-instance v3, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-direct {v3, v7}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

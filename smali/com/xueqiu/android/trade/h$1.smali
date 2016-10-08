.class final Lcom/xueqiu/android/trade/h$1;
.super Lcom/xueqiu/android/base/b/p;
.source "UpdateBrokersBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/h;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Lcom/xueqiu/android/trade/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/trade/h$1;->a:Lcom/xueqiu/android/trade/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 52
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    sget-object v1, Lcom/xueqiu/android/message/client/c;->m:Lrx/i/c;

    invoke-virtual {v1, v0}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 48
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1060
    if-eqz p1, :cond_4

    .line 1064
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1065
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "securities"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 1066
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "bound_full"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 1067
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v5, "bound_semi"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    move-object v6, v0

    move-object v0, v4

    .line 1070
    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_a

    .line 1071
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/trade/h$1$1;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/trade/h$1$1;-><init>(Lcom/xueqiu/android/trade/h$1;)V

    .line 1072
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/h$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1071
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1074
    :goto_1
    if-nez v0, :cond_9

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 1080
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1081
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v4, Lcom/xueqiu/android/trade/h$1$2;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/trade/h$1$2;-><init>(Lcom/xueqiu/android/trade/h$1;)V

    .line 1082
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/h$1$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1081
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1084
    :goto_3
    if-nez v0, :cond_7

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1089
    :goto_4
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1090
    :goto_5
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1091
    invoke-virtual {v6, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1092
    new-instance v7, Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-direct {v7}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;-><init>()V

    .line 1093
    const-string v8, "tid"

    .line 2106
    invoke-static {v2, v8, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1093
    invoke-virtual {v7, v8}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setTid(Ljava/lang/String;)V

    .line 1094
    const-string v8, "mid"

    .line 3106
    invoke-static {v2, v8, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-virtual {v7, v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->setMobileId(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_0
    move v2, v1

    .line 1100
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1101
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1102
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeBroker;

    .line 1103
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V

    .line 1100
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 1106
    :cond_2
    invoke-static {v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->storeBoundBrokers(Ljava/util/ArrayList;)V

    .line 1107
    sget-object v0, Lcom/xueqiu/android/message/client/c;->m:Lrx/i/c;

    invoke-virtual {v0, v4}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 1110
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1111
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "exchange_order"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1114
    :goto_7
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1115
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/h$1$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/h$1$3;-><init>(Lcom/xueqiu/android/trade/h$1;)V

    .line 1116
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/h$1$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1115
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1118
    :goto_8
    if-nez v0, :cond_3

    .line 1119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1121
    :cond_3
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->storeExchangeMap(Ljava/util/HashMap;)V

    .line 48
    :cond_4
    return-void

    :cond_5
    move-object v0, v3

    goto :goto_8

    :cond_6
    move-object v0, v3

    goto :goto_7

    :cond_7
    move-object v4, v0

    goto/16 :goto_4

    :cond_8
    move-object v0, v3

    goto/16 :goto_3

    :cond_9
    move-object v5, v0

    goto/16 :goto_2

    :cond_a
    move-object v0, v3

    goto/16 :goto_1

    :cond_b
    move-object v2, v3

    move-object v6, v3

    move-object v0, v3

    goto/16 :goto_0
.end method

.class public final Lcom/xueqiu/android/trade/g;
.super Ljava/lang/Object;
.source "TradeUtil.java"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 191
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeBroker;

    .line 192
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V

    .line 193
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "trade_key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v1

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/util/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgXhQP/OpFzyf5bduIHcG2dLol\nLu6h75feTqI1U9oPrKx85R9Wb4LBlpo183rmJnrt2vAyo7+QK5iwke9Ii/CBfIG/\n8GSgTNwzLHM0voaZygmJi66JoaZ1jlsO5CZSEzoXkF1Zxq62KcO40zE4yPFExvjR\nO3uCTSNCS11h7gEISQIDAQAB\n"

    .line 183
    :cond_0
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/message/a/b;->a([B)Ljava/security/Key;

    move-result-object v0

    .line 184
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v1, v0, v2}, Lcom/snowballfinance/message/a/a;->a([BLjava/security/Key;I)[B

    move-result-object v0

    .line 185
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "take_order_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    const-string v1, "take_order_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 142
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/stock/model/StockQuote;->setSymbol(Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_0

    const-string v2, "SELL"

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1362
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c$2;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/trade/c$2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v3, p1, v2}, Lcom/xueqiu/android/base/b/ai;->h(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 147
    return-void

    .line 144
    :cond_0
    const-string v2, "BUY"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3

    .prologue
    .line 107
    if-ltz p3, :cond_1

    .line 108
    const/16 v0, 0x11

    if-eq p3, v0, :cond_0

    invoke-static {p3}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 138
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/trade/g;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/g$1;

    move-object v0, p0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v2, v0, p1, p0, p2}, Lcom/xueqiu/android/trade/g$1;-><init>(Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Landroid/content/Context;Z)V

    new-instance v0, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/r;-><init>()V

    invoke-virtual {v1, p1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public static a(Lcom/xueqiu/android/trade/model/TradeAccount;Landroid/app/Activity;Lcom/xueqiu/android/base/h5/b;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getPageType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 67
    if-ne p3, v3, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getBindUrl()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/broker/proxy?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    invoke-static {v0, p1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRefreshUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 80
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/trade/BindBrokerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v2, "extra_intent_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v2, "extra_broker"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    if-eqz p2, :cond_3

    .line 85
    const-string v2, "extra_event"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1046
    iget v1, p2, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 150
    const-string v1, "broker/trade?scode=%s&action=%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const-string v0, "SELL"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void

    .line 150
    :cond_0
    const-string v0, "BUY"

    goto :goto_0
.end method

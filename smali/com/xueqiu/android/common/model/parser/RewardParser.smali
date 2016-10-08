.class public Lcom/xueqiu/android/common/model/parser/RewardParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "RewardParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/community/model/Reward;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/Reward;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/xueqiu/android/community/model/Reward;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Reward;-><init>()V

    .line 25
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Reward;->setId(J)V

    .line 28
    :cond_0
    const-string v1, "user_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Reward;->setUserId(J)V

    .line 31
    :cond_1
    const-string v1, "to_user_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "to_user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Reward;->setToUserId(J)V

    .line 34
    :cond_2
    const-string v1, "to_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "to_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Reward;->setToId(J)V

    .line 37
    :cond_3
    const-string v1, "to_type"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string v1, "to_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Reward;->setToType(Ljava/lang/String;)V

    .line 40
    :cond_4
    const-string v1, "snow_coin"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    const-string v1, "snow_coin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Reward;->setSnowCoin(I)V

    .line 43
    :cond_5
    const-string v1, "message"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Reward;->setMessage(Ljava/lang/String;)V

    .line 46
    :cond_6
    const-string v1, "pay_trade_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 47
    const-string v1, "pay_trade_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Reward;->setPayTradeId(J)V

    .line 49
    :cond_7
    const-string v1, "created_at"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Reward;->setCreateAt(Ljava/util/Date;)V

    .line 52
    :cond_8
    const-string v1, "user"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    new-instance v1, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    const-string v2, "user"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/parser/UserParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Reward;->setUser(Lcom/xueqiu/android/community/model/User;)V

    .line 55
    :cond_9
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/RewardParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/Reward;

    move-result-object v0

    return-object v0
.end method

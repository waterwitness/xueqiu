.class public Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "FriendshipGroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroupInfo;",
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
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/FriendshipGroupInfo;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;-><init>()V

    .line 25
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->setmName(Ljava/lang/String;)V

    .line 28
    :cond_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->setmId(J)V

    .line 31
    :cond_1
    const-string v1, "user_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->setmUser_id(J)V

    .line 34
    :cond_2
    const-string v1, "order_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->setmOrder_id(I)V

    .line 37
    :cond_3
    const-string v1, "member_count"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string v1, "member_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->setmMember_count(I)V

    .line 41
    :cond_4
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/FriendshipGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/FriendshipGroupInfo;

    move-result-object v0

    return-object v0
.end method

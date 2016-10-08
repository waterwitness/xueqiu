.class public Lcom/xueqiu/android/common/model/parser/UserGroupParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "UserGroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/community/model/UserGroup;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/UserGroup;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 26
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 29
    :cond_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 32
    :cond_1
    const-string v1, "user_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserGroup;->setUserId(J)V

    .line 35
    :cond_2
    const-string v1, "order_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserGroup;->setOrderId(I)V

    .line 38
    :cond_3
    const-string v1, "member_count"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string v1, "member_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserGroup;->setMemberCount(I)V

    .line 42
    :cond_4
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/UserGroup;

    move-result-object v0

    return-object v0
.end method

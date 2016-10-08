.class public Lcom/xueqiu/android/message/model/Apply$Parser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "Apply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/message/model/Apply;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/Apply;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 160
    new-instance v0, Lcom/xueqiu/android/message/model/Apply;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Apply;-><init>()V

    .line 161
    const-string v1, "id"

    invoke-static {p1, v1, v4, v5}, Lcom/xueqiu/android/message/model/Apply$Parser;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Apply;->setId(J)V

    .line 162
    const-string v1, "user_id"

    invoke-static {p1, v1, v4, v5}, Lcom/xueqiu/android/message/model/Apply$Parser;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Apply;->setUserId(J)V

    .line 163
    const-string v1, "imgroup_id"

    invoke-static {p1, v1, v4, v5}, Lcom/xueqiu/android/message/model/Apply$Parser;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Apply;->setGroupId(J)V

    .line 164
    const-string v1, "owner_id"

    invoke-static {p1, v1, v4, v5}, Lcom/xueqiu/android/message/model/Apply$Parser;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Apply;->setOwnerId(J)V

    .line 165
    const-string v1, "joined"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setJoined(Z)V

    .line 166
    const-string v1, "profileImage30"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setSmallProfileImage(Ljava/lang/String;)V

    .line 167
    const-string v1, "profileImage50"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setMediumProfileImage(Ljava/lang/String;)V

    .line 168
    const-string v1, "profileImage180"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setLargeProfileImage(Ljava/lang/String;)V

    .line 169
    const-string v1, "screen_name"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setScreenName(Ljava/lang/String;)V

    .line 170
    const-string v1, "imgroup_name"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setGroupName(Ljava/lang/String;)V

    .line 171
    const-string v1, "description"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/xueqiu/android/message/model/Apply$Parser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setDescription(Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/util/Date;

    const-string v2, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1, v2, v4, v5}, Lcom/xueqiu/android/message/model/Apply$Parser;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Apply;->setCreatedAt(Ljava/util/Date;)V

    .line 173
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/Apply$Parser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/Apply;

    move-result-object v0

    return-object v0
.end method

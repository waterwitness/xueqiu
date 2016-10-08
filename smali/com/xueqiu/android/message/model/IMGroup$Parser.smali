.class public Lcom/xueqiu/android/message/model/IMGroup$Parser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "IMGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/xueqiu/android/message/model/IMGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/IMGroup;-><init>()V

    .line 293
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/IMGroup;->setId(J)V

    .line 297
    :cond_0
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setName(Ljava/lang/String;)V

    .line 300
    :cond_1
    const-string v1, "description"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setDescription(Ljava/lang/String;)V

    .line 303
    :cond_2
    const-string v1, "profile_image_url_100"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    const-string v1, "profile_image_url_100"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setProfileImageUrl(Ljava/lang/String;)V

    .line 306
    :cond_3
    const-string v1, "count"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setCount(I)V

    .line 309
    :cond_4
    const-string v1, "owner_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    const-string v1, "owner_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/IMGroup;->setMasterId(J)V

    .line 312
    :cond_5
    const-string v1, "ispublic"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    const-string v1, "ispublic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setPub(Z)V

    .line 315
    :cond_6
    const-string v1, "truncated"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 316
    const-string v1, "truncated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setTruncated(Z)V

    .line 318
    :cond_7
    const-string v1, "joined"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    const-string v1, "joined"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setJoined(Z)V

    .line 321
    :cond_8
    const-string v1, "empty_name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 322
    const-string v1, "empty_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setEmptyName(Z)V

    .line 324
    :cond_9
    const-string v1, "limit_count"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 325
    const-string v1, "limit_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setLimitCount(I)V

    .line 327
    :cond_a
    const-string v1, "allow_invite_user"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    const-string v1, "allow_invite_user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setAllowInviteUser(Z)V

    .line 330
    :cond_b
    const-string v1, "created_at"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setCreatedAt(Ljava/util/Date;)V

    .line 333
    :cond_c
    const-string v1, "star"

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 334
    const-string v1, "star"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setStar(I)V

    .line 337
    :cond_d
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/model/IMGroup$Parser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    return-object v1
.end method

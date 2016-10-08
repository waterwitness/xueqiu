.class public Lcom/xueqiu/android/common/model/parser/UserParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "UserParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/User;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v3, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 27
    const-string v0, "screen_name"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 30
    :cond_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 33
    :cond_1
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setType(I)V

    .line 36
    :cond_2
    const-string v0, "created_at"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Ljava/util/Date;

    const-string v2, "created_at"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCreatedAt(Ljava/util/Date;)V

    .line 40
    :cond_3
    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setLocation(Ljava/lang/String;)V

    .line 44
    :cond_4
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setDescription(Ljava/lang/String;)V

    .line 47
    :cond_5
    const-string v0, "verified_description"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    const-string v0, "verified_description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifiedDescription(Ljava/lang/String;)V

    .line 50
    :cond_6
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setBlogUrl(Ljava/lang/String;)V

    .line 53
    :cond_7
    const-string v0, "profile_image_url"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    const-string v0, ""

    .line 55
    const-string v2, "photo_domain"

    invoke-static {p1, v2}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    const-string v0, "photo_domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_8
    const-string v2, "profile_image_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 61
    array-length v2, v4

    if-ne v2, v7, :cond_29

    .line 62
    const-string v2, "%s%s!50x50.png"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aget-object v6, v4, v1

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 63
    const-string v2, "%s%s!180x180.png"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aget-object v0, v4, v1

    aput-object v0, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setProfileLargeImageUrl(Ljava/lang/String;)V

    .line 82
    :cond_9
    const-string v0, "verified_realname"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    const-string v0, "verified_realname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifiedRealName(Z)V

    .line 86
    :cond_a
    const-string v0, "domain"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    const-string v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setDomain(Ljava/lang/String;)V

    .line 90
    :cond_b
    const-string v0, "gender"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 93
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    .line 100
    :cond_c
    :goto_0
    const-string v0, "followers_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    const-string v0, "followers_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFollowersCount(I)V

    .line 103
    :cond_d
    const-string v0, "friends_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 104
    const-string v0, "friends_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFriendsCount(I)V

    .line 106
    :cond_e
    const-string v0, "status_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    const-string v0, "status_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStatusesCount(I)V

    .line 109
    :cond_f
    const-string v0, "favourites_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 110
    const-string v0, "favourites_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFavouritesCount(I)V

    .line 112
    :cond_10
    const-string v0, "stocks_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    const-string v0, "stocks_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStocksCount(I)V

    .line 115
    :cond_11
    const-string v0, "cube_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 116
    const-string v0, "cube_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCubeCount(I)V

    .line 118
    :cond_12
    const-string v0, "following"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    const-string v0, "following"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 121
    :cond_13
    const-string v0, "verified"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    const-string v0, "verified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerified(Z)V

    .line 125
    :cond_14
    const-string v0, "verified_type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    const-string v0, "verified_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/community/model/UserVerifyType;->fromValue(I)Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifyType(Lcom/xueqiu/android/community/model/UserVerifyType;)V

    .line 129
    :cond_15
    const-string v0, "allow_all_act_msg"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 130
    const-string v0, "allow_all_act_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setAllowAllActMsg(Z)V

    .line 133
    :cond_16
    const-string v0, "geo_enabled"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 134
    const-string v0, "geo_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGeoEnabled(Z)V

    .line 136
    :cond_17
    const-string v0, "province"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 137
    const-string v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setProvince(Ljava/lang/String;)V

    .line 139
    :cond_18
    const-string v0, "city"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 140
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCity(Ljava/lang/String;)V

    .line 142
    :cond_19
    const-string v0, "step"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 143
    const-string v0, "step"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStep(Ljava/lang/String;)V

    .line 145
    :cond_1a
    const-string v0, "recommend"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    const-string v0, "recommend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setRecommend(Ljava/lang/String;)V

    .line 148
    :cond_1b
    const-string v0, "recommend_reason"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 149
    const-string v0, "recommend_reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setRecommendReason(Ljava/lang/String;)V

    .line 151
    :cond_1c
    const-string v0, "common_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 152
    const-string v0, "common_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCommonCount(I)V

    .line 154
    :cond_1d
    const-string v0, "rec_extra_msg"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 155
    const-string v0, "rec_extra_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setRecExtraMsg(Ljava/lang/String;)V

    .line 157
    :cond_1e
    const-string v0, "stock_status_count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 158
    const-string v0, "stock_status_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStockStatusCount(I)V

    .line 160
    :cond_1f
    const-string v0, "blocking"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 161
    const-string v0, "blocking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setBlocking(Z)V

    .line 163
    :cond_20
    const-string v0, "block_status"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 164
    const-string v0, "block_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setBlockStatus(I)V

    .line 166
    :cond_21
    const-string v0, "follow_me"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 167
    const-string v0, "follow_me"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFollowMe(Z)V

    .line 169
    :cond_22
    const-string v0, "remark"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 170
    const-string v0, "remark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setRemark(Ljava/lang/String;)V

    .line 172
    :cond_23
    const-string v0, "screenname_pinyin"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 173
    const-string v0, "screenname_pinyin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setPinyinScreenName(Ljava/lang/String;)V

    .line 175
    :cond_24
    const-string v0, "name_pinyin"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 176
    const-string v0, "name_pinyin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setPinyinRemark(Ljava/lang/String;)V

    .line 178
    :cond_25
    const-string v0, "telephone"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 179
    const-string v0, "telephone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setTelephone(Ljava/lang/String;)V

    .line 181
    :cond_26
    const-string v0, "openid"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 182
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/User;->setoAuthUserId(J)V

    .line 184
    :cond_27
    const-string v0, "verified_realname"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/UserParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 185
    const-string v0, "verified_realname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifiedRealname(Z)V

    .line 188
    :cond_28
    return-object v3

    .line 64
    :cond_29
    array-length v2, v4

    if-lez v2, :cond_9

    .line 65
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    .line 67
    const-string v1, "(?:ftp://|https://|http://|www\\.)[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*\\.[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*?"

    invoke-virtual {v6, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 68
    const-string v1, ""

    .line 73
    :goto_2
    const-string v7, "50x50"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 65
    :cond_2a
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2b
    move-object v1, v0

    .line 70
    goto :goto_2

    .line 75
    :cond_2c
    const-string v7, "180x180"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xueqiu/android/community/model/User;->setProfileLargeImageUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 94
    :cond_2d
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 95
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    goto/16 :goto_0

    .line 97
    :cond_2e
    sget-object v0, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/UserParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method

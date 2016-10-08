.class public final Lcom/xueqiu/android/base/storage/UserTable;
.super Ljava/lang/Object;
.source "UserTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALLOW_ALL_ACT_MSG:Ljava/lang/String; = "allowAllActMsg"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CREATED_AT:Ljava/lang/String; = "createdAt"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_user (userId INTEGER,type INTEGER,screenName STRING,province STRING,city STRING,location STRING,description TEXT,url STRING,profileImageUrl STRING,domain STRING,gender TEXT,followersCount INTEGER,friendsCount INTEGER,statusesCount INTEGER,favoritesCount INTEGER,createdAt INTEGER,following TINYINT(1) DEFAULT 0,verified TINYINT(1) DEFAULT 0,allowAllActMsg TINYINT(1) DEFAULT 0,geoEnabled TINYINT(1) DEFAULT 0,stocksCount INTEGER,verifiedDescription TEXT,step TEXT,verifyType INTEGER,remark STRING,follow_me TINYINT(1) DEFAULT 0,pinyin_screename TEXT,pinyin_remark TEXT,PRIMARY KEY(userId, screenName))"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final FAVORITES_COUNT:Ljava/lang/String; = "favoritesCount"

.field public static final FOLLOWERS_COUNT:Ljava/lang/String; = "followersCount"

.field public static final FOLLOWING:Ljava/lang/String; = "following"

.field public static final FOLLOW_ME:Ljava/lang/String; = "follow_me"

.field public static final FRIENDS_COUNT:Ljava/lang/String; = "friendsCount"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final GEO_ENABLED:Ljava/lang/String; = "geoEnabled"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final PINYIN_REMARK:Ljava/lang/String; = "pinyin_remark"

.field public static final PINYIN_SCREENAME:Ljava/lang/String; = "pinyin_screename"

.field public static final PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final REMARK:Ljava/lang/String; = "remark"

.field public static final SCREEN_NAME:Ljava/lang/String; = "screenName"

.field public static final STATUSES_COUNT:Ljava/lang/String; = "statusesCount"

.field public static final STEP:Ljava/lang/String; = "step"

.field public static final STOCKS_COUNT:Ljava/lang/String; = "stocksCount"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_user"

.field private static final TAG:Ljava/lang/String; = "UserTable"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final VERIFIED:Ljava/lang/String; = "verified"

.field public static final VERIFIED_DESCRIPTION:Ljava/lang/String; = "verifiedDescription"

.field public static final VERIFYTYPE:Ljava/lang/String; = "verifyType"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "screenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "province"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "profileImageUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "followersCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "friendsCount"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "statusesCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "favoritesCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "following"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "allowAllActMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "geoEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "stocksCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "verifiedDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "step"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "verifyType"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "remark"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "follow_me"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pinyin_screename"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pinyin_remark"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/UserTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 146
    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v0, "screenName"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "province"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "city"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "location"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "description"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "url"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getBlogUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "profileImageUrl"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "domain"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "gender"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User$Gender;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "followersCount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "friendsCount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getFriendsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "statusesCount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getStatusesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v0, "favoritesCount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getFavouritesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "createdAt"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    :cond_0
    const-string v4, "following"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v4, "verified"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v4, "allowAllActMsg"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isAllowAllActMsg()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v0, "geoEnabled"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isGeoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v0, "stocksCount"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getStocksCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "verifiedDescription"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "step"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "verifyType"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v0, "remark"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "follow_me"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 179
    const-string v0, "pinyin_screename"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getPinyinScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "pinyin_remark"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getPinyinRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v3

    :cond_1
    move v0, v2

    .line 166
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 167
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 168
    goto :goto_2

    :cond_4
    move v1, v2

    .line 170
    goto :goto_3
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 94
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 98
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    :cond_2
    new-instance v3, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 103
    const-string v0, "userId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 104
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setType(I)V

    .line 105
    const-string v0, "screenName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 106
    const-string v0, "province"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setProvince(Ljava/lang/String;)V

    .line 107
    const-string v0, "city"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCity(Ljava/lang/String;)V

    .line 109
    const-string v0, "location"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setLocation(Ljava/lang/String;)V

    .line 110
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setDescription(Ljava/lang/String;)V

    .line 111
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setBlogUrl(Ljava/lang/String;)V

    .line 112
    const-string v0, "profileImageUrl"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 113
    const-string v0, "domain"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setDomain(Ljava/lang/String;)V

    .line 114
    const-string v0, "gender"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/community/model/User$Gender;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    .line 116
    const-string v0, "followersCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFollowersCount(I)V

    .line 117
    const-string v0, "friendsCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFriendsCount(I)V

    .line 119
    const-string v0, "statusesCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStatusesCount(I)V

    .line 120
    const-string v0, "favoritesCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFavouritesCount(I)V

    .line 123
    new-instance v0, Ljava/util/Date;

    const-string v4, "createdAt"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setCreatedAt(Ljava/util/Date;)V

    .line 124
    const-string v0, "following"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 125
    const-string v0, "verified"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerified(Z)V

    .line 127
    const-string v0, "allowAllActMsg"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setAllowAllActMsg(Z)V

    .line 128
    const-string v0, "geoEnabled"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setGeoEnabled(Z)V

    .line 129
    const-string v0, "stocksCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStocksCount(I)V

    .line 130
    const-string v0, "verifiedDescription"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifiedDescription(Ljava/lang/String;)V

    .line 131
    const-string v0, "step"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setStep(Ljava/lang/String;)V

    .line 132
    const-string v0, "verifyType"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/community/model/UserVerifyType;->fromValue(I)Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setVerifyType(Lcom/xueqiu/android/community/model/UserVerifyType;)V

    .line 133
    const-string v0, "remark"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setRemark(Ljava/lang/String;)V

    .line 134
    const-string v0, "follow_me"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/community/model/User;->setFollowMe(Z)V

    .line 136
    const-string v0, "pinyin_screename"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setPinyinScreenName(Ljava/lang/String;)V

    .line 137
    const-string v0, "pinyin_remark"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/User;->setPinyinRemark(Ljava/lang/String;)V

    move-object v0, v3

    .line 139
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 124
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 125
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 127
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 128
    goto :goto_4

    :cond_7
    move v1, v2

    .line 134
    goto :goto_5
.end method

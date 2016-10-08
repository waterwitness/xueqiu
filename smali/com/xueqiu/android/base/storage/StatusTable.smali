.class public final Lcom/xueqiu/android/base/storage/StatusTable;
.super Ljava/lang/Object;
.source "StatusTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ANDTHUMB_PIC:Ljava/lang/String; = "andthumb_pic"

.field public static final BMIDDLE_PIC:Ljava/lang/String; = "bmiddle_pic"

.field public static final COMMENTS_COUNT:Ljava/lang/String; = "comments_count"

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_status(status_id INTEGER,created_at INTEGER,text TEXT,source STRING,target STRING,source_url STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,latitude FLOAT,longitude FLOAT,in_reply_to_status_id INTEGER,in_reply_to_user_id INTEGER,in_reply_to_screen_name STRING,thumbnail_pic STRING,bmiddle_pic STRING,original_pic STRING,user_screen_name STRING,comments_count INTEGER,retweets_count INTEGER,retweeted_status_id INTEGER,has_reply TINYINT(1) DEFAULT 0,description TEXT,title STRING,type TINYINT(1) DEFAULT 0,andthumb_pic STRING,user_id INTEGER,topic_title STRING,topic_desc STRING,topic_pic STRING,topic_pic_head STRING,reward_count INTEGER,reward_snowcoin INTEGER,status_card STRING,PRIMARY KEY(status_id, type))"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FAVORITED:Ljava/lang/String; = "favorited"

.field public static final HAS_REPLY:Ljava/lang/String; = "has_reply"

.field public static final IN_REPLY_TO_SCREEN_NAME:Ljava/lang/String; = "in_reply_to_screen_name"

.field public static final IN_REPLY_TO_STATUS_ID:Ljava/lang/String; = "in_reply_to_status_id"

.field public static final IN_REPLY_TO_USER_ID:Ljava/lang/String; = "in_reply_to_user_id"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final ORIGINAL_PIC:Ljava/lang/String; = "original_pic"

.field public static final RETWEETED_STATUS_ID:Ljava/lang/String; = "retweeted_status_id"

.field public static final RETWEETS_COUNT:Ljava/lang/String; = "retweets_count"

.field public static final REWARD_COUNT:Ljava/lang/String; = "reward_count"

.field public static final REWARD_SNOWCOIN:Ljava/lang/String; = "reward_snowcoin"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_URL:Ljava/lang/String; = "source_url"

.field public static final STATUS_CARD:Ljava/lang/String; = "status_card"

.field public static final STATUS_ID:Ljava/lang/String; = "status_id"

.field public static final STATUS_TYPE_ALL:I = 0x1

.field public static final STATUS_TYPE_DISCUSS:I = 0x2

.field public static final STATUS_TYPE_FAVORITE:I = 0x7

.field public static final STATUS_TYPE_FINANCICAL_MANAGEMENT:I = 0xc

.field public static final STATUS_TYPE_METTION_ME:I = 0x5

.field public static final STATUS_TYPE_NEWS:I = 0x3

.field public static final STATUS_TYPE_NOTICE:I = 0x4

.field public static final STATUS_TYPE_REPORT:I = 0xd

.field public static final STATUS_TYPE_TOPIC_ALL:I = 0x8

.field public static final STATUS_TYPE_TOPIC_HK:I = 0xb

.field public static final STATUS_TYPE_TOPIC_HS:I = 0x9

.field public static final STATUS_TYPE_TOPIC_US:I = 0xa

.field public static final STATUS_TYPE_TRADE:I = 0x6

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_status"

.field private static final TAG:Ljava/lang/String; = "StatusTable"

.field public static final TARGET:Ljava/lang/String; = "target"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final THUMBNAIL_PIC:Ljava/lang/String; = "thumbnail_pic"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOPIC_DESC:Ljava/lang/String; = "topic_desc"

.field public static final TOPIC_PIC:Ljava/lang/String; = "topic_pic"

.field public static final TOPIC_PIC_HEAD:Ljava/lang/String; = "topic_pic_head"

.field public static final TOPIC_TITLE:Ljava/lang/String; = "topic_title"

.field public static final TRUNCATED:Ljava/lang/String; = "truncated"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_SCREEN_NAME:Ljava/lang/String; = "user_screen_name"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created_at"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "target"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "source_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_reply_to_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "in_reply_to_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "in_reply_to_screen_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "thumbnail_pic"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bmiddle_pic"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "original_pic"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "user_screen_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "retweets_count"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retweeted_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "has_reply"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "andthumb_pic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "topic_title"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "topic_desc"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "topic_pic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "topic_pic_head"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "reward_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reward_snowcoin"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "status_card"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/StatusTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/community/model/Status;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 187
    const-string v0, "status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v0, "created_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v0, "text"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "source"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "target"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "source_url"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "favorited"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->isFavorited()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v0, "truncated"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->isTruncated()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v0, "in_reply_to_status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getInReplyToStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v0, "in_reply_to_user_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getInReplyToUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v0, "in_reply_to_screen_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getInReplyToScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "thumbnail_pic"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "bmiddle_pic"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "original_pic"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getOriginalPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "user_screen_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "comments_count"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v0, "retweets_count"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "retweeted_status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    :goto_2
    const-string v0, "has_reply"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->isHasReply()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 214
    const-string v0, "description"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "andthumb_pic"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v0, "topic_title"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "topic_desc"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTopicDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "topic_pic"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "topic_pic_head"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getTopicPicHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "reward_count"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getDonateCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v0, "reward_snowcoin"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getDonateSnowCoin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "status_card"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    .line 193
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 195
    goto/16 :goto_1

    .line 211
    :cond_3
    const-string v0, "retweeted_status_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Status;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const-string v0, "StatusTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 133
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    :cond_2
    new-instance v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/Status;-><init>()V

    .line 137
    const-string v0, "status_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/Status;->setStatusId(J)V

    .line 138
    new-instance v0, Ljava/util/Date;

    const-string v4, "created_at"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setCreatedAt(Ljava/util/Date;)V

    .line 140
    const-string v0, "text"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setText(Ljava/lang/String;)V

    .line 141
    const-string v0, "source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setSource(Ljava/lang/String;)V

    .line 142
    const-string v0, "target"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTarget(Ljava/lang/String;)V

    .line 143
    const-string v0, "source_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setSourceUrl(Ljava/lang/String;)V

    .line 144
    const-string v0, "favorited"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setFavorited(Z)V

    .line 145
    const-string v0, "truncated"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTruncated(Z)V

    .line 149
    const-string v0, "in_reply_to_status_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/Status;->setInReplyToStatusId(J)V

    .line 150
    const-string v0, "in_reply_to_user_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/Status;->setInReplyToUserId(J)V

    .line 151
    const-string v0, "in_reply_to_screen_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setInReplyToScreenName(Ljava/lang/String;)V

    .line 152
    const-string v0, "thumbnail_pic"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setThumbnailPic(Ljava/lang/String;)V

    .line 156
    const-string v0, "user_screen_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setScreenName(Ljava/lang/String;)V

    .line 157
    const-string v0, "comments_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setCommentsCount(I)V

    .line 158
    const-string v0, "retweets_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setRetweetsCount(I)V

    .line 159
    const-string v0, "retweeted_status_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/Status;->setReTweetStatusId(J)V

    .line 161
    const-string v0, "has_reply"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/community/model/Status;->setHasReply(Z)V

    .line 162
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setDescription(Ljava/lang/String;)V

    .line 163
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTitle(Ljava/lang/String;)V

    .line 166
    const-string v0, "user_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/Status;->setUserId(J)V

    .line 168
    const-string v0, "topic_title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTopicTitle(Ljava/lang/String;)V

    .line 169
    const-string v0, "topic_desc"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTopicDesc(Ljava/lang/String;)V

    .line 170
    const-string v0, "topic_pic"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTopicPicThumbnail(Ljava/lang/String;)V

    .line 171
    const-string v0, "topic_pic_head"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setTopicPicHead(Ljava/lang/String;)V

    .line 173
    const-string v0, "reward_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setDonateCount(I)V

    .line 174
    const-string v0, "reward_snowcoin"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setDonateSnowCoin(I)V

    .line 175
    const-string v0, "status_card"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 176
    if-nez v1, :cond_3

    .line 177
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/model/Card;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Card;

    iput-object v0, v3, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    :cond_3
    move-object v0, v3

    .line 179
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 144
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 145
    goto/16 :goto_2

    :cond_6
    move v1, v2

    .line 161
    goto/16 :goto_3
.end method

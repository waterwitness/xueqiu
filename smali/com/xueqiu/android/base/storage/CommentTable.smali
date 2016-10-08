.class public final Lcom/xueqiu/android/base/storage/CommentTable;
.super Ljava/lang/Object;
.source "CommentTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_comment(comment_id INTEGER,text TEXT,created_at INTEGER,source STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,user_id INTEGER,status_id INTEGER,retweet_status_id INTEGER,reply_comment_id INTEGER,reply_screen_name STRING,type TINYINT(1) DEFAULT 0, PRIMARY KEY(comment_id, type))"

.field public static final FAVORITED:Ljava/lang/String; = "favorited"

.field public static final REPLY_COMMENT_ID:Ljava/lang/String; = "reply_comment_id"

.field public static final REPLY_SCREEN_NAME:Ljava/lang/String; = "reply_screen_name"

.field public static final RETWEET_STATUS_ID:Ljava/lang/String; = "retweet_status_id"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final STATUS_ID:Ljava/lang/String; = "status_id"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_comment"

.field private static final TAG:Ljava/lang/String; = "CommentTable"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TRUNCATED:Ljava/lang/String; = "truncated"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_RECEIVE:I = 0x1

.field public static final TYPE_SEND:I = 0x2

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "comment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created_at"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "retweet_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reply_comment_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reply_screen_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/CommentTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/community/model/Comment;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v0, "comment_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v0, "text"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "created_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    const-string v0, "source"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v4, "truncated"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v0, "favorited"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->isFavorited()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v0, "retweet_status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getRetweetStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v0, "reply_screen_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getReplyScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "user_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "status_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "reply_comment_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    .line 88
    goto :goto_0

    :cond_4
    move v1, v2

    .line 89
    goto :goto_1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Comment;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    const-string v0, "CommentTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 58
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    :cond_2
    new-instance v3, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/Comment;-><init>()V

    .line 64
    const-string v0, "comment_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/Comment;->setId(J)V

    .line 65
    const-string v0, "text"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Comment;->setText(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/Date;

    const-string v4, "created_at"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Comment;->setCreatedAt(Ljava/util/Date;)V

    .line 67
    const-string v0, "source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Comment;->setSource(Ljava/lang/String;)V

    .line 68
    const-string v0, "favorited"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Comment;->setFavorited(Z)V

    .line 69
    const-string v0, "truncated"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/community/model/Comment;->setTruncated(Z)V

    .line 70
    const-string v0, "retweet_status_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setRetweetStatusId(J)V

    .line 71
    const-string v0, "reply_screen_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Comment;->setReplyScreenName(Ljava/lang/String;)V

    .line 73
    const-string v0, "user_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setUserId(J)V

    .line 74
    const-string v0, "status_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setStatusId(J)V

    .line 75
    const-string v0, "reply_comment_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setReplyCommentId(J)V

    move-object v0, v3

    .line 76
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 68
    goto :goto_1

    :cond_4
    move v1, v2

    .line 69
    goto :goto_2
.end method

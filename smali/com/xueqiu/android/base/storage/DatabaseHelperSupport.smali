.class public Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;
.super Ljava/lang/Object;
.source "DatabaseHelperSupport.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATABASE_NAME:Ljava/lang/String; = "snowball.db"

.field public static final DATABASE_VERSION:I = 0x51

.field public static final TAG:Ljava/lang/String; = "DroidDatabaseHelper"

.field private static createTableSqls:[Ljava/lang/String;

.field private static dropTableNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->$assertionsDisabled:Z

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "CREATE TABLE sn_status(status_id INTEGER,created_at INTEGER,text TEXT,source STRING,target STRING,source_url STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,latitude FLOAT,longitude FLOAT,in_reply_to_status_id INTEGER,in_reply_to_user_id INTEGER,in_reply_to_screen_name STRING,thumbnail_pic STRING,bmiddle_pic STRING,original_pic STRING,user_screen_name STRING,comments_count INTEGER,retweets_count INTEGER,retweeted_status_id INTEGER,has_reply TINYINT(1) DEFAULT 0,description TEXT,title STRING,type TINYINT(1) DEFAULT 0,andthumb_pic STRING,user_id INTEGER,topic_title STRING,topic_desc STRING,topic_pic STRING,topic_pic_head STRING,reward_count INTEGER,reward_snowcoin INTEGER,status_card STRING,PRIMARY KEY(status_id, type))"

    aput-object v3, v0, v2

    const-string v3, "CREATE TABLE sn_user (userId INTEGER,type INTEGER,screenName STRING,province STRING,city STRING,location STRING,description TEXT,url STRING,profileImageUrl STRING,domain STRING,gender TEXT,followersCount INTEGER,friendsCount INTEGER,statusesCount INTEGER,favoritesCount INTEGER,createdAt INTEGER,following TINYINT(1) DEFAULT 0,verified TINYINT(1) DEFAULT 0,allowAllActMsg TINYINT(1) DEFAULT 0,geoEnabled TINYINT(1) DEFAULT 0,stocksCount INTEGER,verifiedDescription TEXT,step TEXT,verifyType INTEGER,remark STRING,follow_me TINYINT(1) DEFAULT 0,pinyin_screename TEXT,pinyin_remark TEXT,PRIMARY KEY(userId, screenName))"

    aput-object v3, v0, v1

    const-string v3, "CREATE TABLE t_draft_table(draft_id INTEGER PRIMARY KEY AUTOINCREMENT,title STRING,text TEXT,type INTEGER,img_name STRING,timestamp INTEGER)"

    aput-object v3, v0, v5

    const-string v3, "CREATE TABLE sn_comment(comment_id INTEGER,text TEXT,created_at INTEGER,source STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,user_id INTEGER,status_id INTEGER,retweet_status_id INTEGER,reply_comment_id INTEGER,reply_screen_name STRING,type TINYINT(1) DEFAULT 0, PRIMARY KEY(comment_id, type))"

    aput-object v3, v0, v6

    const-string v3, "CREATE TABLE sn_portfolio(rowidINTEGER PRIMARY KEY,symbol TEXT,name TEXT,alias TEXT,current INTEGER,change INTEGER,percentage INTEGER,open INTEGER,close INTEGER,marketCapital INTEGER,showMarketCapital TEXT,volume INTEGER,volumeAverage INTEGER,pe_ttm TEXT,pe_lyr TEXT,dividend INTEGER,peRatio INTEGER,high INTEGER,low INTEGER,week52High INTEGER,week52Low INTEGER,following INTEGER,type TEXT,flag INTEGER,holding INTEGER)"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "CREATE TABLE t_investment_calendar_table(investment_calendar_id INTEGER PRIMARY KEY AUTOINCREMENT, author_id INTEGER,url TEXT,color TEXT,timezone TEXT,title TEXT,description TEXT,location TEXT,followers_count INTEGER,created_at INTEGER,symbol TEXT,type INTEGER,privacy_read TEXT,privacy_write TEXT,stat TEXT,stat_color TEXT,stat_alert TEXT,stat_sort INTEGER,stat_show TINYINT(1) DEFAULT 0,is_mine TINYINT(1) DEFAULT 0)"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "CREATE TABLE sn_organize (id INTEGER,name STRING,description TEXT,profileImageUrl STRING,count INTEGER,limit_count INTEGER,masterId INTEGER,pub TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,joined TINYINT(1) DEFAULT 0,empty_name TINYINT(1) DEFAULT 0,allow_invite_user TINYINT(1) DEFAULT 0,createdAt INTEGER,PRIMARY KEY(id))"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/xueqiu/android/message/model/Talk$Table;->CREATE_TABLE:Ljava/lang/String;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "CREATE TABLE t_taking_pos_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, t_name STRING,symbol STRING,shares INTEGER,avgprice INTEGER,floatamount INTEGER,floatrate INTEGER,accumrate INTEGER,accumamount INTEGER,marketvalue INTEGER,quoteprice INTEGER,cost INTEGER,type TINYINT(1) DEFAULT 0)"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/xueqiu/android/message/model/SystemEvent$Table;->CREATE_TABLE:Ljava/lang/String;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "CREATE TABLE IF NOT EXISTS secret(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `secret` TEXT, `version` INTEGER)"

    aput-object v4, v0, v3

    sput-object v0, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->createTableSqls:[Ljava/lang/String;

    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "sn_status"

    aput-object v3, v0, v2

    const-string v2, "sn_user"

    aput-object v2, v0, v1

    const-string v1, "t_draft_table"

    aput-object v1, v0, v5

    const-string v1, "sn_comment"

    aput-object v1, v0, v6

    const-string v1, "sn_portfolio"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "t_investment_calendar_table"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sn_organize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "im_talk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "im_message"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "t_taking_pos_table"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "system_event"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->dropTableNames:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 62
    sget-object v1, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->createTableSqls:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 63
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 73
    :cond_1
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0
.end method

.method public static dropTables(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 78
    sget-object v1, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->dropTableNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 89
    :cond_1
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0
.end method

.method private static insertNewUser(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)V
    .locals 3

    .prologue
    .line 130
    sget-boolean v0, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->beginTransaction()V

    .line 133
    const-string v0, "sn_user"

    const/4 v1, 0x0

    .line 134
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/UserTable;->contentValues(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 135
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->endTransaction()V

    :cond_2
    throw v0
.end method

.method public static recreateTables(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 100
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "userId"

    aput-object v0, v2, v8

    const-string v0, "screenName"

    aput-object v0, v2, v9

    const-string v0, "profileImageUrl"

    aput-object v0, v2, v10

    const-string v0, "step"

    aput-object v0, v2, v11

    .line 103
    const-string v1, "sn_user"

    const-string v3, "userId= ?"

    new-array v4, v9, [Ljava/lang/String;

    .line 104
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/storage/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, -0x1

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :cond_0
    new-instance v5, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 113
    aget-object v1, v2, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 114
    aget-object v1, v2, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 115
    aget-object v1, v2, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setProfileImageUrl(Ljava/lang/String;)V

    .line 116
    aget-object v1, v2, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/User;->setStep(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->dropTables(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V

    .line 121
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->createTable(Lcom/xueqiu/android/base/storage/SQLiteDatabase;)V

    .line 122
    if-eqz v5, :cond_2

    .line 123
    invoke-static {p0, v5}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->insertNewUser(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Lcom/xueqiu/android/community/model/User;)V

    .line 126
    :cond_2
    const-string v0, "last_update_friends_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, p1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 127
    return-void
.end method

.method public static upgrade(Landroid/content/Context;Lcom/xueqiu/android/base/storage/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 92
    if-ge p2, p3, :cond_0

    .line 93
    invoke-static {p1, p0}, Lcom/xueqiu/android/base/storage/DatabaseHelperSupport;->recreateTables(Lcom/xueqiu/android/base/storage/SQLiteDatabase;Landroid/content/Context;)V

    .line 95
    :cond_0
    return-void
.end method

.class public Lcom/xueqiu/android/message/model/Talk$Table;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final COLLAPSED:Ljava/lang/String; = "collapsed"

.field public static final CREATE_TABLE:Ljava/lang/String;

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final IS_GROUP:Ljava/lang/String; = "is_group"

.field public static final LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final READ_AT:Ljava/lang/String; = "read_at"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "im_talk"

.field private static final TAG:Ljava/lang/String; = "Talk.Table"

.field public static final TARGET_READ_AT:Ljava/lang/String; = "target_read_at"

.field public static final TOP:Ljava/lang/String; = "TOP"

.field public static final UNREAD:Ljava/lang/String; = "UNREAD"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 462
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ID"

    aput-object v1, v0, v4

    const-string v1, "TOP"

    aput-object v1, v0, v5

    const-string v1, "NOTIFY"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "UNREAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_group"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "target_read_at"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read_at"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "active"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "collapsed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/message/model/Talk$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE im_talk (ID INTEGER,TOP TINYINT(1) DEFAULT 0,NOTIFY TINYINT(1) DEFAULT 0,UNREAD INTEGER DEFAULT 0,summary TEXT,is_group TINYINT(1) DEFAULT 0,last_time INTEGER DEFAULT 0,target_read_at INTEGER DEFAULT 0,read_at INTEGER DEFAULT 0,active TINYINT(1) DEFAULT 1,collapsed TINYINT(1) DEFAULT 0,status TINYINT(1) DEFAULT 0,PRIMARY KEY(ID, is_group));"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX `idx_talk_last_time` ON `%s` (`%s` DESC);"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "im_talk"

    aput-object v3, v2, v4

    const-string v3, "last_time"

    aput-object v3, v2, v5

    .line 481
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/message/model/Talk$Table;->CREATE_TABLE:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/message/model/Talk;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 510
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 512
    const-string v0, "ID"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 513
    const-string v4, "TOP"

    # getter for: Lcom/xueqiu/android/message/model/Talk;->isTop:Z
    invoke-static {p0}, Lcom/xueqiu/android/message/model/Talk;->access$000(Lcom/xueqiu/android/message/model/Talk;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    const-string v4, "NOTIFY"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v0, "UNREAD"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v0, "summary"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v4, "is_group"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v0, "last_time"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getTargetReadAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 520
    const-string v0, "target_read_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getTargetReadAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    :goto_4
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getReadAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 525
    const-string v0, "read_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getReadAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    :goto_5
    const-string v4, "active"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v0, "collapsed"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v0, "status"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    return-object v3

    :cond_0
    move v0, v2

    .line 513
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 514
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 517
    goto :goto_2

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_3

    .line 522
    :cond_4
    const-string v0, "target_read_at"

    const-string v4, "last_time"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 527
    :cond_5
    const-string v0, "read_at"

    const-string v4, "last_time"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    :cond_6
    move v0, v2

    .line 529
    goto :goto_6

    :cond_7
    move v1, v2

    .line 530
    goto :goto_7
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/Talk;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 484
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 487
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 488
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 491
    :cond_2
    new-instance v3, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v3}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 492
    const-string v0, "ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 493
    const-string v0, "TOP"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 494
    const-string v0, "NOTIFY"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setNotify(Z)V

    .line 495
    const-string v0, "UNREAD"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 496
    const-string v0, "summary"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 497
    const-string v0, "is_group"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 498
    new-instance v0, Ljava/util/Date;

    const-string v4, "target_read_at"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 499
    new-instance v0, Ljava/util/Date;

    const-string v4, "read_at"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setReadAt(Ljava/util/Date;)V

    .line 500
    new-instance v0, Ljava/util/Date;

    const-string v4, "last_time"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 501
    const-string v0, "active"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 502
    const-string v0, "collapsed"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_5
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 503
    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    move-object v0, v3

    .line 505
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 493
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 494
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 497
    goto :goto_3

    :cond_6
    move v0, v2

    .line 501
    goto :goto_4

    :cond_7
    move v1, v2

    .line 502
    goto :goto_5
.end method

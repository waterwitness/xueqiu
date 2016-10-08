.class public Lcom/xueqiu/android/message/model/Message$Table;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final CREATE_TABLE:Ljava/lang/String;

.field public static final FROM_ID:Ljava/lang/String; = "from_id"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_FROM_GROUP:Ljava/lang/String; = "is_from_group"

.field public static final IS_TO_GROUP:Ljava/lang/String; = "is_to_group"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "im_message"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TO_ID:Ljava/lang/String; = "to_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 533
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "sequence"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const-string v1, "text"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "from_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "to_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_to_group"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_from_group"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "created_at"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/message/model/Message$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE im_message(id INTEGER,sequence INTEGER, type INTEGER,status INTEGER,text TEXT,summary TEXT,from_id INTEGER,to_id INTEGER,is_to_group TINYINT(1) DEFAULT 0,is_from_group TINYINT(1) DEFAULT 0,created_at INTEGER, PRIMARY KEY(id, sequence));"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX `idx_message_from_to_ts` ON `%s` (`%s`, `%s`, `%s` DESC);"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "im_message"

    aput-object v3, v2, v4

    const-string v3, "from_id"

    aput-object v3, v2, v5

    const-string v3, "to_id"

    aput-object v3, v2, v6

    const-string v3, "created_at"

    aput-object v3, v2, v7

    .line 550
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/message/model/Message$Table;->CREATE_TABLE:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/message/model/Message;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 576
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 577
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    const-string v1, "sequence"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v1, "summary"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v1, "from_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    const-string v1, "to_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    const-string v1, "is_from_group"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 586
    const-string v1, "is_to_group"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    const-string v1, "created_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    return-object v0
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/Message;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 553
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    const/4 v0, 0x0

    .line 572
    :goto_0
    return-object v0

    .line 556
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 557
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    :cond_2
    new-instance v3, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v3}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    .line 561
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/Message;->setId(J)V

    .line 562
    const-string v0, "sequence"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/Message;->setSequence(J)V

    .line 563
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 564
    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 565
    const-string v0, "text"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 566
    const-string v0, "summary"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 567
    const-string v0, "from_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/Message;->setFromId(J)V

    .line 568
    const-string v0, "to_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/Message;->setToId(J)V

    .line 569
    const-string v0, "is_from_group"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setFromGroup(Z)V

    .line 570
    const-string v0, "is_to_group"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/message/model/Message;->setToGroup(Z)V

    .line 571
    new-instance v0, Ljava/util/Date;

    const-string v1, "created_at"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Message;->setCreatedAt(Ljava/util/Date;)V

    move-object v0, v3

    .line 572
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 569
    goto :goto_1

    :cond_4
    move v1, v2

    .line 570
    goto :goto_2
.end method

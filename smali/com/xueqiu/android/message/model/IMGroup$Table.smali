.class public Lcom/xueqiu/android/message/model/IMGroup$Table;
.super Ljava/lang/Object;
.source "IMGroup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALLOW_INVITE_USER:Ljava/lang/String; = "allow_invite_user"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CREATED_AT:Ljava/lang/String; = "createdAt"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_organize (id INTEGER,name STRING,description TEXT,profileImageUrl STRING,count INTEGER,limit_count INTEGER,masterId INTEGER,pub TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,joined TINYINT(1) DEFAULT 0,empty_name TINYINT(1) DEFAULT 0,allow_invite_user TINYINT(1) DEFAULT 0,createdAt INTEGER,PRIMARY KEY(id))"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final EMPTY_NAME:Ljava/lang/String; = "empty_name"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final JOINED:Ljava/lang/String; = "joined"

.field public static final LIMIT_COUNT:Ljava/lang/String; = "limit_count"

.field public static final MASTER_ID:Ljava/lang/String; = "masterId"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final PUB:Ljava/lang/String; = "pub"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_organize"

.field private static final TAG:Ljava/lang/String; = "IMGroupTable"

.field public static final TRUNCATED:Ljava/lang/String; = "truncated"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 385
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "profileImageUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "masterId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "joined"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "empty_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "limit_count"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allow_invite_user"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/message/model/IMGroup$Table;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/message/model/IMGroup;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 438
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "description"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "profileImageUrl"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "count"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v0, "masterId"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const-string v4, "pub"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    const-string v4, "truncated"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v4, "joined"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v4, "empty_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->isEmptyName()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v0, "limit_count"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v0, "allow_invite_user"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->isAllowInviteUser()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "createdAt"

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    .line 444
    goto :goto_0

    :cond_2
    move v0, v2

    .line 445
    goto :goto_1

    :cond_3
    move v0, v2

    .line 446
    goto :goto_2

    :cond_4
    move v0, v2

    .line 447
    goto :goto_3

    :cond_5
    move v1, v2

    .line 449
    goto :goto_4
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    .line 410
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 411
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
    :cond_2
    new-instance v3, Lcom/xueqiu/android/message/model/IMGroup;

    invoke-direct {v3}, Lcom/xueqiu/android/message/model/IMGroup;-><init>()V

    .line 416
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/IMGroup;->setId(J)V

    .line 417
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setName(Ljava/lang/String;)V

    .line 418
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setDescription(Ljava/lang/String;)V

    .line 419
    const-string v0, "profileImageUrl"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setProfileImageUrl(Ljava/lang/String;)V

    .line 420
    const-string v0, "count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setCount(I)V

    .line 421
    const-string v0, "masterId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/message/model/IMGroup;->setMasterId(J)V

    .line 422
    const-string v0, "pub"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setPub(Z)V

    .line 423
    const-string v0, "truncated"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setTruncated(Z)V

    .line 424
    const-string v0, "joined"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setJoined(Z)V

    .line 425
    const-string v0, "empty_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setEmptyName(Z)V

    .line 426
    const-string v0, "limit_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setLimitCount(I)V

    .line 427
    const-string v0, "allow_invite_user"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    :goto_5
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/message/model/IMGroup;->setAllowInviteUser(Z)V

    .line 428
    new-instance v0, Ljava/util/Date;

    const-string v1, "createdAt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setCreatedAt(Ljava/util/Date;)V

    move-object v0, v3

    .line 430
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 422
    goto :goto_1

    :cond_4
    move v0, v2

    .line 423
    goto :goto_2

    :cond_5
    move v0, v2

    .line 424
    goto :goto_3

    :cond_6
    move v0, v2

    .line 425
    goto :goto_4

    :cond_7
    move v1, v2

    .line 427
    goto :goto_5
.end method

.class public final Lcom/xueqiu/android/base/storage/DraftTable;
.super Ljava/lang/Object;
.source "DraftTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE t_draft_table(draft_id INTEGER PRIMARY KEY AUTOINCREMENT,title STRING,text TEXT,type INTEGER,img_name STRING,timestamp INTEGER)"

.field public static final DRAFT_ID:Ljava/lang/String; = "draft_id"

.field public static final IMG_NAME:Ljava/lang/String; = "img_name"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "t_draft_table"

.field private static final TAG:Ljava/lang/String; = "DraftTable"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "draft_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "img_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/DraftTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/community/model/Draft;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Draft;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Draft;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Draft;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v1, "img_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Draft;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Draft;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    return-object v0
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Draft;
    .locals 4

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const-string v0, "DraftTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 40
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    :cond_2
    new-instance v0, Lcom/xueqiu/android/community/model/Draft;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Draft;-><init>()V

    .line 44
    const-string v1, "draft_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setId(I)V

    .line 45
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    .line 46
    const-string v1, "text"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setText(Ljava/lang/String;)V

    .line 47
    const-string v1, "type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setType(I)V

    .line 48
    const-string v1, "img_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setImageName(Ljava/lang/String;)V

    .line 49
    const-string v1, "timestamp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/Draft;->setTimestamp(J)V

    goto :goto_0
.end method

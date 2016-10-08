.class public final Lcom/xueqiu/android/base/storage/StockGroupTable;
.super Ljava/lang/Object;
.source "StockGroupTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CREATE_AT:Ljava/lang/String; = "create_at"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_stock_group(group_id INTEGER,name TEXT,create_at INTEGER,stock_codes TEXT,order_id TINYINT(1) DEFAULT 0, PRIMARY KEY(group_id))"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final STOCK_CODES:Ljava/lang/String; = "stock_codes"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_stock_group"

.field private static final TAG:Ljava/lang/String; = "StockGroupTable"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "create_at"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stock_codes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "order_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/StockGroupTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/stock/model/StockGroup;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 58
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v0, "group_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getGrouId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "create_at"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getCreateAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getStockCodes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getStockCodes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 72
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    const-string v0, "stock_codes"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "order_id"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockGroup;->getOrderId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    return-object v1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/stock/model/StockGroup;
    .locals 4

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    const-string v0, "StockGroupTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    :cond_2
    new-instance v0, Lcom/xueqiu/android/stock/model/StockGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockGroup;-><init>()V

    .line 47
    const-string v1, "group_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setGrouId(I)V

    .line 48
    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setName(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/util/Date;

    const-string v2, "create_at"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setCreateAt(Ljava/util/Date;)V

    .line 50
    const-string v1, "stock_codes"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setStockCodes([Ljava/lang/String;)V

    .line 51
    const-string v1, "order_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setOrderId(I)V

    goto :goto_0
.end method

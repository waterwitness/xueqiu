.class public final Lcom/xueqiu/android/base/storage/TakingPositionTable;
.super Ljava/lang/Object;
.source "TakingPositionTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACCUM_AMOUNT:Ljava/lang/String; = "accumamount"

.field public static final ACCUM_RATE:Ljava/lang/String; = "accumrate"

.field public static final AVG_PRICE:Ljava/lang/String; = "avgprice"

.field public static final COST:Ljava/lang/String; = "cost"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE t_taking_pos_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, t_name STRING,symbol STRING,shares INTEGER,avgprice INTEGER,floatamount INTEGER,floatrate INTEGER,accumrate INTEGER,accumamount INTEGER,marketvalue INTEGER,quoteprice INTEGER,cost INTEGER,type TINYINT(1) DEFAULT 0)"

.field public static final FLOAT_AMOUNT:Ljava/lang/String; = "floatamount"

.field public static final FLOAT_RATE:Ljava/lang/String; = "floatrate"

.field public static final MARKET_VALUE:Ljava/lang/String; = "marketvalue"

.field public static final NAME:Ljava/lang/String; = "t_name"

.field public static final QUOTE_PRICE:Ljava/lang/String; = "quoteprice"

.field public static final SHARES:Ljava/lang/String; = "shares"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "t_taking_pos_table"

.field private static final TAG:Ljava/lang/String; = "TakingPositionTable"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_MARKET:I = 0x2

.field public static final TYPE_STOCK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shares"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "avgprice"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "floatamount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "floatrate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accumrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accumamount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "marketvalue"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cost"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "quoteprice"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/TakingPositionTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/trade/model/TakingPosition;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v1, "t_name"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "symbol"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "shares"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getShares()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 81
    const-string v1, "avgprice"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getAvgPricel()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 82
    const-string v1, "floatamount"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getFloatAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 83
    const-string v1, "floatrate"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getFloatRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 84
    const-string v1, "accumrate"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getAccumRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 85
    const-string v1, "accumamount"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getAccumAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 86
    const-string v1, "marketvalue"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getMarketValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 87
    const-string v1, "quoteprice"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getQuotePrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 88
    const-string v1, "cost"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TakingPosition;->getCost()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 89
    return-object v0
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/trade/model/TakingPosition;
    .locals 4

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const-string v0, "TakingPositionTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 55
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 56
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    :cond_2
    new-instance v0, Lcom/xueqiu/android/trade/model/TakingPosition;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TakingPosition;-><init>()V

    .line 60
    const-string v1, "t_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TakingPosition;->setName(Ljava/lang/String;)V

    .line 61
    const-string v1, "symbol"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TakingPosition;->setSymbol(Ljava/lang/String;)V

    .line 62
    const-string v1, "shares"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setShares(D)V

    .line 63
    const-string v1, "avgprice"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAvgPrice(D)V

    .line 64
    const-string v1, "floatamount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setFloatAmount(D)V

    .line 65
    const-string v1, "floatrate"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setFloatRate(D)V

    .line 66
    const-string v1, "accumrate"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAccumRate(D)V

    .line 67
    const-string v1, "accumamount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAccumRate(D)V

    .line 68
    const-string v1, "marketvalue"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setMarketValue(D)V

    .line 69
    const-string v1, "quoteprice"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setQuotePrice(D)V

    .line 70
    const-string v1, "cost"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setCost(D)V

    goto/16 :goto_0
.end method

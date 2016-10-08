.class public final Lcom/xueqiu/android/base/storage/PortFolioTable;
.super Ljava/lang/Object;
.source "PortFolioTable.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final CHANGE:Ljava/lang/String; = "change"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE sn_portfolio(rowidINTEGER PRIMARY KEY,symbol TEXT,name TEXT,alias TEXT,current INTEGER,change INTEGER,percentage INTEGER,open INTEGER,close INTEGER,marketCapital INTEGER,showMarketCapital TEXT,volume INTEGER,volumeAverage INTEGER,pe_ttm TEXT,pe_lyr TEXT,dividend INTEGER,peRatio INTEGER,high INTEGER,low INTEGER,week52High INTEGER,week52Low INTEGER,following INTEGER,type TEXT,flag INTEGER,holding INTEGER)"

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DIVID_END:Ljava/lang/String; = "dividend"

.field public static final FLAG:Ljava/lang/String; = "flag"

.field public static final FOLLOWING:Ljava/lang/String; = "following"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final HOLDING:Ljava/lang/String; = "holding"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final MARKET_CAPITAL:Ljava/lang/String; = "marketCapital"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OPEN:Ljava/lang/String; = "open"

.field public static final PERCENTAGE:Ljava/lang/String; = "percentage"

.field public static final PE_LYR:Ljava/lang/String; = "pe_lyr"

.field public static final PE_RATIO:Ljava/lang/String; = "peRatio"

.field public static final PE_TTM:Ljava/lang/String; = "pe_ttm"

.field public static final ROWID:Ljava/lang/String; = "rowid"

.field public static final SHOW_MARKET_CAPITAL:Ljava/lang/String; = "showMarketCapital"

.field public static final SYMBOL:Ljava/lang/String; = "symbol"

.field public static final TABLE_COLUMNS:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "sn_portfolio"

.field private static final TAG:Ljava/lang/String; = "PortFolioTable"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOLUME:Ljava/lang/String; = "volume"

.field public static final VOLUME_AVERAGE:Ljava/lang/String; = "volumeAverage"

.field public static final WEEK_52_HIGH:Ljava/lang/String; = "week52High"

.field public static final WEEK_52_LOW:Ljava/lang/String; = "week52Low"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rowid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alias"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "change"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "percentage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "close"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "marketCapital"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "showMarketCapital"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "volume"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "volumeAverage"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pe_ttm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pe_lyr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dividend"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "peRatio"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "high"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "low"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "week52High"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "week52Low"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "following"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "flag"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "holding"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/storage/PortFolioTable;->TABLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValues(Lcom/xueqiu/android/stock/model/OldPortFolio;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 130
    const-string v0, "symbol"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "alias"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "current"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    const-string v0, "change"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getChange()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 135
    const-string v0, "percentage"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 136
    const-string v0, "open"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getOpen()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 138
    const-string v0, "close"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getClose()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 139
    const-string v0, "marketCapital"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getMarketCapital()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 140
    const-string v0, "showMarketCapital"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getShowMarketCapital()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "volume"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getVolume()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 142
    const-string v0, "volumeAverage"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getVolumeAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 143
    const-string v0, "pe_ttm"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPe_ttm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "pe_lyr"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPe_lyr()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 146
    const-string v0, "dividend"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getDividend()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 147
    const-string v0, "peRatio"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPeRatio()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 148
    const-string v0, "high"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getHigh()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 149
    const-string v0, "low"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getLow()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 150
    const-string v0, "week52High"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getWeek52High()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 151
    const-string v0, "week52Low"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getWeek52Low()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 152
    const-string v4, "following"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "flag"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v0, "holding"

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->isHolding()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    return-object v3

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v1, v2

    .line 155
    goto :goto_1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/xueqiu/android/stock/model/OldPortFolio;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const-string v0, "PortFolioTable"

    const-string v1, "Cann\'t parse Cursor, bacause cursor is null or empty."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 83
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 84
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    :cond_2
    new-instance v3, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 89
    const-string v0, "symbol"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 90
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 91
    const-string v0, "alias"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAlias(Ljava/lang/String;)V

    .line 93
    const-string v0, "current"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrent(D)V

    .line 95
    const-string v0, "change"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setChange(D)V

    .line 96
    const-string v0, "percentage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 97
    const-string v0, "open"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setOpen(D)V

    .line 98
    const-string v0, "close"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setClose(D)V

    .line 99
    const-string v0, "marketCapital"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setMarketCapital(D)V

    .line 101
    const-string v0, "showMarketCapital"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setShowMarketCapital(Ljava/lang/String;)V

    .line 102
    const-string v0, "volume"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setVolume(D)V

    .line 103
    const-string v0, "volumeAverage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setVolumeAverage(D)V

    .line 105
    const-string v0, "pe_ttm"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPe_ttm(Ljava/lang/String;)V

    .line 106
    const-string v0, "pe_lyr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPe_lyr(D)V

    .line 108
    const-string v0, "dividend"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDividend(D)V

    .line 109
    const-string v0, "peRatio"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPeRatio(D)V

    .line 111
    const-string v0, "high"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setHigh(D)V

    .line 112
    const-string v0, "low"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setLow(D)V

    .line 114
    const-string v0, "week52High"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setWeek52High(D)V

    .line 115
    const-string v0, "week52Low"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setWeek52Low(D)V

    .line 117
    const-string v0, "following"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFollowing(Z)V

    .line 118
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setType(Ljava/lang/String;)V

    .line 119
    const-string v0, "flag"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFlag(I)V

    .line 120
    const-string v0, "holding"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setHolding(Z)V

    move-object v0, v3

    .line 122
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 117
    goto :goto_1

    :cond_4
    move v1, v2

    .line 120
    goto :goto_2
.end method

.class public Lcom/xueqiu/android/stock/model/StockRank;
.super Ljava/lang/Object;
.source "StockRank.java"


# static fields
.field public static final BIT_COIN:I = 0x33

.field public static final BOND_BUY_BACK:I = 0x2c

.field public static final BOND_CAN_SWITCH:I = 0x29

.field public static final BOND_COMPANY:I = 0x2b

.field public static final BOND_NATIONAL:I = 0x2a

.field public static final FUND:I = 0x1f

.field public static final FUND_CLOSE:I = 0x22

.field public static final FUND_CURRENCY:I = 0x20

.field public static final FUND_OPEN:I = 0x21

.field public static final HGT_AH:I = 0x49

.field public static final HGT_HK:I = 0x48

.field public static final HGT_HU:I = 0x47

.field public static final HK_FALL:I = 0x18

.field public static final HK_HOT_ONE_DAY:I = 0x16

.field public static final HK_HOT_ONE_HOUR:I = 0x15

.field public static final HK_RISE:I = 0x17

.field public static final HS_AMOUNT:I = 0x5

.field public static final HS_FALL:I = 0x4

.field public static final HS_HOT_ONE_DAY:I = 0x2

.field public static final HS_HOT_ONE_HOUR:I = 0x1

.field public static final HS_NEW_IPO:I = 0x9

.field public static final HS_PRE_IPO:I = 0x8

.field public static final HS_RISE:I = 0x3

.field public static final HS_TURNOVER_RATE:I = 0x6

.field public static final HS_XQ:I = 0xa

.field public static final INDUSTRY:I = 0x3d

.field public static final OC_MARKET_FALL:I = 0x52

.field public static final OC_MARKET_RISE:I = 0x51

.field public static final OC_PROTOCAL_FALL:I = 0x54

.field public static final OC_PROTOCAL_RISE:I = 0x53

.field public static final PRIVATE_FUND_1:I = 0x4a

.field public static final PRIVATE_FUND_12:I = 0x4d

.field public static final PRIVATE_FUND_3:I = 0x4b

.field public static final PRIVATE_FUND_6:I = 0x4c

.field public static final US_ALL_FALL:I = 0x13

.field public static final US_ALL_RISE:I = 0x12

.field public static final US_CHINA_FALL:I = 0xe

.field public static final US_CHINA_RISE:I = 0xd

.field public static final US_ETF:I = 0x11

.field public static final US_HOT_ONE_DAY:I = 0xc

.field public static final US_HOT_ONE_HOUR:I = 0xb

.field public static final US_NEW_IPO:I = 0xbe

.field public static final US_PRE_IPO:I = 0xb4

.field public static final US_STAR_FALL:I = 0x10

.field public static final US_STAR_RISE:I = 0xf


# instance fields
.field private mAhStockQuote:Lcom/xueqiu/android/stock/model/AHStockQuote;

.field private mOldPortFolio:Lcom/xueqiu/android/stock/model/OldPortFolio;

.field private rankType:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/model/AHStockQuote;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockRank;->mAhStockQuote:Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/stock/model/OldPortFolio;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockRank;->mOldPortFolio:Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 155
    return-void
.end method

.method public static convertAhQuoteToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 352
    new-instance v3, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/model/StockRank;-><init>(Lcom/xueqiu/android/stock/model/AHStockQuote;)V

    .line 353
    invoke-virtual {v3, p1}, Lcom/xueqiu/android/stock/model/StockRank;->setRankType(I)V

    .line 354
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_0
    return-object v1
.end method

.method public static convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 341
    new-instance v3, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/model/StockRank;-><init>(Lcom/xueqiu/android/stock/model/OldPortFolio;)V

    .line 342
    invoke-virtual {v3, p1}, Lcom/xueqiu/android/stock/model/StockRank;->setRankType(I)V

    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method private static formatBuyBackName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 391
    :cond_0
    const-string v0, ""

    .line 400
    :goto_0
    return-object v0

    .line 396
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 400
    :goto_1
    const v2, 0x7f070054

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/r;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public static formatNameAndSortForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/xueqiu/android/stock/model/StockRank$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockRank$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 378
    invoke-static {p0}, Lcom/xueqiu/android/stock/model/StockRank;->formatNameForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 379
    return-object p0
.end method

.method public static formatNameForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 384
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/stock/model/StockRank;->formatBuyBackName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_0
    return-object p0
.end method

.method public static parseAmountAndTurnoverRateRankResult(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v1, 0x0

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 195
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 201
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 205
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    .line 206
    new-instance v10, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v10}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 207
    invoke-virtual {v10, v4}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v10, v6, v7}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrent(D)V

    .line 210
    invoke-virtual {v10, v8, v9}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 212
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setTurnoverRate(Ljava/lang/Double;)V

    .line 218
    :goto_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAmount(D)V

    goto :goto_1

    .line 221
    :cond_2
    return-object v2
.end method

.method public static parseHSPreIpoRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 259
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 261
    new-instance v4, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v4}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 262
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 263
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4, v6}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 267
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoTime(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    .line 270
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 271
    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoPrice(D)V

    .line 274
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return-object v2
.end method

.method public static parseNewIpoRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 315
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 316
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 317
    new-instance v4, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v4}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 319
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 320
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v4, v6}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    .line 324
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 325
    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrent(D)V

    .line 327
    :cond_0
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 328
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 329
    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoPrice(D)V

    .line 332
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_2
    return-object v2
.end method

.method public static parseUSPreIpoRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 288
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 289
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 290
    new-instance v4, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v4}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 291
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v4, v6}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 296
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 297
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoTime(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v4, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPriceRange(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return-object v2
.end method

.method public static parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 232
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 234
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    .line 238
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    .line 239
    new-instance v3, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 240
    invoke-virtual {v3, v4}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3, v5}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, v6, v7}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrent(D)V

    .line 243
    invoke-virtual {v3, v8, v9}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 245
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getAhStockQuote()Lcom/xueqiu/android/stock/model/AHStockQuote;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockRank;->mAhStockQuote:Lcom/xueqiu/android/stock/model/AHStockQuote;

    return-object v0
.end method

.method public getPortFolio()Lcom/xueqiu/android/stock/model/OldPortFolio;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockRank;->mOldPortFolio:Lcom/xueqiu/android/stock/model/OldPortFolio;

    return-object v0
.end method

.method public getRankType()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockRank;->rankType:I

    return v0
.end method

.method public setAhStockQuote(Lcom/xueqiu/android/stock/model/AHStockQuote;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockRank;->mAhStockQuote:Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 179
    return-void
.end method

.method public setPortFolio(Lcom/xueqiu/android/stock/model/OldPortFolio;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockRank;->mOldPortFolio:Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 183
    return-void
.end method

.method public setRankType(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockRank;->rankType:I

    .line 167
    return-void
.end method

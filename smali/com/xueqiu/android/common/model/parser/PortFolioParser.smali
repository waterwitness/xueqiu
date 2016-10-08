.class public Lcom/xueqiu/android/common/model/parser/PortFolioParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "PortFolioParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/OldPortFolio;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>()V

    .line 30
    const-string v0, "symbol"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "symbol"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSymbol(Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v0, "code"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCode(Ljava/lang/String;)V

    .line 36
    :cond_1
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 39
    :cond_2
    const-string v0, "company_name"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    const-string v0, "company_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 42
    :cond_3
    const-string v0, "simple_name"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    const-string v0, "simple_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setName(Ljava/lang/String;)V

    .line 45
    :cond_4
    const-string v0, "alias"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAlias(Ljava/lang/String;)V

    .line 48
    :cond_5
    const-string v0, "exchange"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    const-string v0, "exchange"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setExchange(Ljava/lang/String;)V

    .line 51
    :cond_6
    const-string v0, "current"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    const-string v0, "current"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrent(D)V

    .line 54
    :cond_7
    const-string v0, "change"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    const-string v0, "change"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setChange(D)V

    .line 57
    :cond_8
    const-string v0, "percentage"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 60
    :cond_9
    const-string v0, "quote_percentage"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    const-string v0, "quote_percentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 63
    :cond_a
    const-string v0, "percent"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 64
    const-string v0, "percent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPercentage(D)V

    .line 66
    :cond_b
    const-string v0, "open"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 67
    const-string v0, "open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setOpen(D)V

    .line 69
    :cond_c
    const-string v0, "close"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setClose(D)V

    .line 72
    :cond_d
    const-string v0, "marketCapital"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 73
    const-string v0, "marketCapital"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setMarketCapital(D)V

    .line 75
    :cond_e
    const-string v0, "showMarketCapital"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    const-string v0, "showMarketCapital"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setShowMarketCapital(Ljava/lang/String;)V

    .line 78
    :cond_f
    const-string v0, "volume"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setVolume(D)V

    .line 81
    :cond_10
    const-string v0, "volumeAverage"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    const-string v0, "volumeAverage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setVolumeAverage(D)V

    .line 84
    :cond_11
    const-string v0, "pe_ttm"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    const-string v0, "pe_ttm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPe_ttm(Ljava/lang/String;)V

    .line 87
    :cond_12
    const-string v0, "pe_lyr"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    const-string v0, "pe_lyr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPe_lyr(D)V

    .line 90
    :cond_13
    const-string v0, "dividend"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    const-string v0, "dividend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDividend(D)V

    .line 93
    :cond_14
    const-string v0, "peRatio"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 94
    const-string v0, "peRatio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPeRatio(D)V

    .line 96
    :cond_15
    const-string v0, "high"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 97
    const-string v0, "high"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setHigh(D)V

    .line 99
    :cond_16
    const-string v0, "low"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 100
    const-string v0, "low"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setLow(D)V

    .line 102
    :cond_17
    const-string v0, "high52week"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 103
    const-string v0, "high52week"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setWeek52High(D)V

    .line 105
    :cond_18
    const-string v0, "low52week"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 106
    const-string v0, "low52week"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setWeek52Low(D)V

    .line 108
    :cond_19
    const-string v0, "following"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 109
    const-string v0, "following"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFollowing(Z)V

    .line 111
    :cond_1a
    const-string v0, "afterHoursPct"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 112
    const-string v0, "afterHoursPct"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAfterHoursPct(D)V

    .line 114
    :cond_1b
    const-string v0, "afterHoursChg"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 115
    const-string v0, "afterHoursChg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAfterHoursChg(D)V

    .line 117
    :cond_1c
    const-string v0, "afterHoursTime"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 119
    :try_start_0
    const-string v0, "afterHoursTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAfterHoursTime(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_1d
    :goto_0
    const-string v0, "last_close"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 126
    const-string v0, "last_close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setLast_close(D)V

    .line 128
    :cond_1e
    const-string v0, "amount"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 129
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setAmount(D)V

    .line 131
    :cond_1f
    const-string v0, "rise_stop"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 132
    const-string v0, "rise_stop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setRise_stop(D)V

    .line 134
    :cond_20
    const-string v0, "fall_stop"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 135
    const-string v0, "fall_stop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFall_stop(D)V

    .line 137
    :cond_21
    const-string v0, "eps"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 138
    const-string v0, "eps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setEps(D)V

    .line 140
    :cond_22
    const-string v0, "net_assets"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 141
    const-string v0, "net_assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setNet_assets(D)V

    .line 143
    :cond_23
    const-string v0, "totalShares"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 144
    const-string v0, "totalShares"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setTotalShares(D)V

    .line 146
    :cond_24
    const-string v0, "yield"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    const-string v0, "yield"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setYield(D)V

    .line 149
    :cond_25
    const-string v0, "instOwn"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 150
    const-string v0, "instOwn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setInstOwn(D)V

    .line 152
    :cond_26
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 153
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setType(Ljava/lang/String;)V

    .line 155
    :cond_27
    const-string v0, "currency_unit"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    const-string v0, "currency_unit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCurrencyUnit(Ljava/lang/String;)V

    .line 158
    :cond_28
    const-string v0, "count"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 159
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCount(I)V

    .line 162
    :cond_29
    const-string v0, "kzz_stock_symbol"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 163
    const-string v0, "kzz_stock_symbol"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzStockSymbol(Ljava/lang/String;)V

    .line 165
    :cond_2a
    const-string v0, "kzz_stock_name"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 166
    const-string v0, "kzz_stock_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzStockName(Ljava/lang/String;)V

    .line 168
    :cond_2b
    const-string v0, "kzz_stock_current"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 169
    const-string v0, "kzz_stock_current"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzStockCurrent(D)V

    .line 171
    :cond_2c
    const-string v0, "kzz_convert_price"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 172
    const-string v0, "kzz_convert_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzConvertPrice(D)V

    .line 174
    :cond_2d
    const-string v0, "kzz_covert_value"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 175
    const-string v0, "kzz_covert_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzConvertValue(D)V

    .line 177
    :cond_2e
    const-string v0, "kzz_cpr"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 178
    const-string v0, "kzz_cpr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzCpr(D)V

    .line 180
    :cond_2f
    const-string v0, "kzz_putback_price"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 181
    const-string v0, "kzz_putback_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzPutbackPrice(D)V

    .line 183
    :cond_30
    const-string v0, "kzz_convert_time"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 184
    const-string v0, "kzz_convert_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzConvertTime(Ljava/lang/String;)V

    .line 186
    :cond_31
    const-string v0, "kzz_redempt_price"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 187
    const-string v0, "kzz_redempt_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzRedemptPrice(D)V

    .line 189
    :cond_32
    const-string v0, "kzz_straight_price"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 190
    const-string v0, "kzz_straight_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setKzzStraightPrice(D)V

    .line 192
    :cond_33
    const-string v0, "net_profit_yield"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "net_profit_yield"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 193
    const-string v0, "net_profit_yield"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setNetProfitYield(D)V

    .line 195
    :cond_34
    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_35

    .line 197
    :try_start_1
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setUpdatedTime(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    :cond_35
    :goto_1
    const-string v0, "ipo_time"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 205
    const-string v0, "ipo_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoTime(Ljava/lang/String;)V

    .line 207
    :cond_36
    const-string v0, "release_date"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 208
    const-string v0, "release_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setReleaseDate(Ljava/lang/String;)V

    .line 210
    :cond_37
    const-string v0, "ipo_price"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 211
    const-string v0, "ipo_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIpoPrice(D)V

    .line 213
    :cond_38
    const-string v0, "par_value"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 214
    const-string v0, "par_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setParValue(Ljava/lang/String;)V

    .line 216
    :cond_39
    const-string v0, "circulation"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 217
    const-string v0, "circulation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setCirculation(Ljava/lang/String;)V

    .line 219
    :cond_3a
    const-string v0, "due_time"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 220
    const-string v0, "due_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDueTime(Ljava/lang/String;)V

    .line 222
    :cond_3b
    const-string v0, "value_date"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 223
    const-string v0, "value_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setValueDate(Ljava/lang/String;)V

    .line 225
    :cond_3c
    const-string v0, "due_date"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 226
    const-string v0, "due_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDueDate(Ljava/lang/String;)V

    .line 228
    :cond_3d
    const-string v0, "publisher"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 229
    const-string v0, "publisher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPublisher(Ljava/lang/String;)V

    .line 231
    :cond_3e
    const-string v0, "redeem_type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 232
    const-string v0, "redeem_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setRedeemType(Ljava/lang/String;)V

    .line 234
    :cond_3f
    const-string v0, "issue_type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 235
    const-string v0, "issue_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setIssueType(Ljava/lang/String;)V

    .line 237
    :cond_40
    const-string v0, "bond_type"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 238
    const-string v0, "bond_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setBondType(Ljava/lang/String;)V

    .line 240
    :cond_41
    const-string v0, "warrant"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 241
    const-string v0, "warrant"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setWarrant(Ljava/lang/String;)V

    .line 243
    :cond_42
    const-string v0, "sale_rrg"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 244
    const-string v0, "sale_rrg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setSaleOrg(Ljava/lang/String;)V

    .line 246
    :cond_43
    const-string v0, "rate"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 247
    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setRate(Ljava/lang/String;)V

    .line 249
    :cond_44
    const-string v0, "currency"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 250
    const-string v0, "currency"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPriceCurrency(Ljava/lang/String;)V

    .line 252
    :cond_45
    const-string v0, "follow7d"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 253
    const-string v0, "follow7d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFollow7dCount(I)V

    .line 255
    :cond_46
    const-string v0, "deal7d"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 256
    const-string v0, "deal7d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDeal7dCount(I)V

    .line 258
    :cond_47
    const-string v0, "tweet7d"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 259
    const-string v0, "tweet7d"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setStatus7dCount(I)V

    .line 261
    :cond_48
    const-string v0, "follow"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 262
    const-string v0, "follow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFollowCount(I)V

    .line 264
    :cond_49
    const-string v0, "deal"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 265
    const-string v0, "deal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setDealCount(I)V

    .line 267
    :cond_4a
    const-string v0, "tweet"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 268
    const-string v0, "tweet"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setStatusCount(I)V

    .line 270
    :cond_4b
    const-string v0, "price_range"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 271
    const-string v0, "price_range"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setPriceRange(Ljava/lang/String;)V

    .line 273
    :cond_4c
    const-string v0, "flag"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 274
    const-string v0, "flag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setFlag(I)V

    .line 276
    :cond_4d
    const-string v0, "rest_day"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 277
    const-string v0, "rest_day"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setRestDay(Ljava/lang/String;)V

    .line 279
    :cond_4e
    const-string v0, "growth_rate_month1"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 280
    const-string v0, "growth_rate_month1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setGrowthRateMonth1(Ljava/lang/Double;)V

    .line 282
    :cond_4f
    const-string v0, "growth_rate_month3"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 283
    const-string v0, "growth_rate_month3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setGrowthRateMonth3(Ljava/lang/Double;)V

    .line 285
    :cond_50
    const-string v0, "growth_rate_month6"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 286
    const-string v0, "growth_rate_month6"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setGrowthRateMonth6(Ljava/lang/Double;)V

    .line 288
    :cond_51
    const-string v0, "growth_rate_year"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 289
    const-string v0, "growth_rate_year"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setGrowthRateYear(Ljava/lang/Double;)V

    .line 291
    :cond_52
    const-string v0, "unit_net_value"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 292
    const-string v0, "unit_net_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setUnitNetValue(D)V

    .line 294
    :cond_53
    const-string v0, "actual_date"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "actual_date"

    .line 295
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 295
    if-nez v0, :cond_54

    .line 296
    new-instance v0, Ljava/util/Date;

    const-string v2, "actual_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setActualDate(Ljava/util/Date;)V

    .line 298
    :cond_54
    const-string v0, "net_profit"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "net_profit"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 299
    if-nez v0, :cond_55

    .line 300
    const-string v0, "net_profit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setNetProfit(D)V

    .line 302
    :cond_55
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->setJsonData(Lorg/json/JSONObject;)V

    .line 304
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/OldPortFolio;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xueqiu/android/stock/StockRankMoreListActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockRankMoreListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xueqiu/android/stock/a/af;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/xueqiu/android/stock/model/IndustryInStock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 61
    iput-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 62
    iput-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/af;

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    return v0
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 3184
    :cond_0
    const-string v4, "percent"

    .line 3186
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->r:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 3187
    const-string v4, "pe_ttm"

    .line 4180
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3189
    iget v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->s:I

    iget v2, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->r:I

    iget v3, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    const-string v5, "desc"

    .line 4578
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(IIILjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 9264
    :goto_0
    return-object v0

    .line 171
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    .line 5270
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    if-nez v0, :cond_3

    .line 5271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 5272
    const/4 v0, 0x0

    goto :goto_0

    .line 6180
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5275
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getIndClass()Ljava/lang/String;

    move-result-object v2

    .line 6622
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xueqiu/android/base/b/ak;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_6

    .line 8180
    :cond_5
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7193
    const-string v2, "desc"

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    .line 8204
    packed-switch v0, :pswitch_data_0

    .line 8218
    const-string v0, "growth_rate_month1"

    .line 7193
    :goto_1
    iget v3, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 8582
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 8206
    :pswitch_0
    const-string v0, "growth_rate_month1"

    goto :goto_1

    .line 8209
    :pswitch_1
    const-string v0, "growth_rate_month3"

    goto :goto_1

    .line 8212
    :pswitch_2
    const-string v0, "growth_rate_month6"

    goto :goto_1

    .line 8215
    :pswitch_3
    const-string v0, "growth_rate_year"

    goto :goto_1

    .line 9225
    :cond_6
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    sparse-switch v0, :sswitch_data_0

    .line 9266
    const/4 v0, 0x0

    .line 179
    goto :goto_0

    .line 9291
    :sswitch_0
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    sparse-switch v0, :sswitch_data_1

    .line 9311
    const/16 v0, 0xb

    .line 10180
    :goto_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 9315
    iget v2, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    new-instance v3, Lcom/xueqiu/android/stock/StockRankMoreListActivity$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$2;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    .line 10510
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto/16 :goto_0

    .line 9293
    :sswitch_1
    const/16 v0, 0xc

    .line 9294
    goto :goto_2

    .line 9296
    :sswitch_2
    const/16 v0, 0x16

    .line 9297
    goto :goto_2

    .line 9299
    :sswitch_3
    const/16 v0, 0xd

    .line 9300
    goto :goto_2

    .line 9302
    :sswitch_4
    const/16 v0, 0x17

    .line 9303
    goto :goto_2

    .line 9305
    :sswitch_5
    const/16 v0, 0xb

    .line 9306
    goto :goto_2

    .line 9308
    :sswitch_6
    const/16 v0, 0x15

    .line 9309
    goto :goto_2

    .line 11331
    :sswitch_7
    const-string v3, "percent"

    .line 11332
    new-array v5, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v5, v7

    const-string v0, "name"

    aput-object v0, v5, v8

    const-string v0, "current"

    aput-object v0, v5, v9

    const-string v0, "percent"

    aput-object v0, v5, v6

    .line 11333
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    sparse-switch v0, :sswitch_data_2

    .line 11387
    const-string v2, "sha"

    .line 11388
    const-string v4, "desc"

    .line 12180
    :goto_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 11391
    iget v6, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    new-instance v7, Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    .line 12486
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto/16 :goto_0

    .line 11335
    :sswitch_8
    const-string v2, "sh_sz"

    .line 11336
    const-string v4, "desc"

    goto :goto_3

    .line 11339
    :sswitch_9
    const-string v2, "sh_sz"

    .line 11340
    const-string v4, "asc"

    goto :goto_3

    .line 11343
    :sswitch_a
    const-string v2, "sh_sz"

    .line 11344
    const-string v4, "desc"

    .line 11345
    const-string v3, "amount"

    .line 11346
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v5, v7

    const-string v0, "name"

    aput-object v0, v5, v8

    const-string v0, "current"

    aput-object v0, v5, v9

    const-string v0, "percent"

    aput-object v0, v5, v6

    const-string v0, "amount"

    aput-object v0, v5, v10

    goto :goto_3

    .line 11349
    :sswitch_b
    const-string v2, "sh_sz"

    .line 11350
    const-string v4, "desc"

    .line 11351
    const-string v3, "turnover_rate"

    .line 11352
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v5, v7

    const-string v0, "name"

    aput-object v0, v5, v8

    const-string v0, "current"

    aput-object v0, v5, v9

    const-string v0, "percent"

    aput-object v0, v5, v6

    const-string v0, "turnover_rate"

    aput-object v0, v5, v10

    goto :goto_3

    .line 11355
    :sswitch_c
    const-string v2, "hk"

    .line 11356
    const-string v4, "desc"

    goto :goto_3

    .line 11359
    :sswitch_d
    const-string v2, "hk"

    .line 11360
    const-string v4, "asc"

    goto :goto_3

    .line 11363
    :sswitch_e
    const-string v2, "us_china"

    .line 11364
    const-string v4, "desc"

    goto :goto_3

    .line 11367
    :sswitch_f
    const-string v2, "us_china"

    .line 11368
    const-string v4, "asc"

    goto :goto_3

    .line 11371
    :sswitch_10
    const-string v2, "us_star"

    .line 11372
    const-string v4, "desc"

    goto :goto_3

    .line 11375
    :sswitch_11
    const-string v2, "us_star"

    .line 11376
    const-string v4, "asc"

    goto :goto_3

    .line 11379
    :sswitch_12
    const-string v2, "hgt"

    .line 11380
    const-string v4, "desc"

    goto :goto_3

    .line 11383
    :sswitch_13
    const-string v2, "ggt"

    .line 11384
    const-string v4, "desc"

    goto/16 :goto_3

    .line 13415
    :sswitch_14
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_etf_industry"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13416
    if-nez v0, :cond_7

    .line 13417
    const-string v0, ""

    .line 13420
    :cond_7
    const-string v6, "percent"

    .line 13421
    const-string v3, ""

    .line 13422
    const-string v2, "CN"

    .line 13423
    iget v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    sparse-switch v1, :sswitch_data_3

    .line 13441
    sget-object v0, Lcom/xueqiu/android/base/b/ak;->g:[Ljava/lang/String;

    aget-object v0, v0, v7

    move-object v4, v0

    .line 14180
    :goto_4
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 13444
    const-string v5, "desc"

    const/16 v7, 0x3c

    iget v8, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    new-instance v9, Lcom/xueqiu/android/stock/StockRankMoreListActivity$4;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$4;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto/16 :goto_0

    .line 13425
    :sswitch_15
    sget-object v0, Lcom/xueqiu/android/base/b/ak;->h:[Ljava/lang/String;

    aget-object v0, v0, v7

    move-object v4, v0

    .line 13426
    goto :goto_4

    .line 13428
    :sswitch_16
    sget-object v0, Lcom/xueqiu/android/base/b/ak;->h:[Ljava/lang/String;

    aget-object v0, v0, v8

    move-object v4, v0

    .line 13429
    goto :goto_4

    .line 13431
    :sswitch_17
    sget-object v0, Lcom/xueqiu/android/base/b/ak;->h:[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v4, v0

    .line 13432
    goto :goto_4

    .line 13434
    :sswitch_18
    const-string v3, "\u96ea\u7403"

    move-object v4, v0

    .line 13435
    goto :goto_4

    .line 13437
    :sswitch_19
    const-string v3, "ETF"

    .line 13438
    const-string v2, "US"

    move-object v4, v0

    .line 13439
    goto :goto_4

    .line 14494
    :sswitch_1a
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    sparse-switch v0, :sswitch_data_4

    .line 14520
    const-string v2, ""

    .line 14521
    const-string v3, "ipo_preview"

    .line 14522
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v4, v7

    const-string v0, "name"

    aput-object v0, v4, v8

    const-string v0, "ipo_date"

    aput-object v0, v4, v9

    const-string v0, "iss_price"

    aput-object v0, v4, v6

    .line 14523
    const-string v6, "ipo_date"

    .line 15180
    :goto_5
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 14527
    const-string v5, "desc"

    iget v7, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    new-instance v8, Lcom/xueqiu/android/stock/StockRankMoreListActivity$6;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$6;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    .line 15516
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto/16 :goto_0

    .line 14496
    :sswitch_1b
    const-string v2, ""

    .line 14497
    const-string v3, "ipo_preview"

    .line 14498
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v4, v7

    const-string v0, "name"

    aput-object v0, v4, v8

    const-string v0, "onl_subbegdate"

    aput-object v0, v4, v9

    const-string v0, "iss_price"

    aput-object v0, v4, v6

    .line 14499
    const-string v6, "onl_subbegdate"

    goto :goto_5

    .line 14502
    :sswitch_1c
    const-string v2, "ipo_listed"

    .line 14503
    const-string v3, "income"

    .line 14504
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v4, v7

    const-string v0, "name"

    aput-object v0, v4, v8

    const-string v0, "current"

    aput-object v0, v4, v9

    const-string v0, "iss_price"

    aput-object v0, v4, v6

    .line 14505
    const-string v6, "ipo_date"

    goto :goto_5

    .line 14508
    :sswitch_1d
    const-string v2, "us"

    .line 14509
    const-string v3, "ipo_preview"

    .line 14510
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v4, v7

    const-string v0, "company_name"

    aput-object v0, v4, v8

    const-string v0, "ipo_date"

    aput-object v0, v4, v9

    const-string v0, "price_range"

    aput-object v0, v4, v6

    .line 14511
    const-string v6, "ipo_date"

    goto :goto_5

    .line 14514
    :sswitch_1e
    const-string v2, "us"

    .line 14515
    const-string v3, "ipo_listed"

    .line 14516
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "symbol"

    aput-object v0, v4, v7

    const-string v0, "name"

    aput-object v0, v4, v8

    const-string v0, "current"

    aput-object v0, v4, v9

    const-string v0, "ipo_price"

    aput-object v0, v4, v6

    .line 14517
    const-string v6, "ipo_date"

    goto :goto_5

    .line 16458
    :sswitch_1f
    const-string v4, "percent"

    .line 16459
    const-string v3, "desc"

    .line 16460
    const-string v2, "61"

    .line 16462
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x52

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 16465
    :cond_8
    const-string v3, "asc"

    .line 16468
    :cond_9
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x53

    if-ne v0, v1, :cond_c

    .line 16470
    :cond_a
    const-string v2, "62"

    .line 17180
    :cond_b
    :goto_6
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 16476
    iget v5, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    new-instance v6, Lcom/xueqiu/android/stock/StockRankMoreListActivity$5;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$5;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    .line 17498
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto/16 :goto_0

    .line 16471
    :cond_c
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_b

    .line 16473
    :cond_d
    const-string v2, "0,1,2,3"

    goto :goto_6

    .line 8204
    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 9225
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x8 -> :sswitch_1a
        0x9 -> :sswitch_1a
        0xa -> :sswitch_14
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_14
        0x12 -> :sswitch_1f
        0x13 -> :sswitch_1f
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_7
        0x18 -> :sswitch_7
        0x29 -> :sswitch_14
        0x2a -> :sswitch_14
        0x2b -> :sswitch_14
        0x2c -> :sswitch_14
        0x47 -> :sswitch_7
        0x48 -> :sswitch_7
        0x51 -> :sswitch_1f
        0x52 -> :sswitch_1f
        0x53 -> :sswitch_1f
        0x54 -> :sswitch_1f
        0xb4 -> :sswitch_1a
        0xbe -> :sswitch_1a
    .end sparse-switch

    .line 9291
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
    .end sparse-switch

    .line 11333
    :sswitch_data_2
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0x6 -> :sswitch_b
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x17 -> :sswitch_c
        0x18 -> :sswitch_d
        0x47 -> :sswitch_12
        0x48 -> :sswitch_13
    .end sparse-switch

    .line 13423
    :sswitch_data_3
    .sparse-switch
        0xa -> :sswitch_18
        0x11 -> :sswitch_19
        0x29 -> :sswitch_15
        0x2a -> :sswitch_16
        0x2b -> :sswitch_17
    .end sparse-switch

    .line 14494
    :sswitch_data_4
    .sparse-switch
        0x8 -> :sswitch_1b
        0x9 -> :sswitch_1c
        0xb4 -> :sswitch_1d
        0xbe -> :sswitch_1e
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 155
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 142
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    if-gtz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 147
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 150
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->j:I

    .line 162
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->setTheme(I)V

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f0301c8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_rank_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    .line 76
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_fund_type_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->r:I

    .line 77
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_fund_parent_type_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->s:I

    .line 79
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    if-ne v0, v4, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_industry"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/IndustryInStock;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->t:Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2092
    :goto_0
    new-instance v0, Lcom/xueqiu/android/stock/a/af;

    iget v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/a/af;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/af;

    .line 2093
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 2094
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2095
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/af;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 2096
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/stock/StockRankMoreListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity$1;-><init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2107
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    if-ne v0, v4, :cond_1

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 2121
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    .line 2125
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    iget v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->r:I

    invoke-static {v0, p0, v1}, Lcom/xueqiu/android/stock/e;->a(ILandroid/content/Context;I)Lcom/xueqiu/android/stock/f;

    move-result-object v0

    move-object v1, v0

    .line 2129
    :goto_1
    const v0, 0x7f0e066d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/xueqiu/android/stock/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/xueqiu/android/stock/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    const v0, 0x7f0e066f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/xueqiu/android/stock/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2225
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 89
    return-void

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_rank_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2127
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->q:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

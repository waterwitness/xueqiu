.class final Lcom/xueqiu/android/stock/model/StockQuote$1;
.super Ljava/lang/Object;
.source "StockQuote.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/StockQuote;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 4

    .prologue
    .line 386
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->code:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->exchange:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->market:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->netValue:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$502(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->dailyGain:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$602(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->monthlyGain:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$702(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->totalGain:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$802(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->annualizedGain:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$902(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->current:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1002(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->percentage:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1102(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->change:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1202(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->open:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1302(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->high:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1402(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->low:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1502(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->close:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1602(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->lastClose:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1702(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->high52week:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1802(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->low52week:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$1902(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->volume:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2002(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->volumeAverage:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2102(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->amount:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2202(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursChg:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2302(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursPct:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2402(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->marketCapital:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2502(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->eps:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2602(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->peTtm:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2702(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->peLyr:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2802(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->totalShares:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$2902(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->dividend:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3002(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->yield:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3102(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->instOwn:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3202(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->riseStop:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3302(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->fallStop:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3402(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->currencyUnit:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->netAssets:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3602(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->type:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3702(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->flag:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3802(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->restDay:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$3902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockCurrent:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4202(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertPrice:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4302(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertValue:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4402(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzCpr:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4502(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzPutbackPrice:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4602(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertTime:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4702(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzRedemptPrice:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4802(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->kzzStraightPrice:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$4902(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->ipoTime:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->releaseDate:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->ipoPrice:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5202(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->parValue:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->circulation:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->dueTime:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->dueDate:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->netProfitYield:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5702(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->publisher:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5802(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->redeemType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$5902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->issueType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->bondType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->warrant:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->saleOrg:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->rate:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->following:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6502(Lcom/xueqiu/android/stock/model/StockQuote;Z)Z

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->tickSize:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6702(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->pb:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6802(Lcom/xueqiu/android/stock/model/StockQuote;D)D

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend1:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$6902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend2:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend3:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend4:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend5:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend6:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend7:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend8:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->extend9:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7702(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->ratingAgencies:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7802(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->rating:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$7902(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->subscriptionStatus:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8002(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->redemptionStatus:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8102(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->lotSize:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8202(Lcom/xueqiu/android/stock/model/StockQuote;I)I

    .line 473
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->c(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/util/Date;)Ljava/util/Date;

    .line 474
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8402(Lcom/xueqiu/android/stock/model/StockQuote;Z)Z

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;
    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/model/StockQuote;->access$8502(Lcom/xueqiu/android/stock/model/StockQuote;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/StockQuote$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 489
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/StockQuote$1;->newArray(I)[Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    return-object v0
.end method

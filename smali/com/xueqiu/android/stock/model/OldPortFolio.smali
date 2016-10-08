.class public Lcom/xueqiu/android/stock/model/OldPortFolio;
.super Ljava/lang/Object;
.source "OldPortFolio.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_EXIT:I = 0x3

.field public static final FLAG_PREIPO:I = 0x0

.field public static final FLAG_RECOVERABLE_FUSE:I = 0x4

.field public static final FLAG_SUSPENSION:I = 0x2

.field public static final FLAG_UNRECOVERABLE_FUSE:I = 0x5


# instance fields
.field private actualDate:Ljava/util/Date;

.field private afterHoursChg:D

.field private afterHoursPct:D

.field private afterHoursTime:Ljava/util/Calendar;

.field private alias:Ljava/lang/String;

.field private amount:D

.field private bondType:Ljava/lang/String;

.field private change:D

.field private circulation:Ljava/lang/String;

.field private close:D

.field private code:Ljava/lang/String;

.field private count:I

.field private currencyUnit:Ljava/lang/String;

.field private current:D

.field private deal7dCount:I

.field private dealCount:I

.field private dividend:D

.field private dueDate:Ljava/lang/String;

.field private dueTime:Ljava/lang/String;

.field private eps:D

.field private exchange:Ljava/lang/String;

.field private fall_stop:D

.field private flag:I

.field private follow7dCount:I

.field private followCount:I

.field private following:Z

.field private growthRateMonth1:Ljava/lang/Double;

.field private growthRateMonth3:Ljava/lang/Double;

.field private growthRateMonth6:Ljava/lang/Double;

.field private growthRateYear:Ljava/lang/Double;

.field private high:D

.field private holding:Z

.field private instOwn:D

.field private ipoPrice:D

.field private ipoTime:Ljava/lang/String;

.field private issueType:Ljava/lang/String;

.field private jsonData:Lorg/json/JSONObject;

.field private kzzConvertPrice:D

.field private kzzConvertTime:Ljava/lang/String;

.field private kzzConvertValue:D

.field private kzzCpr:D

.field private kzzPutbackPrice:D

.field private kzzRedemptPrice:D

.field private kzzStockCurrent:D

.field private kzzStockName:Ljava/lang/String;

.field private kzzStockSymbol:Ljava/lang/String;

.field private kzzStraightPrice:D

.field private last_close:D

.field private low:D

.field private marketCapital:D

.field private name:Ljava/lang/String;

.field private netProfit:D

.field private netProfitYield:D

.field private net_assets:D

.field private open:D

.field private parValue:Ljava/lang/String;

.field private peRatio:D

.field private pe_lyr:D

.field private pe_ttm:Ljava/lang/String;

.field private percentage:D

.field private priceCurrency:Ljava/lang/String;

.field private priceRange:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private redeemType:Ljava/lang/String;

.field private releaseDate:Ljava/lang/String;

.field private restDay:Ljava/lang/String;

.field private rise_stop:D

.field private saleOrg:Ljava/lang/String;

.field private showMarketCapital:Ljava/lang/String;

.field private status7dCount:I

.field private statusCount:I

.field private symbol:Ljava/lang/String;

.field private totalShares:D

.field private turnoverRate:Ljava/lang/Double;

.field private type:Ljava/lang/String;

.field private unitNetValue:Ljava/lang/Double;

.field private updatedTime:Ljava/util/Calendar;

.field private valueDate:Ljava/lang/String;

.field private volume:D

.field private volumeAverage:D

.field private warrant:Ljava/lang/String;

.field private week52High:D

.field private week52Low:D

.field private yield:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/xueqiu/android/stock/model/OldPortFolio$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/OldPortFolio$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/OldPortFolio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockSymbol:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockName:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->updatedTime:Ljava/util/Calendar;

    .line 113
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceCurrency:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    .line 161
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 30
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    .line 31
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 32
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    .line 33
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    .line 40
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    .line 64
    const-string v1, "0"

    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    .line 69
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockSymbol:Ljava/lang/String;

    .line 70
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockName:Ljava/lang/String;

    .line 111
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->updatedTime:Ljava/util/Calendar;

    .line 113
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceCurrency:Ljava/lang/String;

    .line 158
    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->current:D

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->change:D

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->percentage:D

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->open:D

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->close:D

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->marketCapital:D

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volume:D

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volumeAverage:D

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dividend:D

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->peRatio:D

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->high:D

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->low:D

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52High:D

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52Low:D

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->following:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursChg:D

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursPct:D

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->last_close:D

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->amount:D

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rise_stop:D

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->fall_stop:D

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->eps:D

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->net_assets:D

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->totalShares:D

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->yield:D

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->instOwn:D

    .line 200
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->currencyUnit:Ljava/lang/String;

    .line 203
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    .line 209
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_ttm:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_lyr:D

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->flag:I

    .line 213
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->restDay:Ljava/lang/String;

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/stock/model/OldPortFolio$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockSymbol:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockName:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->updatedTime:Ljava/util/Calendar;

    .line 113
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceCurrency:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getActualDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->actualDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->actualDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getAfterHoursChg()D
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursChg:D

    return-wide v0
.end method

.method public getAfterHoursPct()D
    .locals 2

    .prologue
    .line 612
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursPct:D

    return-wide v0
.end method

.method public getAfterHoursTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->amount:D

    return-wide v0
.end method

.method public getBondType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->bondType:Ljava/lang/String;

    return-object v0
.end method

.method public getChange()D
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->change:D

    return-wide v0
.end method

.method public getCirculation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->circulation:Ljava/lang/String;

    return-object v0
.end method

.method public getClose()D
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->close:D

    return-wide v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->count:I

    return v0
.end method

.method public getCurrencyUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->currencyUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()D
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->current:D

    return-wide v0
.end method

.method public getDeal7dCount()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->deal7dCount:I

    return v0
.end method

.method public getDealCount()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dealCount:I

    return v0
.end method

.method public getDividend()D
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dividend:D

    return-wide v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dueTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEps()D
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->eps:D

    return-wide v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getFall_stop()D
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->fall_stop:D

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->flag:I

    return v0
.end method

.method public getFollow7dCount()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->follow7dCount:I

    return v0
.end method

.method public getFollowCount()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->followCount:I

    return v0
.end method

.method public getGrowthRateMonth1()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth1:Ljava/lang/Double;

    return-object v0
.end method

.method public getGrowthRateMonth3()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth3:Ljava/lang/Double;

    return-object v0
.end method

.method public getGrowthRateMonth6()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth6:Ljava/lang/Double;

    return-object v0
.end method

.method public getGrowthRateYear()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateYear:Ljava/lang/Double;

    return-object v0
.end method

.method public getHigh()D
    .locals 2

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->high:D

    return-wide v0
.end method

.method public getInstOwn()D
    .locals 2

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->instOwn:D

    return-wide v0
.end method

.method public getIpoPrice()D
    .locals 2

    .prologue
    .line 827
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->ipoPrice:D

    return-wide v0
.end method

.method public getIpoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->ipoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->issueType:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getKzzConvertPrice()D
    .locals 2

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertPrice:D

    return-wide v0
.end method

.method public getKzzConvertTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzConvertValue()D
    .locals 2

    .prologue
    .line 746
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertValue:D

    return-wide v0
.end method

.method public getKzzCpr()D
    .locals 2

    .prologue
    .line 754
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzCpr:D

    return-wide v0
.end method

.method public getKzzPutbackPrice()D
    .locals 2

    .prologue
    .line 762
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzPutbackPrice:D

    return-wide v0
.end method

.method public getKzzRedemptPrice()D
    .locals 2

    .prologue
    .line 771
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzRedemptPrice:D

    return-wide v0
.end method

.method public getKzzStockCurrent()D
    .locals 2

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockCurrent:D

    return-wide v0
.end method

.method public getKzzStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzStraightPrice()D
    .locals 2

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStraightPrice:D

    return-wide v0
.end method

.method public getLast_close()D
    .locals 2

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->last_close:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->low:D

    return-wide v0
.end method

.method public getMarketCapital()D
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->marketCapital:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetProfit()D
    .locals 2

    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->netProfit:D

    return-wide v0
.end method

.method public getNetProfitYield()D
    .locals 2

    .prologue
    .line 1113
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->netProfitYield:D

    return-wide v0
.end method

.method public getNet_assets()D
    .locals 2

    .prologue
    .line 660
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->net_assets:D

    return-wide v0
.end method

.method public getOpen()D
    .locals 2

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->open:D

    return-wide v0
.end method

.method public getParValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->parValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPeRatio()D
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->peRatio:D

    return-wide v0
.end method

.method public getPe_lyr()D
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_lyr:D

    return-wide v0
.end method

.method public getPe_ttm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_ttm:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->percentage:D

    return-wide v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceRange:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->redeemType:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRestDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->restDay:Ljava/lang/String;

    return-object v0
.end method

.method public getRise_stop()D
    .locals 2

    .prologue
    .line 636
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rise_stop:D

    return-wide v0
.end method

.method public getSaleOrg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->saleOrg:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMarketCapital()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus7dCount()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->status7dCount:I

    return v0
.end method

.method public getStatusCount()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->statusCount:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalShares()D
    .locals 2

    .prologue
    .line 668
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->totalShares:D

    return-wide v0
.end method

.method public getTurnoverRate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->turnoverRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitNetValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->unitNetValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getUpdatedTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->updatedTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getValueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->valueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volume:D

    return-wide v0
.end method

.method public getVolumeAverage()D
    .locals 2

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volumeAverage:D

    return-wide v0
.end method

.method public getWarrant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->warrant:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek52High()D
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52High:D

    return-wide v0
.end method

.method public getWeek52Low()D
    .locals 2

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52Low:D

    return-wide v0
.end method

.method public getYield()D
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->yield:D

    return-wide v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->following:Z

    return v0
.end method

.method public isHolding()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->holding:Z

    return v0
.end method

.method public setActualDate(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 1189
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->actualDate:Ljava/util/Date;

    .line 1190
    return-void

    .line 1189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAfterHoursChg(D)V
    .locals 1

    .prologue
    .line 608
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursChg:D

    .line 609
    return-void
.end method

.method public setAfterHoursPct(D)V
    .locals 1

    .prologue
    .line 616
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursPct:D

    .line 617
    return-void
.end method

.method public setAfterHoursTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursTime:Ljava/util/Calendar;

    .line 952
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setAmount(D)V
    .locals 1

    .prologue
    .line 632
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->amount:D

    .line 633
    return-void
.end method

.method public setBondType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->bondType:Ljava/lang/String;

    .line 904
    return-void
.end method

.method public setChange(D)V
    .locals 1

    .prologue
    .line 404
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->change:D

    .line 405
    return-void
.end method

.method public setCirculation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->circulation:Ljava/lang/String;

    .line 848
    return-void
.end method

.method public setClose(D)V
    .locals 1

    .prologue
    .line 446
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->close:D

    .line 447
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 710
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->count:I

    .line 711
    return-void
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->currencyUnit:Ljava/lang/String;

    .line 808
    return-void
.end method

.method public setCurrent(D)V
    .locals 1

    .prologue
    .line 390
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->current:D

    .line 391
    return-void
.end method

.method public setDeal7dCount(I)V
    .locals 0

    .prologue
    .line 1085
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->deal7dCount:I

    .line 1086
    return-void
.end method

.method public setDealCount(I)V
    .locals 0

    .prologue
    .line 1109
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dealCount:I

    .line 1110
    return-void
.end method

.method public setDividend(D)V
    .locals 1

    .prologue
    .line 516
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dividend:D

    .line 517
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dueDate:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setDueTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dueTime:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setEps(D)V
    .locals 1

    .prologue
    .line 656
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->eps:D

    .line 657
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setFall_stop(D)V
    .locals 1

    .prologue
    .line 648
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->fall_stop:D

    .line 649
    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .prologue
    .line 1165
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->flag:I

    .line 1166
    return-void
.end method

.method public setFollow7dCount(I)V
    .locals 0

    .prologue
    .line 1069
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->follow7dCount:I

    .line 1070
    return-void
.end method

.method public setFollowCount(I)V
    .locals 0

    .prologue
    .line 1093
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->followCount:I

    .line 1094
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->following:Z

    .line 601
    return-void
.end method

.method public setGrowthRateMonth1(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth1:Ljava/lang/Double;

    .line 1134
    return-void
.end method

.method public setGrowthRateMonth3(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth3:Ljava/lang/Double;

    .line 1142
    return-void
.end method

.method public setGrowthRateMonth6(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateMonth6:Ljava/lang/Double;

    .line 1150
    return-void
.end method

.method public setGrowthRateYear(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->growthRateYear:Ljava/lang/Double;

    .line 1158
    return-void
.end method

.method public setHigh(D)V
    .locals 1

    .prologue
    .line 544
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->high:D

    .line 545
    return-void
.end method

.method public setHolding(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->holding:Z

    .line 130
    return-void
.end method

.method public setInstOwn(D)V
    .locals 1

    .prologue
    .line 688
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->instOwn:D

    .line 689
    return-void
.end method

.method public setIpoPrice(D)V
    .locals 1

    .prologue
    .line 831
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->ipoPrice:D

    .line 832
    return-void
.end method

.method public setIpoTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->ipoTime:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public setIssueType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->issueType:Ljava/lang/String;

    .line 896
    return-void
.end method

.method public setJsonData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    .line 936
    return-void
.end method

.method public setKzzConvertPrice(D)V
    .locals 1

    .prologue
    .line 742
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertPrice:D

    .line 743
    return-void
.end method

.method public setKzzConvertTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertTime:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setKzzConvertValue(D)V
    .locals 1

    .prologue
    .line 750
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzConvertValue:D

    .line 751
    return-void
.end method

.method public setKzzCpr(D)V
    .locals 1

    .prologue
    .line 758
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzCpr:D

    .line 759
    return-void
.end method

.method public setKzzPutbackPrice(D)V
    .locals 1

    .prologue
    .line 766
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzPutbackPrice:D

    .line 767
    return-void
.end method

.method public setKzzRedemptPrice(D)V
    .locals 1

    .prologue
    .line 775
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzRedemptPrice:D

    .line 776
    return-void
.end method

.method public setKzzStockCurrent(D)V
    .locals 1

    .prologue
    .line 734
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockCurrent:D

    .line 735
    return-void
.end method

.method public setKzzStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockName:Ljava/lang/String;

    .line 727
    return-void
.end method

.method public setKzzStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStockSymbol:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public setKzzStraightPrice(D)V
    .locals 1

    .prologue
    .line 783
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->kzzStraightPrice:D

    .line 784
    return-void
.end method

.method public setLast_close(D)V
    .locals 1

    .prologue
    .line 624
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->last_close:D

    .line 625
    return-void
.end method

.method public setLow(D)V
    .locals 1

    .prologue
    .line 558
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->low:D

    .line 559
    return-void
.end method

.method public setMarketCapital(D)V
    .locals 1

    .prologue
    .line 460
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->marketCapital:D

    .line 461
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setNetProfit(D)V
    .locals 1

    .prologue
    .line 1181
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->netProfit:D

    .line 1182
    return-void
.end method

.method public setNetProfitYield(D)V
    .locals 1

    .prologue
    .line 1117
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->netProfitYield:D

    .line 1118
    return-void
.end method

.method public setNet_assets(D)V
    .locals 1

    .prologue
    .line 664
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->net_assets:D

    .line 665
    return-void
.end method

.method public setOpen(D)V
    .locals 1

    .prologue
    .line 432
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->open:D

    .line 433
    return-void
.end method

.method public setParValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->parValue:Ljava/lang/String;

    .line 840
    return-void
.end method

.method public setPeRatio(D)V
    .locals 1

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->peRatio:D

    .line 531
    return-void
.end method

.method public setPe_lyr(D)V
    .locals 1

    .prologue
    .line 318
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_lyr:D

    .line 319
    return-void
.end method

.method public setPe_ttm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_ttm:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPercentage(D)V
    .locals 1

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->percentage:D

    .line 419
    return-void
.end method

.method public setPriceCurrency(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceCurrency:Ljava/lang/String;

    .line 944
    return-void
.end method

.method public setPriceRange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->priceRange:Ljava/lang/String;

    .line 1126
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->publisher:Ljava/lang/String;

    .line 880
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rate:Ljava/lang/String;

    .line 928
    return-void
.end method

.method public setRedeemType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->redeemType:Ljava/lang/String;

    .line 888
    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->releaseDate:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setRestDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->restDay:Ljava/lang/String;

    .line 1174
    return-void
.end method

.method public setRise_stop(D)V
    .locals 1

    .prologue
    .line 640
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rise_stop:D

    .line 641
    return-void
.end method

.method public setSaleOrg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->saleOrg:Ljava/lang/String;

    .line 920
    return-void
.end method

.method public setShowMarketCapital(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setStatus7dCount(I)V
    .locals 0

    .prologue
    .line 1077
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->status7dCount:I

    .line 1078
    return-void
.end method

.method public setStatusCount(I)V
    .locals 0

    .prologue
    .line 1101
    iput p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->statusCount:I

    .line 1102
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setTotalShares(D)V
    .locals 1

    .prologue
    .line 672
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->totalShares:D

    .line 673
    return-void
.end method

.method public setTurnoverRate(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->turnoverRate:Ljava/lang/Double;

    .line 1198
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    .line 800
    return-void
.end method

.method public setUnitNetValue(D)V
    .locals 1

    .prologue
    .line 1061
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->unitNetValue:Ljava/lang/Double;

    .line 1062
    return-void
.end method

.method public setUpdatedTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->updatedTime:Ljava/util/Calendar;

    .line 792
    return-void
.end method

.method public setValueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->valueDate:Ljava/lang/String;

    .line 864
    return-void
.end method

.method public setVolume(D)V
    .locals 1

    .prologue
    .line 488
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volume:D

    .line 489
    return-void
.end method

.method public setVolumeAverage(D)V
    .locals 1

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volumeAverage:D

    .line 503
    return-void
.end method

.method public setWarrant(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->warrant:Ljava/lang/String;

    .line 912
    return-void
.end method

.method public setWeek52High(D)V
    .locals 1

    .prologue
    .line 572
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52High:D

    .line 573
    return-void
.end method

.method public setWeek52Low(D)V
    .locals 1

    .prologue
    .line 586
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52Low:D

    .line 587
    return-void
.end method

.method public setYield(D)V
    .locals 1

    .prologue
    .line 680
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->yield:D

    .line 681
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->current:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 229
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->change:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 230
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->percentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 231
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->open:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 232
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->close:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 234
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->marketCapital:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 235
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 236
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->volumeAverage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 237
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->dividend:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 238
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->peRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 240
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->high:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 241
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->low:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 243
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52High:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 244
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->week52Low:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 245
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->following:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursChg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 247
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->afterHoursPct:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 248
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->last_close:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 249
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 250
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->rise_stop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 251
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->fall_stop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 252
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->eps:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 253
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->net_assets:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 254
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->totalShares:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 255
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->yield:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 256
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->instOwn:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->currencyUnit:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->symbol:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->code:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->alias:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->exchange:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->showMarketCapital:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_ttm:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 267
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->pe_lyr:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 269
    iget v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->restDay:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/OldPortFolio;->jsonData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

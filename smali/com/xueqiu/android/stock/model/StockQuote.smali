.class public Lcom/xueqiu/android/stock/model/StockQuote;
.super Ljava/lang/Object;
.source "StockQuote.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private afterHoursChg:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afterHoursChg"
    .end annotation
.end field

.field private afterHoursPct:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afterHoursPct"
    .end annotation
.end field

.field private afterHoursTime:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "afterHoursTime"
    .end annotation
.end field

.field private amount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private annualizedGain:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private badgesExist:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bondType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private change:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private circulation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private close:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private closedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currencyUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private current:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dailyGain:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dividend:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dueTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private eps:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private exchange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend3:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend4:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend6:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend7:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend8:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private extend9:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fallStop:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private flag:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private following:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasexist"
    .end annotation
.end field

.field private hasWarrant:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private high:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private high52week:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private instOwn:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instOwn"
    .end annotation
.end field

.field private ipoPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ipoTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private issueType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzConvertPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzConvertTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzConvertValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzCpr:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzPutbackPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzRedemptPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzStockCurrent:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzStockName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzStockSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private kzzStraightPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastClose:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lotSize:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private low:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private low52week:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private market:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marketCapital:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "marketCapital"
    .end annotation
.end field

.field private monthlyGain:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netAssets:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netProfitYield:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private open:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private originalJson:Lorg/json/JSONObject;

.field private parValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pb:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private peLyr:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private peTtm:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percentage:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private privateOpen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private publisher:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rating:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ratingAgencies:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private redeemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private redemptionStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private restDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private riseStop:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private saleOrg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sale_rrg"
    .end annotation
.end field

.field private subscriptionStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tickSize:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalGain:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalShares:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalShares"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updateTime:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private valueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private volume:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private volumeAverage:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volumeAverage"
    .end annotation
.end field

.field private warrant:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private yield:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockQuote$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/StockQuote;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    .line 244
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->updateTime:Ljava/util/Calendar;

    .line 260
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    .line 263
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    .line 244
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->updateTime:Ljava/util/Calendar;

    .line 260
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    .line 263
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    .line 276
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;

    .line 277
    iput-object p2, p0, Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;

    .line 278
    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->current:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->percentage:D

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->change:D

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->open:D

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high:D

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low:D

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->close:D

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lastClose:D

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high52week:D

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low52week:D

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volume:D

    return-wide p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volumeAverage:D

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->amount:D

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursChg:D

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursPct:D

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->marketCapital:D

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->eps:D

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peTtm:D

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peLyr:D

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalShares:D

    return-wide p1
.end method

.method static synthetic access$3002(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dividend:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->exchange:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->yield:D

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->instOwn:D

    return-wide p1
.end method

.method static synthetic access$3302(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->riseStop:D

    return-wide p1
.end method

.method static synthetic access$3402(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->fallStop:D

    return-wide p1
.end method

.method static synthetic access$3502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->currencyUnit:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netAssets:D

    return-wide p1
.end method

.method static synthetic access$3702(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->type:I

    return p1
.end method

.method static synthetic access$3802(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->flag:I

    return p1
.end method

.method static synthetic access$3902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->restDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->market:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockCurrent:D

    return-wide p1
.end method

.method static synthetic access$4302(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertPrice:D

    return-wide p1
.end method

.method static synthetic access$4402(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertValue:D

    return-wide p1
.end method

.method static synthetic access$4502(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzCpr:D

    return-wide p1
.end method

.method static synthetic access$4602(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzPutbackPrice:D

    return-wide p1
.end method

.method static synthetic access$4702(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzRedemptPrice:D

    return-wide p1
.end method

.method static synthetic access$4902(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStraightPrice:D

    return-wide p1
.end method

.method static synthetic access$5002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netValue:D

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->releaseDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoPrice:D

    return-wide p1
.end method

.method static synthetic access$5302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->parValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->circulation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netProfitYield:D

    return-wide p1
.end method

.method static synthetic access$5802(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->publisher:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redeemType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->issueType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dailyGain:D

    return-wide p1
.end method

.method static synthetic access$6102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->bondType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->warrant:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->saleOrg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/xueqiu/android/stock/model/StockQuote;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->tickSize:D

    return-wide p1
.end method

.method static synthetic access$6802(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->pb:D

    return-wide p1
.end method

.method static synthetic access$6902(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->monthlyGain:D

    return-wide p1
.end method

.method static synthetic access$7102(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend3:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend4:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend6:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend7:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend8:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend9:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ratingAgencies:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rating:I

    return p1
.end method

.method static synthetic access$8002(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->subscriptionStatus:I

    return p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalGain:D

    return-wide p1
.end method

.method static synthetic access$8102(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redemptionStatus:I

    return p1
.end method

.method static synthetic access$8202(Lcom/xueqiu/android/stock/model/StockQuote;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lotSize:I

    return p1
.end method

.method static synthetic access$8302(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/xueqiu/android/stock/model/StockQuote;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    return p1
.end method

.method static synthetic access$8502(Lcom/xueqiu/android/stock/model/StockQuote;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/stock/model/StockQuote;D)D
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->annualizedGain:D

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public getAfterHoursChg()D
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursChg:D

    return-wide v0
.end method

.method public getAfterHoursPct()D
    .locals 2

    .prologue
    .line 630
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursPct:D

    return-wide v0
.end method

.method public getAfterHoursTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getAmount()D
    .locals 2

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->amount:D

    return-wide v0
.end method

.method public getAnnualizedGain()D
    .locals 2

    .prologue
    .line 1046
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->annualizedGain:D

    return-wide v0
.end method

.method public getBadgesExist()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    return v0
.end method

.method public getBondType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->bondType:Ljava/lang/String;

    return-object v0
.end method

.method public getChange()D
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->change:D

    return-wide v0
.end method

.method public getCirculation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->circulation:Ljava/lang/String;

    return-object v0
.end method

.method public getClose()D
    .locals 2

    .prologue
    .line 574
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->close:D

    return-wide v0
.end method

.method public getClosedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->currencyUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()D
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->current:D

    return-wide v0
.end method

.method public getDailyGain()D
    .locals 2

    .prologue
    .line 1022
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dailyGain:D

    return-wide v0
.end method

.method public getDividend()D
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dividend:D

    return-wide v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEps()D
    .locals 2

    .prologue
    .line 654
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->eps:D

    return-wide v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend2:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend3:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend5:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend6:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend7:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend8:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend9:Ljava/lang/String;

    return-object v0
.end method

.method public getFallStop()D
    .locals 2

    .prologue
    .line 718
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->fallStop:D

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->flag:I

    return v0
.end method

.method public getHigh()D
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high:D

    return-wide v0
.end method

.method public getHigh52week()D
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high52week:D

    return-wide v0
.end method

.method public getInstOwn()D
    .locals 2

    .prologue
    .line 702
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->instOwn:D

    return-wide v0
.end method

.method public getIpoPrice()D
    .locals 2

    .prologue
    .line 862
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoPrice:D

    return-wide v0
.end method

.method public getIpoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->issueType:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzConvertPrice()D
    .locals 2

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertPrice:D

    return-wide v0
.end method

.method public getKzzConvertTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzConvertValue()D
    .locals 2

    .prologue
    .line 798
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertValue:D

    return-wide v0
.end method

.method public getKzzCpr()D
    .locals 2

    .prologue
    .line 806
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzCpr:D

    return-wide v0
.end method

.method public getKzzPutbackPrice()D
    .locals 2

    .prologue
    .line 814
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzPutbackPrice:D

    return-wide v0
.end method

.method public getKzzRedemptPrice()D
    .locals 2

    .prologue
    .line 830
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzRedemptPrice:D

    return-wide v0
.end method

.method public getKzzStockCurrent()D
    .locals 2

    .prologue
    .line 782
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockCurrent:D

    return-wide v0
.end method

.method public getKzzStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getKzzStraightPrice()D
    .locals 2

    .prologue
    .line 838
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStraightPrice:D

    return-wide v0
.end method

.method public getLastClose()D
    .locals 2

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lastClose:D

    return-wide v0
.end method

.method public getLotSize()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lotSize:I

    return v0
.end method

.method public getLow()D
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low:D

    return-wide v0
.end method

.method public getLow52week()D
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low52week:D

    return-wide v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCapital()D
    .locals 2

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->marketCapital:D

    return-wide v0
.end method

.method public getMonthlyGain()D
    .locals 2

    .prologue
    .line 1030
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->monthlyGain:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAssets()D
    .locals 2

    .prologue
    .line 734
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netAssets:D

    return-wide v0
.end method

.method public getNetProfitYield()D
    .locals 2

    .prologue
    .line 910
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netProfitYield:D

    return-wide v0
.end method

.method public getNetValue()D
    .locals 2

    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netValue:D

    return-wide v0
.end method

.method public getOpen()D
    .locals 2

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->open:D

    return-wide v0
.end method

.method public getOriginalJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getParValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->parValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPb()D
    .locals 2

    .prologue
    .line 1054
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->pb:D

    return-wide v0
.end method

.method public getPeLyr()D
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peLyr:D

    return-wide v0
.end method

.method public getPeTtm()D
    .locals 2

    .prologue
    .line 662
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peTtm:D

    return-wide v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->percentage:D

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rating:I

    return v0
.end method

.method public getRatingAgencies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ratingAgencies:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redeemType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedemptionStatus()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redemptionStatus:I

    return v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRestDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->restDay:Ljava/lang/String;

    return-object v0
.end method

.method public getRiseStop()D
    .locals 2

    .prologue
    .line 710
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->riseStop:D

    return-wide v0
.end method

.method public getSaleOrg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->saleOrg:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionStatus()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->subscriptionStatus:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTickSize()D
    .locals 2

    .prologue
    .line 1198
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->tickSize:D

    return-wide v0
.end method

.method public getTotalGain()D
    .locals 2

    .prologue
    .line 1038
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalGain:D

    return-wide v0
.end method

.method public getTotalShares()D
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalShares:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->type:I

    return v0
.end method

.method public getUpdateTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->updateTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getValueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->valueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 598
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volume:D

    return-wide v0
.end method

.method public getVolumeAverage()D
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volumeAverage:D

    return-wide v0
.end method

.method public getWarrant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->warrant:Ljava/lang/String;

    return-object v0
.end method

.method public getYield()D
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->yield:D

    return-wide v0
.end method

.method public hasWarrant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant:Ljava/lang/String;

    return-object v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    return v0
.end method

.method public isPrivateOpen()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->privateOpen:Z

    return v0
.end method

.method public setAfterHoursChg(D)V
    .locals 1

    .prologue
    .line 626
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursChg:D

    .line 627
    return-void
.end method

.method public setAfterHoursPct(D)V
    .locals 1

    .prologue
    .line 634
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursPct:D

    .line 635
    return-void
.end method

.method public setAfterHoursTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursTime:Ljava/util/Calendar;

    .line 643
    return-void
.end method

.method public setAmount(D)V
    .locals 1

    .prologue
    .line 618
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->amount:D

    .line 619
    return-void
.end method

.method public setAnnualizedGain(D)V
    .locals 1

    .prologue
    .line 1050
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->annualizedGain:D

    .line 1051
    return-void
.end method

.method public setBadgesExist(Z)V
    .locals 0

    .prologue
    .line 1194
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    .line 1195
    return-void
.end method

.method public setBondType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->bondType:Ljava/lang/String;

    .line 947
    return-void
.end method

.method public setChange(D)V
    .locals 1

    .prologue
    .line 546
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->change:D

    .line 547
    return-void
.end method

.method public setCirculation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->circulation:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public setClose(D)V
    .locals 1

    .prologue
    .line 578
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->close:D

    .line 579
    return-void
.end method

.method public setClosedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    .line 1187
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->code:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->currencyUnit:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public setCurrent(D)V
    .locals 1

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->current:D

    .line 531
    return-void
.end method

.method public setDailyGain(D)V
    .locals 1

    .prologue
    .line 1026
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dailyGain:D

    .line 1027
    return-void
.end method

.method public setDividend(D)V
    .locals 1

    .prologue
    .line 690
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dividend:D

    .line 691
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueDate:Ljava/lang/String;

    .line 907
    return-void
.end method

.method public setDueTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueTime:Ljava/lang/String;

    .line 891
    return-void
.end method

.method public setEps(D)V
    .locals 1

    .prologue
    .line 658
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->eps:D

    .line 659
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->exchange:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setExtend1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend1:Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public setExtend2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend2:Ljava/lang/String;

    .line 1099
    return-void
.end method

.method public setExtend3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend3:Ljava/lang/String;

    .line 1083
    return-void
.end method

.method public setExtend4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend4:Ljava/lang/String;

    .line 1091
    return-void
.end method

.method public setExtend5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend5:Ljava/lang/String;

    .line 1075
    return-void
.end method

.method public setExtend6(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend6:Ljava/lang/String;

    .line 1107
    return-void
.end method

.method public setExtend7(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend7:Ljava/lang/String;

    .line 1115
    return-void
.end method

.method public setExtend8(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend8:Ljava/lang/String;

    .line 1123
    return-void
.end method

.method public setExtend9(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend9:Ljava/lang/String;

    .line 1131
    return-void
.end method

.method public setFallStop(D)V
    .locals 1

    .prologue
    .line 722
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->fallStop:D

    .line 723
    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .prologue
    .line 754
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->flag:I

    .line 755
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 978
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    .line 979
    return-void
.end method

.method public setHasWarrant(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant:Ljava/lang/String;

    .line 987
    return-void
.end method

.method public setHigh(D)V
    .locals 1

    .prologue
    .line 562
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high:D

    .line 563
    return-void
.end method

.method public setHigh52week(D)V
    .locals 1

    .prologue
    .line 586
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high52week:D

    .line 587
    return-void
.end method

.method public setInstOwn(D)V
    .locals 1

    .prologue
    .line 706
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->instOwn:D

    .line 707
    return-void
.end method

.method public setIpoPrice(D)V
    .locals 1

    .prologue
    .line 866
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoPrice:D

    .line 867
    return-void
.end method

.method public setIpoTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoTime:Ljava/lang/String;

    .line 851
    return-void
.end method

.method public setIssueType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->issueType:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public setKzzConvertPrice(D)V
    .locals 1

    .prologue
    .line 794
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertPrice:D

    .line 795
    return-void
.end method

.method public setKzzConvertTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertTime:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public setKzzConvertValue(D)V
    .locals 1

    .prologue
    .line 802
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertValue:D

    .line 803
    return-void
.end method

.method public setKzzCpr(D)V
    .locals 1

    .prologue
    .line 810
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzCpr:D

    .line 811
    return-void
.end method

.method public setKzzPutbackPrice(D)V
    .locals 1

    .prologue
    .line 818
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzPutbackPrice:D

    .line 819
    return-void
.end method

.method public setKzzRedemptPrice(D)V
    .locals 1

    .prologue
    .line 834
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzRedemptPrice:D

    .line 835
    return-void
.end method

.method public setKzzStockCurrent(D)V
    .locals 1

    .prologue
    .line 786
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockCurrent:D

    .line 787
    return-void
.end method

.method public setKzzStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public setKzzStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public setKzzStraightPrice(D)V
    .locals 1

    .prologue
    .line 842
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStraightPrice:D

    .line 843
    return-void
.end method

.method public setLastClose(D)V
    .locals 1

    .prologue
    .line 994
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lastClose:D

    .line 995
    return-void
.end method

.method public setLotSize(I)V
    .locals 0

    .prologue
    .line 1170
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lotSize:I

    .line 1171
    return-void
.end method

.method public setLow(D)V
    .locals 1

    .prologue
    .line 570
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low:D

    .line 571
    return-void
.end method

.method public setLow52week(D)V
    .locals 1

    .prologue
    .line 594
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low52week:D

    .line 595
    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->market:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public setMarketCapital(D)V
    .locals 1

    .prologue
    .line 650
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->marketCapital:D

    .line 651
    return-void
.end method

.method public setMonthlyGain(D)V
    .locals 1

    .prologue
    .line 1034
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->monthlyGain:D

    .line 1035
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setNetAssets(D)V
    .locals 1

    .prologue
    .line 738
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netAssets:D

    .line 739
    return-void
.end method

.method public setNetProfitYield(D)V
    .locals 1

    .prologue
    .line 914
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netProfitYield:D

    .line 915
    return-void
.end method

.method public setNetValue(D)V
    .locals 1

    .prologue
    .line 1018
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netValue:D

    .line 1019
    return-void
.end method

.method public setOpen(D)V
    .locals 1

    .prologue
    .line 554
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->open:D

    .line 555
    return-void
.end method

.method public setOriginalJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;

    .line 1179
    return-void
.end method

.method public setParValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->parValue:Ljava/lang/String;

    .line 875
    return-void
.end method

.method public setPb(D)V
    .locals 1

    .prologue
    .line 1058
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->pb:D

    .line 1059
    return-void
.end method

.method public setPeLyr(D)V
    .locals 1

    .prologue
    .line 674
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peLyr:D

    .line 675
    return-void
.end method

.method public setPeTtm(D)V
    .locals 1

    .prologue
    .line 666
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peTtm:D

    .line 667
    return-void
.end method

.method public setPercentage(D)V
    .locals 1

    .prologue
    .line 538
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->percentage:D

    .line 539
    return-void
.end method

.method public setPrivateOpen(Z)V
    .locals 0

    .prologue
    .line 1210
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->privateOpen:Z

    .line 1211
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->publisher:Ljava/lang/String;

    .line 923
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rate:Ljava/lang/String;

    .line 971
    return-void
.end method

.method public setRating(I)V
    .locals 0

    .prologue
    .line 1146
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rating:I

    .line 1147
    return-void
.end method

.method public setRatingAgencies(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ratingAgencies:Ljava/lang/String;

    .line 1139
    return-void
.end method

.method public setRedeemType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redeemType:Ljava/lang/String;

    .line 931
    return-void
.end method

.method public setRedemptionStatus(I)V
    .locals 0

    .prologue
    .line 1162
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redemptionStatus:I

    .line 1163
    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->releaseDate:Ljava/lang/String;

    .line 859
    return-void
.end method

.method public setRestDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->restDay:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setRiseStop(D)V
    .locals 1

    .prologue
    .line 714
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->riseStop:D

    .line 715
    return-void
.end method

.method public setSaleOrg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->saleOrg:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public setSubscriptionStatus(I)V
    .locals 0

    .prologue
    .line 1154
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->subscriptionStatus:I

    .line 1155
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setTickSize(D)V
    .locals 1

    .prologue
    .line 1202
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->tickSize:D

    .line 1203
    return-void
.end method

.method public setTotalGain(D)V
    .locals 1

    .prologue
    .line 1042
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalGain:D

    .line 1043
    return-void
.end method

.method public setTotalShares(D)V
    .locals 1

    .prologue
    .line 682
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalShares:D

    .line 683
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 746
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->type:I

    .line 747
    return-void
.end method

.method public setUpdateTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->updateTime:Ljava/util/Calendar;

    .line 1003
    return-void
.end method

.method public setValueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->valueDate:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public setVolume(D)V
    .locals 1

    .prologue
    .line 602
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volume:D

    .line 603
    return-void
.end method

.method public setVolumeAverage(D)V
    .locals 1

    .prologue
    .line 610
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volumeAverage:D

    .line 611
    return-void
.end method

.method public setWarrant(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->warrant:Ljava/lang/String;

    .line 955
    return-void
.end method

.method public setYield(D)V
    .locals 1

    .prologue
    .line 698
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockQuote;->yield:D

    .line 699
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->exchange:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->market:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 297
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dailyGain:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 298
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->monthlyGain:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 299
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalGain:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 300
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->annualizedGain:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 301
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->current:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 302
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->percentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 303
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->change:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 304
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->open:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 305
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 306
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 307
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->close:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 308
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lastClose:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 309
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->high52week:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 310
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->low52week:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 311
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 312
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->volumeAverage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 313
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 314
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursChg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 315
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->afterHoursPct:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 316
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->marketCapital:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 317
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->eps:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 318
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peTtm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 319
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->peLyr:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 320
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->totalShares:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 321
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dividend:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 322
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->yield:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 323
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->instOwn:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 324
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->riseStop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 325
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->fallStop:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->currencyUnit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netAssets:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 328
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->restDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStockCurrent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 334
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 335
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 336
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzCpr:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 337
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzPutbackPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzConvertTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzRedemptPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 340
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->kzzStraightPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ipoPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 344
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->parValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->circulation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->dueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->netProfitYield:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 349
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->publisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redeemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->issueType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->bondType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->warrant:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->saleOrg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->following:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->hasWarrant:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->tickSize:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 361
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->pb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 362
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->extend9:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->ratingAgencies:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->rating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->subscriptionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->redemptionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->lotSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->closedAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 378
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->badgesExist:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockQuote;->originalJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

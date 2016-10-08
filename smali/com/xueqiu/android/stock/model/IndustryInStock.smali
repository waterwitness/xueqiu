.class public Lcom/xueqiu/android/stock/model/IndustryInStock;
.super Ljava/lang/Object;
.source "IndustryInStock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indCode"
    .end annotation
.end field

.field private indClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indClass"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indName"
    .end annotation
.end field

.field private percent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topStockCurrent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topStockCurrent"
    .end annotation
.end field

.field private topStockName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topStockName"
    .end annotation
.end field

.field private topStockPercent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topStockPercent"
    .end annotation
.end field

.field private topStockSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topStockSymbol"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/xueqiu/android/stock/model/IndustryInStock$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/IndustryInStock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->percent:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockPercent:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockCurrent:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->indClass:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getIndClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->indClass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->percent:Ljava/lang/Double;

    return-object v0
.end method

.method public getTopStockCurrent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockCurrent:Ljava/lang/Double;

    return-object v0
.end method

.method public getTopStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopStockPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockPercent:Ljava/lang/Double;

    return-object v0
.end method

.method public getTopStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->code:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setIndClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->indClass:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPercent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->percent:Ljava/lang/Double;

    .line 71
    return-void
.end method

.method public setTopStockCurrent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockCurrent:Ljava/lang/Double;

    .line 103
    return-void
.end method

.method public setTopStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTopStockPercent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockPercent:Ljava/lang/Double;

    .line 79
    return-void
.end method

.method public setTopStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockSymbol:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->percent:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockPercent:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockCurrent:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/IndustryInStock;->indClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method

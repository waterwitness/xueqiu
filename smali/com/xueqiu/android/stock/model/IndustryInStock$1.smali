.class final Lcom/xueqiu/android/stock/model/IndustryInStock$1;
.super Ljava/lang/Object;
.source "IndustryInStock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/IndustryInStock;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/IndustryInStock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/IndustryInStock;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/xueqiu/android/stock/model/IndustryInStock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$002(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->percent:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$102(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockPercent:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$202(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockCurrent:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$302(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/Double;)Ljava/lang/Double;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockSymbol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$402(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->topStockName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$502(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->code:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$602(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/IndustryInStock;->indClass:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->access$702(Lcom/xueqiu/android/stock/model/IndustryInStock;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/IndustryInStock$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/IndustryInStock;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/IndustryInStock;
    .locals 1

    .prologue
    .line 151
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/IndustryInStock;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/IndustryInStock$1;->newArray(I)[Lcom/xueqiu/android/stock/model/IndustryInStock;

    move-result-object v0

    return-object v0
.end method

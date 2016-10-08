.class final Lcom/xueqiu/android/stock/model/PortfolioStock$1;
.super Ljava/lang/Object;
.source "PortfolioStock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/PortfolioStock;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/PortfolioStock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/PortfolioStock;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->code:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$002(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->stockName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$102(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->comment:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$202(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->portfolioIds:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$302(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$402(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$502(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D

    .line 83
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$602(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/util/Date;)Ljava/util/Date;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->isNotice:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$702(Lcom/xueqiu/android/stock/model/PortfolioStock;I)I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->targetPercent:D
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$802(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/stock/model/PortfolioStock;->exchange:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->access$902(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/PortfolioStock$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/PortfolioStock;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/PortfolioStock;
    .locals 1

    .prologue
    .line 92
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/PortfolioStock;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/PortfolioStock$1;->newArray(I)[Lcom/xueqiu/android/stock/model/PortfolioStock;

    move-result-object v0

    return-object v0
.end method

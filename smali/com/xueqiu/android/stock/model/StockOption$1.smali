.class final Lcom/xueqiu/android/stock/model/StockOption$1;
.super Ljava/lang/Object;
.source "StockOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/StockOption;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/StockOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/StockOption;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lcom/xueqiu/android/stock/model/StockOption;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/StockOption;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->symbol:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockOption;->access$002(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->name:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockOption;->access$102(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->current:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$202(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->bondType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockOption;->access$302(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->dueDate:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockOption;->access$402(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->percent:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$502(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->chg:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$602(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->high:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$702(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->low:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$802(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->volume:D
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockOption;->access$902(Lcom/xueqiu/android/stock/model/StockOption;D)D

    .line 82
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    # setter for: Lcom/xueqiu/android/stock/model/StockOption;->time:Ljava/util/Calendar;
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/StockOption;->access$1002(Lcom/xueqiu/android/stock/model/StockOption;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 83
    return-object v1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/StockOption$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/StockOption;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/StockOption;
    .locals 1

    .prologue
    .line 88
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/StockOption;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/StockOption$1;->newArray(I)[Lcom/xueqiu/android/stock/model/StockOption;

    move-result-object v0

    return-object v0
.end method

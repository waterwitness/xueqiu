.class final Lcom/xueqiu/android/trade/model/OrderCancel$1;
.super Ljava/lang/Object;
.source "OrderCancel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/model/OrderCancel;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/trade/model/OrderCancel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/OrderCancel;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/xueqiu/android/trade/model/OrderCancel;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/trade/model/OrderCancel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/OrderCancel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/OrderCancel;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/trade/model/OrderCancel;
    .locals 1

    .prologue
    .line 150
    new-array v0, p1, [Lcom/xueqiu/android/trade/model/OrderCancel;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/OrderCancel$1;->newArray(I)[Lcom/xueqiu/android/trade/model/OrderCancel;

    move-result-object v0

    return-object v0
.end method

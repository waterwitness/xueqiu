.class final Lcom/xueqiu/android/trade/model/Broker$1;
.super Ljava/lang/Object;
.source "Broker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/model/Broker;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/trade/model/Broker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/Broker;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xueqiu/android/trade/model/Broker;-><init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/Broker$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/Broker$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/Broker;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/trade/model/Broker;
    .locals 1

    .prologue
    .line 169
    new-array v0, p1, [Lcom/xueqiu/android/trade/model/Broker;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/Broker$1;->newArray(I)[Lcom/xueqiu/android/trade/model/Broker;

    move-result-object v0

    return-object v0
.end method

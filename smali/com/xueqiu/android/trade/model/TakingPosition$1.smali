.class final Lcom/xueqiu/android/trade/model/TakingPosition$1;
.super Ljava/lang/Object;
.source "TakingPosition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/model/TakingPosition;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/trade/model/TakingPosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/TakingPosition;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/xueqiu/android/trade/model/TakingPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xueqiu/android/trade/model/TakingPosition;-><init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/TakingPosition$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/TakingPosition$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/TakingPosition;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/trade/model/TakingPosition;
    .locals 1

    .prologue
    .line 128
    new-array v0, p1, [Lcom/xueqiu/android/trade/model/TakingPosition;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/TakingPosition$1;->newArray(I)[Lcom/xueqiu/android/trade/model/TakingPosition;

    move-result-object v0

    return-object v0
.end method

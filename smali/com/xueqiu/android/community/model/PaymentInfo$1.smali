.class final Lcom/xueqiu/android/community/model/PaymentInfo$1;
.super Ljava/lang/Object;
.source "PaymentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/PaymentInfo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/PaymentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/PaymentInfo;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/community/model/PaymentInfo;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/PaymentInfo;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/PaymentInfo;->orderId:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/PaymentInfo;->access$002(Lcom/xueqiu/android/community/model/PaymentInfo;I)I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/PaymentInfo;->paymentInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/PaymentInfo;->access$102(Lcom/xueqiu/android/community/model/PaymentInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/PaymentInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/PaymentInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/PaymentInfo;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lcom/xueqiu/android/community/model/PaymentInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/PaymentInfo$1;->newArray(I)[Lcom/xueqiu/android/community/model/PaymentInfo;

    move-result-object v0

    return-object v0
.end method

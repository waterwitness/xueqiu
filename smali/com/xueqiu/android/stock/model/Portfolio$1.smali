.class final Lcom/xueqiu/android/stock/model/Portfolio$1;
.super Ljava/lang/Object;
.source "Portfolio.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/Portfolio;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/Portfolio;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 56
    new-instance v1, Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/Portfolio;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/xueqiu/android/stock/model/Portfolio;->id:I
    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->access$002(Lcom/xueqiu/android/stock/model/Portfolio;I)I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/stock/model/Portfolio;->name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->access$102(Lcom/xueqiu/android/stock/model/Portfolio;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/xueqiu/android/stock/model/Portfolio;->orderId:I
    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->access$202(Lcom/xueqiu/android/stock/model/Portfolio;I)I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/xueqiu/android/stock/model/Portfolio;->include:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/Portfolio;->access$302(Lcom/xueqiu/android/stock/model/Portfolio;Z)Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/stock/model/Portfolio;->type:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/model/Portfolio;->access$402(Lcom/xueqiu/android/stock/model/Portfolio;I)I

    .line 62
    return-object v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/Portfolio$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/Portfolio;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/Portfolio;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/Portfolio;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/Portfolio$1;->newArray(I)[Lcom/xueqiu/android/stock/model/Portfolio;

    move-result-object v0

    return-object v0
.end method

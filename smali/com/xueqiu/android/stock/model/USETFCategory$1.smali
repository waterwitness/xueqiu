.class final Lcom/xueqiu/android/stock/model/USETFCategory$1;
.super Ljava/lang/Object;
.source "USETFCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/model/USETFCategory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/stock/model/USETFCategory;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/USETFCategory;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/USETFCategory;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/USETFCategory;->title:Ljava/lang/String;

    .line 43
    iget-object v1, v0, Lcom/xueqiu/android/stock/model/USETFCategory;->types:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/USETFCategory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/stock/model/USETFCategory;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/stock/model/USETFCategory;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lcom/xueqiu/android/stock/model/USETFCategory;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/model/USETFCategory$1;->newArray(I)[Lcom/xueqiu/android/stock/model/USETFCategory;

    move-result-object v0

    return-object v0
.end method

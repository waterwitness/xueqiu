.class final Lcom/xueqiu/android/base/h5/b$1;
.super Ljava/lang/Object;
.source "H5Event.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/base/h5/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 95
    .line 2098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2099
    new-instance v1, Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/base/h5/b;-><init>(IB)V

    .line 2100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/h5/b;->a(Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/h5/b;->b(Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/h5/b;->a(Lcom/xueqiu/android/base/h5/b;I)I

    .line 95
    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    .line 1108
    new-array v0, p1, [Lcom/xueqiu/android/base/h5/b;

    .line 95
    return-object v0
.end method

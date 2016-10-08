.class final Lcom/xueqiu/android/community/model/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/User;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/User;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/xueqiu/android/community/model/User;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xueqiu/android/community/model/User;-><init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/User$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 202
    new-array v0, p1, [Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/User$1;->newArray(I)[Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method

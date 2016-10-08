.class final Lcom/xueqiu/android/cube/model/SpCubeRelation$1;
.super Ljava/lang/Object;
.source "SpCubeRelation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/SpCubeRelation;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/SpCubeRelation;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/SpCubeRelation;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/xueqiu/android/cube/model/SpCubeRelation;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/SpCubeRelation;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/SpCubeRelation;
    .locals 1

    .prologue
    .line 76
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/SpCubeRelation;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation$1;->newArray(I)[Lcom/xueqiu/android/cube/model/SpCubeRelation;

    move-result-object v0

    return-object v0
.end method

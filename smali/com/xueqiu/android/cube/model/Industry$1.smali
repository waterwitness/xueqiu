.class final Lcom/xueqiu/android/cube/model/Industry$1;
.super Ljava/lang/Object;
.source "Industry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Industry;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Industry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Industry;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/cube/model/Industry;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Industry;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Industry;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Industry;->access$002(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Industry;->avgStockProfit:Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Industry;->access$102(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/Double;)Ljava/lang/Double;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Industry;->color:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Industry;->access$202(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Industry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Industry;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Industry;
    .locals 1

    .prologue
    .line 77
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Industry;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Industry$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Industry;

    move-result-object v0

    return-object v0
.end method

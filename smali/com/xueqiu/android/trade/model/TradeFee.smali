.class public Lcom/xueqiu/android/trade/model/TradeFee;
.super Ljava/lang/Object;
.source "TradeFee.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeFee;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calculateAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeFee$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeFee$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeFee;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradeFee;->calculateAmount:D

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getCalculateAmount()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradeFee;->calculateAmount:D

    return-wide v0
.end method

.method public setCalculateAmount(D)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradeFee;->calculateAmount:D

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradeFee;->calculateAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    return-void
.end method

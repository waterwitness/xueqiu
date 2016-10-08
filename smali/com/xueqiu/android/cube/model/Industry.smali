.class public Lcom/xueqiu/android/cube/model/Industry;
.super Ljava/lang/Object;
.source "Industry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avgStockProfit:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/xueqiu/android/cube/model/Industry$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Industry$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Industry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->avgStockProfit:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Industry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->color:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getAvgStockProfit()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->avgStockProfit:Ljava/lang/Double;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgStockProfit(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->avgStockProfit:Ljava/lang/Double;

    .line 43
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->color:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Industry;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->avgStockProfit:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Industry;->color:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method

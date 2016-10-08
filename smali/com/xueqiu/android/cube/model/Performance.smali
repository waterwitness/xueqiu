.class public Lcom/xueqiu/android/cube/model/Performance;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Performance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gainCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lossCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topGainerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topGainerSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/xueqiu/android/cube/model/Performance$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Performance$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Performance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Performance;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Performance;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Performance;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/xueqiu/android/cube/model/Performance;->gainCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Performance;I)I
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/xueqiu/android/cube/model/Performance;->lossCount:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getGainCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/cube/model/Performance;->gainCount:I

    return v0
.end method

.method public getLossCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/xueqiu/android/cube/model/Performance;->lossCount:I

    return v0
.end method

.method public getTopGainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopGainerSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public setGainCount(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/xueqiu/android/cube/model/Performance;->gainCount:I

    .line 77
    return-void
.end method

.method public setLossCount(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/xueqiu/android/cube/model/Performance;->lossCount:I

    .line 85
    return-void
.end method

.method public setTopGainerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTopGainerSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerSymbol:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Performance;->topGainerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/xueqiu/android/cube/model/Performance;->gainCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/xueqiu/android/cube/model/Performance;->lossCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method

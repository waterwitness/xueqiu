.class public Lcom/xueqiu/android/cube/model/Holding;
.super Ljava/lang/Object;
.source "Holding.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private proactive:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private segmentColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private segmentId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private segmentName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockLabel:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stockName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private volume:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weight:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/xueqiu/android/cube/model/Holding$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Holding$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Holding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockId:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockSymbol:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->weight:D

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->volume:D

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentId:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentColor:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/model/Holding;->proactive:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockLabel:Ljava/util/List;

    .line 179
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/xueqiu/android/cube/model/Holding;
    .locals 1

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Holding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentId:J

    return-wide v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockId:J

    return-wide v0
.end method

.method public getStockLabel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockLabel:Ljava/util/List;

    return-object v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->volume:D

    return-wide v0
.end method

.method public getWeight()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->weight:D

    return-wide v0
.end method

.method public isProactive()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Holding;->proactive:Z

    return v0
.end method

.method public setProactive(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Holding;->proactive:Z

    .line 114
    return-void
.end method

.method public setSegmentColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentColor:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSegmentId(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentId:J

    .line 82
    return-void
.end method

.method public setSegmentName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStockId(J)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Holding;->stockId:J

    .line 58
    return-void
.end method

.method public setStockLabel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Holding;->stockLabel:Ljava/util/List;

    .line 144
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Holding;->stockName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Holding;->stockSymbol:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setVolume(D)V
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Holding;->volume:D

    .line 122
    return-void
.end method

.method public setWeight(D)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Holding;->weight:D

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->weight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 157
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->segmentColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Holding;->proactive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Holding;->stockLabel:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 163
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

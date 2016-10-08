.class public Lcom/xueqiu/android/cube/model/RebalancingHistory;
.super Ljava/lang/Object;
.source "RebalancingHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/RebalancingHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevNetValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevTargetWeight:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevVolume:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevWeight:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevWeightAdjusted:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private price:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rebalancingId:J
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

.field private targetVolume:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private targetWeight:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
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
    .line 300
    new-instance v0, Lcom/xueqiu/android/cube/model/RebalancingHistory$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->id:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->rebalancingId:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockId:J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockName:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockSymbol:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->volume:D

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevVolume:D

    .line 283
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->price:Ljava/lang/Double;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevPrice:D

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->netValue:D

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevNetValue:D

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->weight:D

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetWeight:D

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetVolume:D

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeight:D

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevTargetWeight:D

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeightAdjusted:D

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 294
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->createdAt:Ljava/util/Date;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 296
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->updatedAt:Ljava/util/Date;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockLabel:Ljava/util/List;

    .line 298
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->id:J

    return-wide v0
.end method

.method public getNetValue()D
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->netValue:D

    return-wide v0
.end method

.method public getPrevNetValue()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevNetValue:D

    return-wide v0
.end method

.method public getPrevPrice()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevPrice:D

    return-wide v0
.end method

.method public getPrevTargetWeight()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevTargetWeight:D

    return-wide v0
.end method

.method public getPrevVolume()D
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevVolume:D

    return-wide v0
.end method

.method public getPrevWeight()D
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeight:D

    return-wide v0
.end method

.method public getPrevWeightAdjusted()D
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeightAdjusted:D

    return-wide v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getRebalancingId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->rebalancingId:J

    return-wide v0
.end method

.method public getStockId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockId:J

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
    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockLabel:Ljava/util/List;

    return-object v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetVolume()D
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetVolume:D

    return-wide v0
.end method

.method public getTargetWeight()D
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetWeight:D

    return-wide v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->volume:D

    return-wide v0
.end method

.method public getWeight()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->weight:D

    return-wide v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->createdAt:Ljava/util/Date;

    .line 217
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->id:J

    .line 89
    return-void
.end method

.method public setNetValue(D)V
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->netValue:D

    .line 161
    return-void
.end method

.method public setPrevNetValue(D)V
    .locals 1

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevNetValue:D

    .line 169
    return-void
.end method

.method public setPrevPrice(D)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevPrice:D

    .line 153
    return-void
.end method

.method public setPrevTargetWeight(D)V
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevTargetWeight:D

    .line 201
    return-void
.end method

.method public setPrevVolume(D)V
    .locals 1

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevVolume:D

    .line 137
    return-void
.end method

.method public setPrevWeight(D)V
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeight:D

    .line 193
    return-void
.end method

.method public setPrevWeightAdjusted(D)V
    .locals 1

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeightAdjusted:D

    .line 233
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->price:Ljava/lang/Double;

    .line 145
    return-void
.end method

.method public setRebalancingId(J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->rebalancingId:J

    .line 97
    return-void
.end method

.method public setStockId(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockId:J

    .line 105
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
    .line 240
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockLabel:Ljava/util/List;

    .line 241
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockSymbol:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTargetVolume(D)V
    .locals 1

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetVolume:D

    .line 209
    return-void
.end method

.method public setTargetWeight(D)V
    .locals 1

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetWeight:D

    .line 185
    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->updatedAt:Ljava/util/Date;

    .line 225
    return-void
.end method

.method public setVolume(D)V
    .locals 1

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->volume:D

    .line 129
    return-void
.end method

.method public setWeight(D)V
    .locals 1

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->weight:D

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 250
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->rebalancingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 256
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevVolume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->price:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 258
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 259
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->netValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 260
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevNetValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 261
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->weight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 262
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->targetVolume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 264
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 265
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevTargetWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 266
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->prevWeightAdjusted:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->updatedAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->updatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/RebalancingHistory;->stockLabel:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 270
    return-void

    :cond_1
    move-wide v0, v2

    .line 267
    goto :goto_0
.end method

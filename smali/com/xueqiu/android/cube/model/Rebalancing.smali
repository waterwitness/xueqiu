.class public Lcom/xueqiu/android/cube/model/Rebalancing;
.super Ljava/lang/Object;
.source "Rebalancing.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cash:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cashValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cubeId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private errorStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private exeStrategy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private holdings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private prevRebalancingId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rebalancingHistories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/RebalancingHistory;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Rebalancing$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Rebalancing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Rebalancing;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->id:J

    return-wide p1
.end method

.method static synthetic access$1002(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Rebalancing;Lcom/xueqiu/android/cube/model/Rebalancing$Status;)Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Rebalancing;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cubeId:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Rebalancing;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->prevRebalancingId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/Rebalancing;Lcom/xueqiu/android/cube/model/Rebalancing$Category;)Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->exeStrategy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/cube/model/Rebalancing;D)D
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cash:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/cube/model/Rebalancing;D)D
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cashValue:D

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getCash()D
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cash:D

    return-wide v0
.end method

.method public getCashValue()D
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cashValue:D

    return-wide v0
.end method

.method public getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCubeId()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cubeId:J

    return-wide v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getExeStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->exeStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->id:J

    return-wide v0
.end method

.method public getPrevRebalancingId()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->prevRebalancingId:J

    return-wide v0
.end method

.method public getRebalancingHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/RebalancingHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public setCash(D)V
    .locals 1

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cash:D

    .line 238
    return-void
.end method

.method public setCashValue(D)V
    .locals 1

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cashValue:D

    .line 246
    return-void
.end method

.method public setCategory(Lcom/xueqiu/android/cube/model/Rebalancing$Category;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 206
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->comment:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;

    .line 222
    return-void
.end method

.method public setCubeId(J)V
    .locals 1

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cubeId:J

    .line 190
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorCode:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorMessage:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setErrorStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorStatus:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setExeStrategy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->exeStrategy:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setHoldings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;

    .line 262
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->id:J

    .line 174
    return-void
.end method

.method public setPrevRebalancingId(J)V
    .locals 1

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->prevRebalancingId:J

    .line 198
    return-void
.end method

.method public setRebalancingHistories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/RebalancingHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;

    .line 270
    return-void
.end method

.method public setStatus(Lcom/xueqiu/android/cube/model/Rebalancing$Status;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 182
    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;

    .line 230
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 119
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cubeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->prevRebalancingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->exeStrategy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cash:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 128
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->cashValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    return-void

    :cond_1
    move-wide v0, v2

    .line 125
    goto :goto_0
.end method

.class final Lcom/xueqiu/android/cube/model/Rebalancing$1;
.super Ljava/lang/Object;
.source "Rebalancing.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Rebalancing;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->id:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$002(Lcom/xueqiu/android/cube/model/Rebalancing;J)J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->status:Lcom/xueqiu/android/cube/model/Rebalancing$Status;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$102(Lcom/xueqiu/android/cube/model/Rebalancing;Lcom/xueqiu/android/cube/model/Rebalancing$Status;)Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->cubeId:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$202(Lcom/xueqiu/android/cube/model/Rebalancing;J)J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->prevRebalancingId:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$302(Lcom/xueqiu/android/cube/model/Rebalancing;J)J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->category:Lcom/xueqiu/android/cube/model/Rebalancing$Category;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$402(Lcom/xueqiu/android/cube/model/Rebalancing;Lcom/xueqiu/android/cube/model/Rebalancing$Category;)Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->exeStrategy:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$502(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->createdAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$602(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/Date;)Ljava/util/Date;

    .line 148
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->updatedAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$702(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/Date;)Ljava/util/Date;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->cash:D
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$802(Lcom/xueqiu/android/cube/model/Rebalancing;D)D

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->cashValue:D
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$902(Lcom/xueqiu/android/cube/model/Rebalancing;D)D

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->errorCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1002(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->errorStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1102(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->errorMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1202(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->comment:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1302(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1402(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/List;)Ljava/util/List;

    .line 156
    # getter for: Lcom/xueqiu/android/cube/model/Rebalancing;->holdings:Ljava/util/List;
    invoke-static {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1400(Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/cube/model/Holding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1502(Lcom/xueqiu/android/cube/model/Rebalancing;Ljava/util/List;)Ljava/util/List;

    .line 158
    # getter for: Lcom/xueqiu/android/cube/model/Rebalancing;->rebalancingHistories:Ljava/util/List;
    invoke-static {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->access$1500(Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/cube/model/RebalancingHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 159
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Rebalancing$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Rebalancing;
    .locals 1

    .prologue
    .line 164
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Rebalancing;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Rebalancing$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    return-object v0
.end method

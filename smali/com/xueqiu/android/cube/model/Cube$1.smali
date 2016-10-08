.class final Lcom/xueqiu/android/cube/model/Cube$1;
.super Ljava/lang/Object;
.source "Cube.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Cube;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    new-instance v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v3}, Lcom/xueqiu/android/cube/model/Cube;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->id:J
    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->access$002(Lcom/xueqiu/android/cube/model/Cube;J)J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->name:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->ownerId:J
    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->access$202(Lcom/xueqiu/android/cube/model/Cube;J)J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->symbol:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->description:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/xueqiu/android/cube/model/Cube;->activeFlag:Z
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$502(Lcom/xueqiu/android/cube/model/Cube;Z)Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->market:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->netValue:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$702(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 244
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->dailyGain:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$802(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 245
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->monthlyGain:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$902(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 246
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->annualizedGainRate:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1002(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 247
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->totalGain:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 248
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->bbRate:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->star:I
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1302(Lcom/xueqiu/android/cube/model/Cube;I)I

    .line 250
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->rankPercent:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->lastMonthRank:I
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1502(Lcom/xueqiu/android/cube/model/Cube;I)I

    .line 252
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->createdAt:Ljava/util/Date;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1602(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;

    .line 253
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->updatedAt:Ljava/util/Date;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1702(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;

    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->closedAt:Ljava/util/Date;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1802(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/Date;)Ljava/util/Date;

    .line 255
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->owner:Lcom/xueqiu/android/community/model/User;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$1902(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 256
    const-class v0, Lcom/xueqiu/android/cube/model/Style;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Style;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->style:Lcom/xueqiu/android/cube/model/Style;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2002(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Style;)Lcom/xueqiu/android/cube/model/Style;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2102(Lcom/xueqiu/android/cube/model/Cube;Ljava/util/List;)Ljava/util/List;

    .line 258
    # getter for: Lcom/xueqiu/android/cube/model/Cube;->tag:Ljava/util/List;
    invoke-static {v3}, Lcom/xueqiu/android/cube/model/Cube;->access$2100(Lcom/xueqiu/android/cube/model/Cube;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 259
    const-class v0, Lcom/xueqiu/android/cube/model/Performance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Performance;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->performance:Lcom/xueqiu/android/cube/model/Performance;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2202(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Performance;)Lcom/xueqiu/android/cube/model/Performance;

    .line 260
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->rebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2302(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 261
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->viewRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2402(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 262
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->lastRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2502(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 263
    const-class v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->lastSuccessRebalancing:Lcom/xueqiu/android/cube/model/Rebalancing;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2602(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/Rebalancing;)Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->lastBuyRbGid:J
    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->access$2702(Lcom/xueqiu/android/cube/model/Cube;J)J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->lastUserRbGid:J
    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->access$2802(Lcom/xueqiu/android/cube/model/Cube;J)J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    # setter for: Lcom/xueqiu/android/cube/model/Cube;->following:Z
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$2902(Lcom/xueqiu/android/cube/model/Cube;Z)Z

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->followerCount:I
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3002(Lcom/xueqiu/android/cube/model/Cube;I)I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    # setter for: Lcom/xueqiu/android/cube/model/Cube;->sellFlag:Z
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3102(Lcom/xueqiu/android/cube/model/Cube;Z)Z

    .line 269
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->commission:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 270
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->initialCapital:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    # setter for: Lcom/xueqiu/android/cube/model/Cube;->listedFlag:Z
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3402(Lcom/xueqiu/android/cube/model/Cube;Z)Z

    .line 272
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->contractorId:Ljava/lang/Long;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3502(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Long;)Ljava/lang/Long;

    .line 273
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->saleCount:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 274
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->dailyAmount:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3702(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 275
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->totalAmount:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3802(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    # setter for: Lcom/xueqiu/android/cube/model/Cube;->applyFlag:Z
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$3902(Lcom/xueqiu/android/cube/model/Cube;Z)Z

    .line 277
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->orderTicketCount:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4002(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 278
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->cubeLevel:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4102(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 279
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->gainOnLevel:Ljava/lang/Double;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4202(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Double;)Ljava/lang/Double;

    .line 280
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->topFlag:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4302(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 281
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->totalScore:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4402(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 282
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->rank:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4502(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 283
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/xueqiu/android/cube/model/Cube;->trend:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/Cube;->access$4602(Lcom/xueqiu/android/cube/model/Cube;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, v3, Lcom/xueqiu/android/cube/model/Cube;->badgesExist:Z

    .line 285
    return-object v3

    :cond_0
    move v0, v2

    .line 241
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 266
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 268
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 271
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 276
    goto/16 :goto_4

    :cond_5
    move v1, v2

    .line 284
    goto :goto_5
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Cube$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 290
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Cube$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    return-object v0
.end method

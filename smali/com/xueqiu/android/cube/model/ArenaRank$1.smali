.class final Lcom/xueqiu/android/cube/model/ArenaRank$1;
.super Ljava/lang/Object;
.source "ArenaRank.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/ArenaRank;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/ArenaRank;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/ArenaRank;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/xueqiu/android/cube/model/ArenaRank;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/ArenaRank;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->listName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$002(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->listParam:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$102(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->scoreUpdatedAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$202(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/util/Date;)Ljava/util/Date;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->memberCount:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$302(Lcom/xueqiu/android/cube/model/ArenaRank;I)I

    .line 91
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->configUpdatedAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$402(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/util/Date;)Ljava/util/Date;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$502(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$602(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->bgColor:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$702(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->bigBgIcon:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$802(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->smallBgIcon:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$902(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->subTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$1002(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->description:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$1102(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->rank:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$1202(Lcom/xueqiu/android/cube/model/ArenaRank;I)I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->bigIconGray:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$1302(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/ArenaRank;->smallIconGray:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/ArenaRank;->access$1402(Lcom/xueqiu/android/cube/model/ArenaRank;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/ArenaRank$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/ArenaRank;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/ArenaRank;
    .locals 1

    .prologue
    .line 108
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/ArenaRank;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/ArenaRank$1;->newArray(I)[Lcom/xueqiu/android/cube/model/ArenaRank;

    move-result-object v0

    return-object v0
.end method

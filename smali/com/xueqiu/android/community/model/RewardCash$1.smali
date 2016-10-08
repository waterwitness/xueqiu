.class final Lcom/xueqiu/android/community/model/RewardCash$1;
.super Ljava/lang/Object;
.source "RewardCash.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/RewardCash;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/RewardCash;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/RewardCash;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/xueqiu/android/community/model/RewardCash;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RewardCash;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->amount:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/RewardCash;->access$002(Lcom/xueqiu/android/community/model/RewardCash;I)I

    .line 57
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/RewardCash;->access$102(Lcom/xueqiu/android/community/model/RewardCash;Ljava/util/Date;)Ljava/util/Date;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/RewardCash;->access$202(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/RewardCash;->access$302(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->userId:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/model/RewardCash;->access$402(Lcom/xueqiu/android/community/model/RewardCash;J)J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/RewardCash;->description:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/RewardCash;->access$502(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/RewardCash$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/RewardCash;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/RewardCash;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/xueqiu/android/community/model/RewardCash;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/RewardCash$1;->newArray(I)[Lcom/xueqiu/android/community/model/RewardCash;

    move-result-object v0

    return-object v0
.end method

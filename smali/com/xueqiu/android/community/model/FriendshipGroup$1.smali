.class final Lcom/xueqiu/android/community/model/FriendshipGroup$1;
.super Ljava/lang/Object;
.source "FriendshipGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/FriendshipGroup;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/FriendshipGroup;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 57
    new-instance v1, Lcom/xueqiu/android/community/model/FriendshipGroup;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/FriendshipGroup;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->id:I
    invoke-static {v1, v2}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$002(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$102(Lcom/xueqiu/android/community/model/FriendshipGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->isMember:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$202(Lcom/xueqiu/android/community/model/FriendshipGroup;Z)Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->memberCount:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$302(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->userId:J
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$402(Lcom/xueqiu/android/community/model/FriendshipGroup;J)J

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$502(Lcom/xueqiu/android/community/model/FriendshipGroup;Ljava/util/Date;)Ljava/util/Date;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/community/model/FriendshipGroup;->orderId:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->access$602(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I

    .line 65
    return-object v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/FriendshipGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/FriendshipGroup;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/FriendshipGroup;
    .locals 1

    .prologue
    .line 70
    new-array v0, p1, [Lcom/xueqiu/android/community/model/FriendshipGroup;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/FriendshipGroup$1;->newArray(I)[Lcom/xueqiu/android/community/model/FriendshipGroup;

    move-result-object v0

    return-object v0
.end method

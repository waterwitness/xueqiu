.class public Lcom/xueqiu/android/community/model/FriendshipGroupInfo;
.super Ljava/lang/Object;
.source "FriendshipGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATE_AT:Ljava/lang/String; = "created_at"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/FriendshipGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_MEMBER:Ljava/lang/String; = "is_member"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field public mCreate_at:J

.field public mId:J

.field public mIsChecked:Z

.field public mIs_member:Z

.field public mMember_count:I

.field public mName:Ljava/lang/String;

.field public mOrder_id:I

.field public mUser_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mId:J

    .line 104
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mUser_id:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mOrder_id:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mCreate_at:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mMember_count:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIs_member:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIsChecked:Z

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v1, v2

    .line 110
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/FriendshipGroupInfo$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getmCreate_at()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mCreate_at:J

    return-wide v0
.end method

.method public getmId()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mId:J

    return-wide v0
.end method

.method public getmMember_count()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mMember_count:I

    return v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmOrder_id()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mOrder_id:I

    return v0
.end method

.method public getmUser_id()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mUser_id:J

    return-wide v0
.end method

.method public ismIsChecked()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIsChecked:Z

    return v0
.end method

.method public ismIs_member()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIs_member:Z

    return v0
.end method

.method public setmCreate_at(J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mCreate_at:J

    .line 64
    return-void
.end method

.method public setmId(J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mId:J

    .line 32
    return-void
.end method

.method public setmIsChecked(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIsChecked:Z

    .line 88
    return-void
.end method

.method public setmIs_member(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIs_member:Z

    .line 80
    return-void
.end method

.method public setmMember_count(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mMember_count:I

    .line 72
    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setmOrder_id(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mOrder_id:I

    .line 56
    return-void
.end method

.method public setmUser_id(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mUser_id:J

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mUser_id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mOrder_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mCreate_at:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mMember_count:I

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIs_member:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroupInfo;->mIsChecked:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v1, v2

    .line 122
    goto :goto_1
.end method

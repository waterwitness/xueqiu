.class public Lcom/xueqiu/android/community/model/FriendshipGroup;
.super Ljava/lang/Object;
.source "FriendshipGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/FriendshipGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isMember:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private memberCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/xueqiu/android/community/model/FriendshipGroup$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/FriendshipGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->id:I

    return p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/community/model/FriendshipGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/community/model/FriendshipGroup;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->isMember:Z

    return p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->memberCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/community/model/FriendshipGroup;J)J
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->userId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/community/model/FriendshipGroup;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/community/model/FriendshipGroup;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->orderId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->id:I

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->orderId:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->userId:J

    return-wide v0
.end method

.method public isMember()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->isMember:Z

    return v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;

    .line 120
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->id:I

    .line 80
    return-void
.end method

.method public setMember(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->isMember:Z

    .line 96
    return-void
.end method

.method public setMemberCount(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->memberCount:I

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOrderId(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->orderId:I

    .line 128
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->userId:J

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->isMember:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->memberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->orderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/model/FriendshipGroup;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1
.end method

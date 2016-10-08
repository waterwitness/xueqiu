.class public Lcom/xueqiu/android/community/model/UserGroup;
.super Ljava/lang/Object;
.source "UserGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/UserGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private groupId:J

.field private memberCount:I

.field private name:Ljava/lang/String;

.field private orderId:I

.field private userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/xueqiu/android/community/model/UserGroup$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/UserGroup$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/UserGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->groupId:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->userId:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->orderId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->memberCount:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/UserGroup$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/UserGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->groupId:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->orderId:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->userId:J

    return-wide v0
.end method

.method public setGroupId(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserGroup;->groupId:J

    .line 67
    return-void
.end method

.method public setMemberCount(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/xueqiu/android/community/model/UserGroup;->memberCount:I

    .line 99
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserGroup;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOrderId(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/xueqiu/android/community/model/UserGroup;->orderId:I

    .line 91
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserGroup;->userId:J

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->orderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/xueqiu/android/community/model/UserGroup;->memberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method

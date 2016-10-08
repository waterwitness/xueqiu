.class public Lcom/xueqiu/android/community/model/Reward;
.super Ljava/lang/Object;
.source "Reward.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createAt:Ljava/util/Date;

.field private id:J

.field private message:Ljava/lang/String;

.field private payTradeId:J

.field private snowCoin:I

.field private toId:J

.field private toType:Ljava/lang/String;

.field private toUserId:J

.field private user:Lcom/xueqiu/android/community/model/User;

.field private userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/xueqiu/android/community/model/Reward$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Reward$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Reward;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->id:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->userId:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toUserId:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toId:J

    .line 31
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->toType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Reward;->snowCoin:I

    .line 33
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->message:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->payTradeId:J

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->createAt:Ljava/util/Date;

    .line 36
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->user:Lcom/xueqiu/android/community/model/User;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/Reward$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/Reward;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getCreateAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->createAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->id:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPayTradeId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->payTradeId:J

    return-wide v0
.end method

.method public getSnowCoin()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/xueqiu/android/community/model/Reward;->snowCoin:I

    return v0
.end method

.method public getToId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toId:J

    return-wide v0
.end method

.method public getToType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->toType:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toUserId:J

    return-wide v0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->userId:J

    return-wide v0
.end method

.method public setCreateAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Reward;->createAt:Ljava/util/Date;

    .line 139
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Reward;->id:J

    .line 75
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Reward;->message:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPayTradeId(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Reward;->payTradeId:J

    .line 131
    return-void
.end method

.method public setSnowCoin(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/xueqiu/android/community/model/Reward;->snowCoin:I

    .line 115
    return-void
.end method

.method public setToId(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Reward;->toId:J

    .line 99
    return-void
.end method

.method public setToType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Reward;->toType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setToUserId(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Reward;->toUserId:J

    .line 91
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Reward;->user:Lcom/xueqiu/android/community/model/User;

    .line 147
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Reward;->userId:J

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->toId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->toType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/xueqiu/android/community/model/Reward;->snowCoin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Reward;->payTradeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->user:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Reward;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

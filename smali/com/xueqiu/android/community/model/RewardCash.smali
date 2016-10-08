.class public Lcom/xueqiu/android/community/model/RewardCash;
.super Ljava/lang/Object;
.source "RewardCash.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field photoDomain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
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
    .line 53
    new-instance v0, Lcom/xueqiu/android/community/model/RewardCash$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RewardCash$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/RewardCash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/community/model/RewardCash;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->amount:I

    return p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/community/model/RewardCash;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/community/model/RewardCash;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->userId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/community/model/RewardCash;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->description:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->amount:I

    return v0
.end method

.method public getCreateAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/RewardCash;->getUserProfileImage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/RewardCash;->getUserProfileImage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->userId:J

    return-wide v0
.end method

.method public getUserProfileImage(Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 137
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 137
    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 140
    aget-object v0, v1, v0

    .line 151
    :goto_0
    return-object v0

    .line 141
    :cond_0
    array-length v2, v1

    if-lez v2, :cond_3

    .line 142
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 143
    const-string v4, "50x50"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    const-string v4, "180x180"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAmount(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->amount:I

    .line 78
    return-void
.end method

.method public setCreateAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;

    .line 86
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->description:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPhotoDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RewardCash;->userId:J

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->amount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->photoDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RewardCash;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

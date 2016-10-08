.class public Lcom/xueqiu/android/cube/model/SpCubeRelation;
.super Ljava/lang/Object;
.source "SpCubeRelation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/SpCubeRelation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private followersCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private following:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private owner:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/cube/model/SpCubeRelation$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/SpCubeRelation$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->owner:Lcom/xueqiu/android/community/model/User;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->followersCount:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->following:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->followersCount:I

    return v0
.end method

.method public getOwner()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->owner:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->following:Z

    return v0
.end method

.method public setFollowersCount(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->followersCount:I

    .line 37
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->following:Z

    .line 45
    return-void
.end method

.method public setOwner(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->owner:Lcom/xueqiu/android/community/model/User;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->owner:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->followersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/SpCubeRelation;->following:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

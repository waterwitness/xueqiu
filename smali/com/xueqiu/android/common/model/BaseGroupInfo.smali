.class public Lcom/xueqiu/android/common/model/BaseGroupInfo;
.super Ljava/lang/Object;
.source "BaseGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/common/model/BaseGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER_ID:Ljava/lang/String; = "orderId"


# instance fields
.field public mId:J

.field public mIsAdd:Z

.field public mIsDelete:Z

.field public mIsUpdate:Z

.field public mName:Ljava/lang/String;

.field public mOrderId:I

.field public mViewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/xueqiu/android/common/model/BaseGroupInfo$1;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/BaseGroupInfo$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    .line 29
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    .line 34
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v1, v2

    .line 33
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/common/model/BaseGroupInfo$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/model/BaseGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    iget-wide v4, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    :cond_1
    move v0, v2

    .line 42
    goto :goto_1

    :cond_2
    move v1, v2

    .line 43
    goto :goto_2
.end method

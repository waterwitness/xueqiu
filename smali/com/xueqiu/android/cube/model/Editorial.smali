.class public Lcom/xueqiu/android/cube/model/Editorial;
.super Ljava/lang/Object;
.source "Editorial.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cubeCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/xueqiu/android/cube/model/Editorial$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Editorial$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Editorial;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Editorial;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->id:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Editorial;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->cubeCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->image:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/cube/model/Editorial;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->rank:I

    return p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/cube/model/Editorial;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->createdAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->url:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCubeCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->cubeCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->id:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->rank:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->createdAt:Ljava/util/Date;

    .line 130
    return-void
.end method

.method public setCubeCount(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->cubeCount:I

    .line 138
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->description:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->id:J

    .line 90
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->image:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->name:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->rank:I

    .line 122
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Editorial;->url:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->cubeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->rank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Editorial;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method

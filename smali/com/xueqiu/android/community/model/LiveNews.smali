.class public Lcom/xueqiu/android/community/model/LiveNews;
.super Ljava/lang/Object;
.source "LiveNews.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;"
        }
    .end annotation
.end field

.field private static final MARK_VALUE_IMPORTANT:I = 0x1


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mark:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/xueqiu/android/community/model/LiveNews$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/LiveNews$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/LiveNews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->id:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->text:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->createdAt:Ljava/util/Date;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->target:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->mark:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/LiveNews$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/LiveNews;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->id:J

    return-wide v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isImportant()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    iget v1, p0, Lcom/xueqiu/android/community/model/LiveNews;->mark:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/community/model/LiveNews;->createdAt:Ljava/util/Date;

    .line 93
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/LiveNews;->id:J

    .line 77
    return-void
.end method

.method public setMark(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/xueqiu/android/community/model/LiveNews;->mark:I

    .line 101
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/community/model/LiveNews;->text:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/xueqiu/android/community/model/LiveNews;->mark:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method

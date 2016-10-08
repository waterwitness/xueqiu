.class public Lcom/xueqiu/android/community/model/HotEvent;
.super Ljava/lang/Object;
.source "HotEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/HotEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hot:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sort:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/xueqiu/android/community/model/HotEvent$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/HotEvent$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/HotEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/community/model/HotEvent;J)J
    .locals 1

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->id:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/community/model/HotEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/community/model/HotEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->content:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/community/model/HotEvent;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->sort:I

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/community/model/HotEvent;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->hot:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->hot:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->id:J

    return-wide v0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->sort:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setHot(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->hot:I

    .line 67
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->id:J

    .line 35
    return-void
.end method

.method public setSort(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->sort:I

    .line 59
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HotEvent;->tag:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->sort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/xueqiu/android/community/model/HotEvent;->hot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method

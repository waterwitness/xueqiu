.class public Lcom/xueqiu/android/tactic/d/g;
.super Ljava/lang/Object;
.source "TacticProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public categoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private constraints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private defaultOptionId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public detail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private endTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public owningStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public percentage:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public prices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public pushTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private startTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stockCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updateAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private visible:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/xueqiu/android/tactic/d/g$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/g$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/xueqiu/android/tactic/d/g;->defaultOptionId:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/g;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->detail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->createdAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->constraints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->constraints:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/g;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/xueqiu/android/tactic/d/g;->visible:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/g;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/xueqiu/android/tactic/d/g;->stockCount:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->iconUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->endTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->items:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->startTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->updateAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic e(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->summary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->categoryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->subtitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->constraints:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget v0, p0, Lcom/xueqiu/android/tactic/d/g;->defaultOptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->detail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->endTime:Ljava/util/Date;

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/g;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->startTime:Ljava/util/Date;

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->updateAt:Ljava/util/Date;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/d/g;->visible:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/xueqiu/android/tactic/d/g;->stockCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->endTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->startTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_2

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/g;->updateAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    .line 97
    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

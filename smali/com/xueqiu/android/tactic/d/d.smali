.class public Lcom/xueqiu/android/tactic/d/d;
.super Ljava/lang/Object;
.source "TacticOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public product:Lcom/xueqiu/android/tactic/d/g;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private productId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private quantity:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updateAt:Ljava/util/Date;
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
    .line 57
    new-instance v0, Lcom/xueqiu/android/tactic/d/d$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/d$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/d;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/tactic/d/d;->quantity:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/d;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/d;->campaignId:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/d;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/d;->product:Lcom/xueqiu/android/tactic/d/g;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/d;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/d;->createAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/d;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/tactic/d/d;->status:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/d;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/d;->id:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/d;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/d;->updateAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/d;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/d;->productId:J

    return-wide p1
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/d/d;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/d;->userId:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/d;->campaignId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/d;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/d;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/d;->product:Lcom/xueqiu/android/tactic/d/g;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/d;->productId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget v0, p0, Lcom/xueqiu/android/tactic/d/d;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/xueqiu/android/tactic/d/d;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/d;->updateAt:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/d;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/d;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/d;->updateAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method

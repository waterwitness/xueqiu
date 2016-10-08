.class public Lcom/xueqiu/android/tactic/d/h;
.super Ljava/lang/Object;
.source "TacticPush.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public product:Lcom/xueqiu/android/tactic/d/g;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stockTotal:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stocks:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/tactic/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/xueqiu/android/tactic/d/h$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/h$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/tactic/d/h;->stockTotal:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;J)J
    .locals 1

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/h;->id:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/h;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/h;->createdAt:Ljava/util/Date;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/h;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/h;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget v0, p0, Lcom/xueqiu/android/tactic/d/h;->stockTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 38
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/h;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.class public Lcom/xueqiu/android/tactic/d/e;
.super Ljava/lang/Object;
.source "TacticPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private optionId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private options:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/a;",
            ">;"
        }
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
    .line 43
    new-instance v0, Lcom/xueqiu/android/tactic/d/e$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/e$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/e;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/xueqiu/android/tactic/d/e;->optionId:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/e;J)J
    .locals 1

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/e;->userId:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/e;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/e;->updateAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/e;->options:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/e;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/xueqiu/android/tactic/d/e;->enabled:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/d/e;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/xueqiu/android/tactic/d/e;->optionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/e;->options:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/e;->updateAt:Ljava/util/Date;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/e;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/e;->updateAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1
.end method

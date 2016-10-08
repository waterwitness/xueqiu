.class public Lcom/xueqiu/android/tactic/d/b;
.super Ljava/lang/Object;
.source "PushStock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public changePercent:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private changePercentDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public current:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public flag:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isNew:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public replyCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public statusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private triggerDesc:Ljava/util/List;
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

.field public triggerPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private triggerTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/xueqiu/android/tactic/d/b$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/b$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/b;->changePercent:D

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/tactic/d/b;->flag:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/b;->statusId:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->changePercentDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->triggerTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->triggerDesc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->triggerDesc:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/b;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/xueqiu/android/tactic/d/b;->isNew:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/b;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/b;->current:D

    return-wide p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/b;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/b;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/b;->triggerPrice:D

    return-wide p1
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/b;->changePercent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->changePercentDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/b;->current:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/d/b;->isNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/xueqiu/android/tactic/d/b;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->triggerDesc:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/b;->triggerPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->triggerTime:Ljava/util/Date;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget v0, p0, Lcom/xueqiu/android/tactic/d/b;->replyCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/b;->statusId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/tactic/d/b;->triggerTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1
.end method

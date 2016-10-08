.class public Lcom/xueqiu/android/message/model/Read;
.super Ljava/lang/Object;
.source "Read.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/message/model/Read;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fromId:J

.field private isToGroup:Z

.field private timestamp:J

.field private toId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/xueqiu/android/message/model/Read$1;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Read$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/Read;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/snowballfinance/messageplatform/a/q;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    .line 1387
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    .line 1395
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/snowballfinance/messageplatform/data/MessageSessionExt;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getOwnerId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    .line 24
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    .line 26
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetLastReadTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    .line 27
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

.method public getFromId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    return-wide v0
.end method

.method public getToId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    return-wide v0
.end method

.method public isToGroup()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    return v0
.end method

.method public setFromId(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    .line 82
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    .line 106
    return-void
.end method

.method public setToGroup(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    .line 98
    return-void
.end method

.method public setToId(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->fromId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->toId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Read;->isToGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Read;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

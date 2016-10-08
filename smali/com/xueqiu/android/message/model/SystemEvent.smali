.class public Lcom/xueqiu/android/message/model/SystemEvent;
.super Ljava/lang/Object;
.source "SystemEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private id:J

.field private sequence:J

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->id:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->sequence:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->text:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->id:J

    return-wide v0
.end method

.method public getSequence()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->sequence:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/SystemEvent;->id:J

    .line 83
    return-void
.end method

.method public setSequence(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/SystemEvent;->sequence:J

    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/message/model/SystemEvent;->text:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->sequence:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/message/model/SystemEvent;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    return-void
.end method

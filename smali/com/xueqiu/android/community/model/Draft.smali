.class public Lcom/xueqiu/android/community/model/Draft;
.super Ljava/lang/Object;
.source "Draft.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Draft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private imageName:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/xueqiu/android/community/model/Draft$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Draft$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Draft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Draft;->timestamp:J

    .line 17
    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/community/model/Draft;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/xueqiu/android/community/model/Draft;->id:I

    return p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/community/model/Draft;I)I
    .locals 0

    .prologue
    .line 6
    iput p1, p0, Lcom/xueqiu/android/community/model/Draft;->type:I

    return p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->imageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/community/model/Draft;J)J
    .locals 1

    .prologue
    .line 6
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Draft;->timestamp:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/community/model/Draft;->id:I

    return v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Draft;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/xueqiu/android/community/model/Draft;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/xueqiu/android/community/model/Draft;->id:I

    .line 25
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->imageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->text:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Draft;->timestamp:J

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Draft;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/xueqiu/android/community/model/Draft;->type:I

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/xueqiu/android/community/model/Draft;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/xueqiu/android/community/model/Draft;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Draft;->imageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Draft;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void
.end method

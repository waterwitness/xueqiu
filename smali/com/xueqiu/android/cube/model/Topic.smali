.class public Lcom/xueqiu/android/cube/model/Topic;
.super Ljava/lang/Object;
.source "Topic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Topic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cubeCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hot:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/xueqiu/android/cube/model/Topic$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Topic$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Topic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Topic;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Topic;->hot:Z

    return p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->color:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Topic;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/xueqiu/android/cube/model/Topic;->cubeCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->image:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCubeCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/xueqiu/android/cube/model/Topic;->cubeCount:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Topic;->hot:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->color:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCubeCount(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/xueqiu/android/cube/model/Topic;->cubeCount:I

    .line 89
    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/Topic;->hot:Z

    .line 81
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->image:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Topic;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/Topic;->hot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->color:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/xueqiu/android/cube/model/Topic;->cubeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Topic;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/xueqiu/android/community/model/Interview;
.super Ljava/lang/Object;
.source "Interview.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Interview;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic"
    .end annotation
.end field

.field private interviewId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private picSize:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private picType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private users:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/xueqiu/android/community/model/Interview$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Interview$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Interview;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/community/model/Interview;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Interview;->interviewId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xueqiu/android/community/model/Interview;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xueqiu/android/community/model/Interview;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->date:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/community/model/Interview;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/xueqiu/android/community/model/Interview;->picType:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInterviewId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Interview;->interviewId:J

    return-wide v0
.end method

.method public getPicType()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/xueqiu/android/community/model/Interview;->picType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;

    return-object v0
.end method

.method public proportion()D
    .locals 4

    .prologue
    const-wide v2, 0x3fe0cccccccccccdL    # 0.525

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->picSize:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->picSize:Lcom/google/gson/JsonElement;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 158
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 160
    const-string v2, "width"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 161
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 167
    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->date:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->description:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->imageUrl:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setInterviewId(J)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Interview;->interviewId:J

    .line 93
    return-void
.end method

.method public setPicType(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/xueqiu/android/community/model/Interview;->picType:I

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->title:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->url:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Interview;->interviewId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Interview;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/xueqiu/android/community/model/Interview;->picType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method

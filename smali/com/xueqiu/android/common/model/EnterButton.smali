.class public Lcom/xueqiu/android/common/model/EnterButton;
.super Ljava/lang/Object;
.source "EnterButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/common/model/EnterButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonName"
    .end annotation
.end field

.field private buttonPosition:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonPosition"
    .end annotation
.end field

.field private createAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createAt"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private imageLink_2x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageLink_2x"
    .end annotation
.end field

.field private imageLink_3x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageLink_3x"
    .end annotation
.end field

.field private targetUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targetUrl"
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
    .line 64
    new-instance v0, Lcom/xueqiu/android/common/model/EnterButton$1;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/EnterButton$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/common/model/EnterButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_2x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_3x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/common/model/EnterButton;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->targetUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/common/model/EnterButton;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/common/model/EnterButton;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->visible:Z

    return p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/common/model/EnterButton;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->id:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonName:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonPosition()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonPosition:I

    return v0
.end method

.method public getCreateAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->id:I

    return v0
.end method

.method public getImageLink_2x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_2x:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLink_3x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_3x:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->visible:Z

    return v0
.end method

.method public setButtonName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setButtonPosition(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonPosition:I

    .line 115
    return-void
.end method

.method public setCreateAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;

    .line 131
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->id:I

    .line 147
    return-void
.end method

.method public setImageLink_2x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_2x:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setImageLink_3x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_3x:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->targetUrl:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/xueqiu/android/common/model/EnterButton;->visible:Z

    .line 139
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_2x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->imageLink_3x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->buttonPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->targetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->visible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.class public Lcom/xueqiu/android/cube/model/Style;
.super Ljava/lang/Object;
.source "Style.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color0:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private color1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private degreee:I
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
    .line 76
    new-instance v0, Lcom/xueqiu/android/cube/model/Style$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Style$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/Style;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->color0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->color1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/cube/model/Style;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/xueqiu/android/cube/model/Style;->degreee:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getColor0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->color0:Ljava/lang/String;

    return-object v0
.end method

.method public getColor1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->color1:Ljava/lang/String;

    return-object v0
.end method

.method public getDegreee()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/xueqiu/android/cube/model/Style;->degreee:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setColor0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->color0:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setColor1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->color1:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDegreee(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/xueqiu/android/cube/model/Style;->degreee:I

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/Style;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->color0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/Style;->color1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/xueqiu/android/cube/model/Style;->degreee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method

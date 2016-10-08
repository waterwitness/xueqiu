.class public Lcom/xueqiu/android/stock/model/Portfolio;
.super Ljava/lang/Object;
.source "Portfolio.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private include:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/xueqiu/android/stock/model/Portfolio$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Portfolio$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/Portfolio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/stock/model/Portfolio;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->id:I

    return p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/stock/model/Portfolio;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/stock/model/Portfolio;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->orderId:I

    return p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/stock/model/Portfolio;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->include:Z

    return p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/stock/model/Portfolio;I)I
    .locals 0

    .prologue
    .line 8
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->type:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->orderId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->type:I

    return v0
.end method

.method public isInclude()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->include:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->id:I

    .line 77
    return-void
.end method

.method public setInclude(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->include:Z

    .line 101
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->name:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setOrderId(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->orderId:I

    .line 93
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/xueqiu/android/stock/model/Portfolio;->type:I

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->orderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->include:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/xueqiu/android/stock/model/Portfolio;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

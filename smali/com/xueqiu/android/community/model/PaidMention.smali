.class public Lcom/xueqiu/android/community/model/PaidMention;
.super Ljava/lang/Object;
.source "PaidMention.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/PaidMention;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private payment:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private state:Ljava/lang/String;
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
    .line 33
    new-instance v0, Lcom/xueqiu/android/community/model/PaidMention$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/PaidMention$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/PaidMention;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->state:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->amount:F

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->payment:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->userId:J

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->amount:F

    return v0
.end method

.method public getPayment()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->payment:F

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->userId:J

    return-wide v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/xueqiu/android/community/model/PaidMention;->amount:F

    .line 59
    return-void
.end method

.method public setPayment(F)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/xueqiu/android/community/model/PaidMention;->payment:F

    .line 75
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PaidMention;->state:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/PaidMention;->userId:J

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->amount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->payment:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 87
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PaidMention;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    return-void
.end method

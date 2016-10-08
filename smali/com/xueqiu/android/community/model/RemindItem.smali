.class public Lcom/xueqiu/android/community/model/RemindItem;
.super Ljava/lang/Object;
.source "RemindItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/RemindItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ts:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/xueqiu/android/community/model/RemindItem$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RemindItem$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/RemindItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->count:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->ts:J

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->count:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->ts:J

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/RemindItem$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/RemindItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->count:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->ts:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/xueqiu/android/community/model/RemindItem;->count:I

    .line 36
    return-void
.end method

.method public setTs(J)V
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RemindItem;->ts:J

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RemindItem;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method

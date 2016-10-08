.class public Lcom/xueqiu/android/tactic/d/f;
.super Ljava/lang/Object;
.source "TacticPrice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/tactic/d/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private price:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/xueqiu/android/tactic/d/f$1;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/f$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/tactic/d/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/f;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/xueqiu/android/tactic/d/f;->quantity:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/d/f;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/tactic/d/f;->price:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/xueqiu/android/tactic/d/f;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/d/f;->price:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    return-void
.end method

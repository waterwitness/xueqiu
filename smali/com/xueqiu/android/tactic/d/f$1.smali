.class final Lcom/xueqiu/android/tactic/d/f$1;
.super Ljava/lang/Object;
.source "TacticPrice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2035
    new-instance v0, Lcom/xueqiu/android/tactic/d/f;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/f;-><init>()V

    .line 2036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/d/f;->a(Lcom/xueqiu/android/tactic/d/f;I)I

    .line 2037
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/tactic/d/f;->a(Lcom/xueqiu/android/tactic/d/f;J)J

    .line 32
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .line 1043
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/f;

    .line 32
    return-object v0
.end method

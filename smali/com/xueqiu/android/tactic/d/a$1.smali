.class final Lcom/xueqiu/android/tactic/d/a$1;
.super Ljava/lang/Object;
.source "ProductOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2045
    new-instance v0, Lcom/xueqiu/android/tactic/d/a;

    invoke-direct {v0}, Lcom/xueqiu/android/tactic/d/a;-><init>()V

    .line 2046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/d/a;->a(Lcom/xueqiu/android/tactic/d/a;I)I

    .line 2047
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/d/a;->a(Lcom/xueqiu/android/tactic/d/a;Ljava/lang/String;)Ljava/lang/String;

    .line 2048
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/tactic/d/a;->a(Lcom/xueqiu/android/tactic/d/a;J)J

    .line 2049
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/d/a;->a(Lcom/xueqiu/android/tactic/d/a;Ljava/util/Date;)Ljava/util/Date;

    .line 2050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/d/a;->b(Lcom/xueqiu/android/tactic/d/a;Ljava/lang/String;)Ljava/lang/String;

    .line 2051
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xueqiu/android/tactic/d/a;

    .line 42
    return-object v0
.end method

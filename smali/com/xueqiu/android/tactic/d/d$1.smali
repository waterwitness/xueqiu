.class final Lcom/xueqiu/android/tactic/d/d$1;
.super Ljava/lang/Object;
.source "TacticOrder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2060
    new-instance v1, Lcom/xueqiu/android/tactic/d/d;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/d;-><init>()V

    .line 2061
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/d;->a(Lcom/xueqiu/android/tactic/d/d;J)J

    .line 2062
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/d;->a(Lcom/xueqiu/android/tactic/d/d;Ljava/util/Date;)Ljava/util/Date;

    .line 2063
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/d;->b(Lcom/xueqiu/android/tactic/d/d;J)J

    .line 2064
    const-class v0, Lcom/xueqiu/android/tactic/d/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/g;

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/d;->a(Lcom/xueqiu/android/tactic/d/d;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;

    .line 2065
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/d;->c(Lcom/xueqiu/android/tactic/d/d;J)J

    .line 2066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/d;->a(Lcom/xueqiu/android/tactic/d/d;I)I

    .line 2067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/d;->b(Lcom/xueqiu/android/tactic/d/d;I)I

    .line 2068
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/d;->b(Lcom/xueqiu/android/tactic/d/d;Ljava/util/Date;)Ljava/util/Date;

    .line 2069
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/d;->d(Lcom/xueqiu/android/tactic/d/d;J)J

    .line 57
    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    .line 1075
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/d;

    .line 57
    return-object v0
.end method

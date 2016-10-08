.class final Lcom/xueqiu/android/tactic/d/h$1;
.super Ljava/lang/Object;
.source "TacticPush.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/h;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2043
    new-instance v1, Lcom/xueqiu/android/tactic/d/h;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/h;-><init>()V

    .line 2044
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;J)J

    .line 2045
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;Ljava/util/Date;)Ljava/util/Date;

    .line 2046
    const-class v0, Lcom/xueqiu/android/tactic/d/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/g;

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;

    .line 2047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;I)I

    .line 2048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2049
    invoke-static {v1}, Lcom/xueqiu/android/tactic/d/h;->a(Lcom/xueqiu/android/tactic/d/h;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/tactic/d/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 40
    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    .line 1055
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/h;

    .line 40
    return-object v0
.end method

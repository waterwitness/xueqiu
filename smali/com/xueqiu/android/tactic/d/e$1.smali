.class final Lcom/xueqiu/android/tactic/d/e$1;
.super Ljava/lang/Object;
.source "TacticPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2046
    new-instance v1, Lcom/xueqiu/android/tactic/d/e;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/e;-><init>()V

    .line 2047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/e;->a(Lcom/xueqiu/android/tactic/d/e;Z)Z

    .line 2048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/e;->a(Lcom/xueqiu/android/tactic/d/e;I)I

    .line 2049
    const-class v0, Lcom/xueqiu/android/tactic/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/e;->a(Lcom/xueqiu/android/tactic/d/e;Ljava/util/List;)Ljava/util/List;

    .line 2050
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/e;->a(Lcom/xueqiu/android/tactic/d/e;Ljava/util/Date;)Ljava/util/Date;

    .line 2051
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/e;->a(Lcom/xueqiu/android/tactic/d/e;J)J

    .line 43
    return-object v1

    .line 2047
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    .line 1057
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/e;

    .line 43
    return-object v0
.end method

.class final Lcom/xueqiu/android/tactic/d/b$1;
.super Ljava/lang/Object;
.source "PushStock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2068
    new-instance v1, Lcom/xueqiu/android/tactic/d/b;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/b;-><init>()V

    .line 2069
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;D)D

    .line 2070
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2071
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/b;->b(Lcom/xueqiu/android/tactic/d/b;D)D

    .line 2072
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/b;->b(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;Z)Z

    .line 2074
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->c(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2075
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->d(Lcom/xueqiu/android/tactic/d/b;Ljava/lang/String;)Ljava/lang/String;

    .line 2076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;I)I

    .line 2077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;Ljava/util/List;)Ljava/util/List;

    .line 2078
    invoke-static {v1}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2079
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/b;->c(Lcom/xueqiu/android/tactic/d/b;D)D

    .line 2080
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;Ljava/util/Date;)Ljava/util/Date;

    .line 2081
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/b;->b(Lcom/xueqiu/android/tactic/d/b;I)I

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/b;->a(Lcom/xueqiu/android/tactic/d/b;J)J

    .line 65
    return-object v1

    .line 2073
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    .line 1088
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/b;

    .line 65
    return-object v0
.end method

.class final Lcom/xueqiu/android/tactic/d/g$1;
.super Ljava/lang/Object;
.source "TacticProduct.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2107
    new-instance v1, Lcom/xueqiu/android/tactic/d/g;

    invoke-direct {v1}, Lcom/xueqiu/android/tactic/d/g;-><init>()V

    .line 2108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;

    .line 2109
    invoke-static {v1}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 2110
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;

    .line 2111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;I)I

    .line 2112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2113
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->b(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;

    .line 2114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->b(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;J)J

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->c(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->b(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;

    .line 2118
    invoke-static {v1}, Lcom/xueqiu/android/tactic/d/g;->b(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/tactic/d/g;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 2119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->c(Lcom/xueqiu/android/tactic/d/g;Ljava/util/List;)Ljava/util/List;

    .line 2120
    invoke-static {v1}, Lcom/xueqiu/android/tactic/d/g;->c(Lcom/xueqiu/android/tactic/d/g;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/tactic/d/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 2121
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->c(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;

    .line 2122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->d(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->e(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->f(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->g(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->h(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2127
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/tactic/d/g;->d(Lcom/xueqiu/android/tactic/d/g;Ljava/util/Date;)Ljava/util/Date;

    .line 2128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/g;->a(Lcom/xueqiu/android/tactic/d/g;Z)Z

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/g;->i(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/g;->j(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/g;->k(Lcom/xueqiu/android/tactic/d/g;Ljava/lang/String;)Ljava/lang/String;

    .line 2132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/d/g;->b(Lcom/xueqiu/android/tactic/d/g;I)I

    .line 104
    return-object v1

    .line 2128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    .line 1138
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/g;

    .line 104
    return-object v0
.end method

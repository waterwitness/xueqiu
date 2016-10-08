.class final Lcom/xueqiu/android/cube/model/RecommendCube$1;
.super Ljava/lang/Object;
.source "RecommendCube.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/RecommendCube;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/RecommendCube;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/RecommendCube;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    new-instance v2, Lcom/xueqiu/android/cube/model/RecommendCube;

    invoke-direct {v2}, Lcom/xueqiu/android/cube/model/RecommendCube;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/RecommendCube;->id:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->access$002(Lcom/xueqiu/android/cube/model/RecommendCube;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    const-class v0, Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    # setter for: Lcom/xueqiu/android/cube/model/RecommendCube;->cube:Lcom/xueqiu/android/cube/model/Cube;
    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->access$102(Lcom/xueqiu/android/cube/model/RecommendCube;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 56
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    # setter for: Lcom/xueqiu/android/cube/model/RecommendCube;->owner:Lcom/xueqiu/android/community/model/User;
    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->access$202(Lcom/xueqiu/android/cube/model/RecommendCube;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/xueqiu/android/cube/model/RecommendCube;->hasExist:Z
    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->access$302(Lcom/xueqiu/android/cube/model/RecommendCube;Z)Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/RecommendCube;->recommendReason:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->access$402(Lcom/xueqiu/android/cube/model/RecommendCube;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-object v2

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/RecommendCube$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/RecommendCube;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/RecommendCube;
    .locals 1

    .prologue
    .line 64
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/RecommendCube;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/RecommendCube$1;->newArray(I)[Lcom/xueqiu/android/cube/model/RecommendCube;

    move-result-object v0

    return-object v0
.end method

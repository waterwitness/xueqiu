.class final Lcom/xueqiu/android/cube/model/Topic$1;
.super Ljava/lang/Object;
.source "Topic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Topic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Topic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Topic;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    new-instance v1, Lcom/xueqiu/android/cube/model/Topic;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/model/Topic;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/cube/model/Topic;->name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/cube/model/Topic;->access$002(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/xueqiu/android/cube/model/Topic;->hot:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/model/Topic;->access$102(Lcom/xueqiu/android/cube/model/Topic;Z)Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Topic;->color:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/model/Topic;->access$202(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/cube/model/Topic;->cubeCount:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/model/Topic;->access$302(Lcom/xueqiu/android/cube/model/Topic;I)I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/Topic;->image:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/model/Topic;->access$402(Lcom/xueqiu/android/cube/model/Topic;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    return-object v1

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Topic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Topic;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Topic;
    .locals 1

    .prologue
    .line 63
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Topic;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Topic$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Topic;

    move-result-object v0

    return-object v0
.end method

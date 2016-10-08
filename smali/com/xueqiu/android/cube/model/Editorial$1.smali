.class final Lcom/xueqiu/android/cube/model/Editorial$1;
.super Ljava/lang/Object;
.source "Editorial.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Editorial;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Editorial;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Editorial;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/xueqiu/android/cube/model/Editorial;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Editorial;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->id:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Editorial;->access$002(Lcom/xueqiu/android/cube/model/Editorial;J)J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$102(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->cubeCount:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$202(Lcom/xueqiu/android/cube/model/Editorial;I)I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->description:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$302(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->image:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$402(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->rank:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$502(Lcom/xueqiu/android/cube/model/Editorial;I)I

    .line 73
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->createdAt:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$602(Lcom/xueqiu/android/cube/model/Editorial;Ljava/util/Date;)Ljava/util/Date;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Editorial;->url:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Editorial;->access$702(Lcom/xueqiu/android/cube/model/Editorial;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Editorial$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Editorial;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Editorial;
    .locals 1

    .prologue
    .line 80
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Editorial;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Editorial$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Editorial;

    move-result-object v0

    return-object v0
.end method

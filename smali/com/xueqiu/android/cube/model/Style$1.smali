.class final Lcom/xueqiu/android/cube/model/Style$1;
.super Ljava/lang/Object;
.source "Style.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Style;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/Style;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Style;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/xueqiu/android/cube/model/Style;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Style;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Style;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Style;->access$002(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Style;->color0:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Style;->access$102(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/Style;->color1:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Style;->access$202(Lcom/xueqiu/android/cube/model/Style;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/cube/model/Style;->degreee:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/Style;->access$302(Lcom/xueqiu/android/cube/model/Style;I)I

    .line 84
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Style$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/Style;
    .locals 1

    .prologue
    .line 89
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/Style;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/Style$1;->newArray(I)[Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    return-object v0
.end method

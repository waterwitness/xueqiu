.class final Lcom/xueqiu/android/community/model/Draft$1;
.super Ljava/lang/Object;
.source "Draft.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/Draft;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/Draft;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/Draft;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/xueqiu/android/community/model/Draft;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Draft;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/Draft;->id:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->access$002(Lcom/xueqiu/android/community/model/Draft;I)I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/Draft;->type:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->access$102(Lcom/xueqiu/android/community/model/Draft;I)I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Draft;->text:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->access$202(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Draft;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->access$302(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Draft;->imageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->access$402(Lcom/xueqiu/android/community/model/Draft;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/community/model/Draft;->timestamp:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/model/Draft;->access$502(Lcom/xueqiu/android/community/model/Draft;J)J

    .line 92
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/Draft$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/Draft;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/Draft;
    .locals 1

    .prologue
    .line 97
    new-array v0, p1, [Lcom/xueqiu/android/community/model/Draft;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/Draft$1;->newArray(I)[Lcom/xueqiu/android/community/model/Draft;

    move-result-object v0

    return-object v0
.end method

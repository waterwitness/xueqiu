.class final Lcom/xueqiu/android/community/model/Interview$1;
.super Ljava/lang/Object;
.source "Interview.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/Interview;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/Interview;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/Interview;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/community/model/Interview;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Interview;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/community/model/Interview;->interviewId:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/model/Interview;->access$002(Lcom/xueqiu/android/community/model/Interview;J)J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Interview;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$102(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Interview;->description:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$202(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Interview;->url:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$302(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$402(Lcom/xueqiu/android/community/model/Interview;Ljava/util/List;)Ljava/util/List;

    .line 74
    # getter for: Lcom/xueqiu/android/community/model/Interview;->users:Ljava/util/List;
    invoke-static {v0}, Lcom/xueqiu/android/community/model/Interview;->access$400(Lcom/xueqiu/android/community/model/Interview;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/community/model/User;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/model/Interview;->imageUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/Interview;->date:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$502(Lcom/xueqiu/android/community/model/Interview;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/Interview;->picType:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/Interview;->access$602(Lcom/xueqiu/android/community/model/Interview;I)I

    .line 78
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/Interview$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/Interview;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/Interview;
    .locals 1

    .prologue
    .line 83
    new-array v0, p1, [Lcom/xueqiu/android/community/model/Interview;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/Interview$1;->newArray(I)[Lcom/xueqiu/android/community/model/Interview;

    move-result-object v0

    return-object v0
.end method

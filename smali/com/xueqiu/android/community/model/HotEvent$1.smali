.class final Lcom/xueqiu/android/community/model/HotEvent$1;
.super Ljava/lang/Object;
.source "HotEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/HotEvent;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/HotEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/HotEvent;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/xueqiu/android/community/model/HotEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/HotEvent;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/community/model/HotEvent;->id:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/model/HotEvent;->access$002(Lcom/xueqiu/android/community/model/HotEvent;J)J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/HotEvent;->tag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->access$102(Lcom/xueqiu/android/community/model/HotEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/HotEvent;->content:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->access$202(Lcom/xueqiu/android/community/model/HotEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/HotEvent;->sort:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->access$302(Lcom/xueqiu/android/community/model/HotEvent;I)I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/HotEvent;->hot:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->access$402(Lcom/xueqiu/android/community/model/HotEvent;I)I

    .line 92
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/HotEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/HotEvent;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/HotEvent;
    .locals 1

    .prologue
    .line 97
    new-array v0, p1, [Lcom/xueqiu/android/community/model/HotEvent;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/HotEvent$1;->newArray(I)[Lcom/xueqiu/android/community/model/HotEvent;

    move-result-object v0

    return-object v0
.end method

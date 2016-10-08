.class final Lcom/xueqiu/android/community/model/InterestTopic$1;
.super Ljava/lang/Object;
.source "InterestTopic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/model/InterestTopic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/community/model/InterestTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/InterestTopic;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/xueqiu/android/community/model/InterestTopic;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/InterestTopic;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/xueqiu/android/community/model/InterestTopic;->id:I
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/InterestTopic;->access$002(Lcom/xueqiu/android/community/model/InterestTopic;I)I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/community/model/InterestTopic;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/model/InterestTopic;->access$102(Lcom/xueqiu/android/community/model/InterestTopic;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/InterestTopic$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/community/model/InterestTopic;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/community/model/InterestTopic;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/xueqiu/android/community/model/InterestTopic;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/model/InterestTopic$1;->newArray(I)[Lcom/xueqiu/android/community/model/InterestTopic;

    move-result-object v0

    return-object v0
.end method

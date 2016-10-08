.class final Lcom/xueqiu/android/common/model/EnterButton$1;
.super Ljava/lang/Object;
.source "EnterButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/model/EnterButton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/common/model/EnterButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/common/model/EnterButton;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 67
    new-instance v1, Lcom/xueqiu/android/common/model/EnterButton;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/EnterButton;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->buttonName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$002(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->imageLink_2x:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$102(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->imageLink_3x:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$202(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->buttonPosition:I
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$302(Lcom/xueqiu/android/common/model/EnterButton;I)I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->targetUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$402(Lcom/xueqiu/android/common/model/EnterButton;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->createAt:Ljava/util/Date;
    invoke-static {v1, v2}, Lcom/xueqiu/android/common/model/EnterButton;->access$502(Lcom/xueqiu/android/common/model/EnterButton;Ljava/util/Date;)Ljava/util/Date;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->visible:Z
    invoke-static {v1, v0}, Lcom/xueqiu/android/common/model/EnterButton;->access$602(Lcom/xueqiu/android/common/model/EnterButton;Z)Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/xueqiu/android/common/model/EnterButton;->id:I
    invoke-static {v1, v0}, Lcom/xueqiu/android/common/model/EnterButton;->access$702(Lcom/xueqiu/android/common/model/EnterButton;I)I

    .line 76
    return-object v1

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/EnterButton$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/common/model/EnterButton;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/common/model/EnterButton;
    .locals 1

    .prologue
    .line 81
    new-array v0, p1, [Lcom/xueqiu/android/common/model/EnterButton;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/EnterButton$1;->newArray(I)[Lcom/xueqiu/android/common/model/EnterButton;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/xueqiu/android/cube/model/LastTicket$1;
.super Ljava/lang/Object;
.source "LastTicket.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/LastTicket;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/LastTicket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/LastTicket;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    new-instance v3, Lcom/xueqiu/android/cube/model/LastTicket;

    invoke-direct {v3}, Lcom/xueqiu/android/cube/model/LastTicket;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/LastTicket;->closed:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/LastTicket;->access$002(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/LastTicket;->paid:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/LastTicket;->access$102(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/LastTicket;->submitted:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/LastTicket;->access$202(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/LastTicket;->finished:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/LastTicket;->access$302(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # setter for: Lcom/xueqiu/android/cube/model/LastTicket;->status:Ljava/lang/Integer;
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/model/LastTicket;->access$402(Lcom/xueqiu/android/cube/model/LastTicket;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 51
    return-object v3

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    :cond_1
    move v0, v2

    .line 47
    goto :goto_1

    :cond_2
    move v0, v2

    .line 48
    goto :goto_2

    :cond_3
    move v1, v2

    .line 49
    goto :goto_3
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/LastTicket$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/LastTicket;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/LastTicket;
    .locals 1

    .prologue
    .line 56
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/LastTicket;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/LastTicket$1;->newArray(I)[Lcom/xueqiu/android/cube/model/LastTicket;

    move-result-object v0

    return-object v0
.end method

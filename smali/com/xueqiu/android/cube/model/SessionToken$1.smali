.class final Lcom/xueqiu/android/cube/model/SessionToken$1;
.super Ljava/lang/Object;
.source "SessionToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/SessionToken;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/cube/model/SessionToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/SessionToken;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/xueqiu/android/cube/model/SessionToken;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/SessionToken;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/cube/model/SessionToken;->sessionToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/model/SessionToken;->access$002(Lcom/xueqiu/android/cube/model/SessionToken;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/SessionToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/cube/model/SessionToken;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/cube/model/SessionToken;
    .locals 1

    .prologue
    .line 51
    new-array v0, p1, [Lcom/xueqiu/android/cube/model/SessionToken;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/model/SessionToken$1;->newArray(I)[Lcom/xueqiu/android/cube/model/SessionToken;

    move-result-object v0

    return-object v0
.end method

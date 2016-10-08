.class final Lcom/xueqiu/android/common/widget/at$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/at;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/common/widget/at;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2908
    new-instance v0, Lcom/xueqiu/android/common/widget/at;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xueqiu/android/common/widget/at;-><init>(Landroid/os/Parcel;B)V

    .line 906
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 906
    .line 1912
    new-array v0, p1, [Lcom/xueqiu/android/common/widget/at;

    .line 906
    return-object v0
.end method

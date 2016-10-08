.class final Lcom/xueqiu/android/tactic/d/c$1;
.super Ljava/lang/Object;
.source "SimpleTopic.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/d/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/tactic/d/c;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2079
    new-instance v0, Lcom/xueqiu/android/tactic/d/c;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/tactic/d/c;-><init>(Landroid/os/Parcel;)V

    .line 76
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .line 1084
    new-array v0, p1, [Lcom/xueqiu/android/tactic/d/c;

    .line 76
    return-object v0
.end method

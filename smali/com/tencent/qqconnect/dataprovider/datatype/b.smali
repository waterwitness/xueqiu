.class final Lcom/tencent/qqconnect/dataprovider/datatype/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2029
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;-><init>(Landroid/os/Parcel;Lcom/tencent/qqconnect/dataprovider/datatype/b;)V

    .line 27
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .line 1033
    new-array v0, p1, [Lcom/tencent/qqconnect/dataprovider/datatype/TextOnly;

    .line 27
    return-object v0
.end method

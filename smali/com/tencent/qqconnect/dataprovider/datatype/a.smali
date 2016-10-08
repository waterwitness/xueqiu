.class final Lcom/tencent/qqconnect/dataprovider/datatype/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2036
    new-instance v0, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;-><init>(Landroid/os/Parcel;Lcom/tencent/qqconnect/dataprovider/datatype/a;)V

    .line 34
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .line 1040
    new-array v0, p1, [Lcom/tencent/qqconnect/dataprovider/datatype/TextAndMediaPath;

    .line 34
    return-object v0
.end method

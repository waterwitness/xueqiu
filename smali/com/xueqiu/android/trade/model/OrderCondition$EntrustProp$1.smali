.class Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;
.super Ljava/lang/Object;
.source "OrderCondition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;->this$1:Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    iget-object v1, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;->this$1:Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    iget-object v1, v1, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->this$0:Lcom/xueqiu/android/trade/model/OrderCondition;

    invoke-direct {v0, v1, p1}, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;-><init>(Lcom/xueqiu/android/trade/model/OrderCondition;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;
    .locals 1

    .prologue
    .line 162
    new-array v0, p1, [Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;->newArray(I)[Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    move-result-object v0

    return-object v0
.end method

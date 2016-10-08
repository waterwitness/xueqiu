.class public Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;
.super Ljava/lang/Object;
.source "OrderCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;",
            ">;"
        }
    .end annotation
.end field

.field private oprop:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/xueqiu/android/trade/model/OrderCondition;


# direct methods
.method protected constructor <init>(Lcom/xueqiu/android/trade/model/OrderCondition;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->this$0:Lcom/xueqiu/android/trade/model/OrderCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp$1;-><init>(Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->oprop:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getOprop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->oprop:Ljava/lang/String;

    return-object v0
.end method

.method public setOprop(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->oprop:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->oprop:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void
.end method

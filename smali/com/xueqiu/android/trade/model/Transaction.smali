.class public Lcom/xueqiu/android/trade/model/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xueqiu/android/trade/model/Transaction;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private businessBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "business_balance"
    .end annotation
.end field

.field private camount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private commissionFees:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commission_fees"
    .end annotation
.end field

.field private cprice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ctime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ctimestamp:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private etype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private occurAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "occur_amount"
    .end annotation
.end field

.field private occurBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "occur_balance"
    .end annotation
.end field

.field private oid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pos:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private postAmount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_amount"
    .end annotation
.end field

.field private postBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_balance"
    .end annotation
.end field

.field private resultCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_code"
    .end annotation
.end field

.field private scode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stampDuty:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stamp_duty"
    .end annotation
.end field

.field private stockAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stock_account"
    .end annotation
.end field

.field private tradeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transferFees:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_fees"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/xueqiu/android/trade/model/Transaction$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/Transaction$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->resultCode:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->msg:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->etype:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stockAccount:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->scode:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->sname:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->action:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->oid:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->cprice:D

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->camount:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctime:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurAmount:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postBalance:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->businessBalance:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurBalance:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postAmount:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->commissionFees:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stampDuty:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->transferFees:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->pos:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctimestamp:J

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->tradeName:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xueqiu/android/trade/model/Transaction;)I
    .locals 4
    .param p1    # Lcom/xueqiu/android/trade/model/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctimestamp:J

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/Transaction;->getCtimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 342
    const/4 v0, -0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    check-cast p1, Lcom/xueqiu/android/trade/model/Transaction;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/model/Transaction;->compareTo(Lcom/xueqiu/android/trade/model/Transaction;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->businessBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getCamount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->camount:Ljava/lang/String;

    return-object v0
.end method

.method public getCommissionFees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->commissionFees:Ljava/lang/String;

    return-object v0
.end method

.method public getCprice()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->cprice:D

    return-wide v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getCtimestamp()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctimestamp:J

    return-wide v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOccurAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getOccurBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->pos:Ljava/lang/String;

    return-object v0
.end method

.method public getPostAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getScode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->scode:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->sname:Ljava/lang/String;

    return-object v0
.end method

.method public getStampDuty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stampDuty:Ljava/lang/String;

    return-object v0
.end method

.method public getStockAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stockAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->tradeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferFees()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->transferFees:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->action:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setBusinessBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->businessBalance:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setCamount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->camount:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCommissionFees(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->commissionFees:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setCprice(D)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->cprice:D

    .line 162
    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctime:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setCtimestamp(J)V
    .locals 1

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctimestamp:J

    .line 258
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->etype:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->msg:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOccurAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurAmount:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setOccurBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurBalance:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->oid:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPos(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->pos:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setPostAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->postAmount:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setPostBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->postBalance:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->resultCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setScode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->scode:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->sname:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setStampDuty(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->stampDuty:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setStockAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->stockAccount:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTradeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->tradeName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setTransferFees(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Transaction;->transferFees:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->resultCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stockAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->scode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->sname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->cprice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->camount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->businessBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->occurBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->postAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->commissionFees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->stampDuty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->transferFees:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->pos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->ctimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Transaction;->tradeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return-void
.end method

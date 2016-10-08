.class public Lcom/xueqiu/android/trade/model/TrustDeed;
.super Ljava/lang/Object;
.source "TrustDeed.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TrustDeed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private amount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private batchNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batch_no"
    .end annotation
.end field

.field private camount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "camount"
    .end annotation
.end field

.field private cprice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cprice"
    .end annotation
.end field

.field private ctime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctime"
    .end annotation
.end field

.field private etype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "etype"
    .end annotation
.end field

.field private oid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oid"
    .end annotation
.end field

.field private oprop:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oprop"
    .end annotation
.end field

.field private ostatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ostatus"
    .end annotation
.end field

.field private ostatusColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ostatus_color"
    .end annotation
.end field

.field private ostatusName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ostatus_name"
    .end annotation
.end field

.field private otime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otime"
    .end annotation
.end field

.field private otimestamp:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otimestamp"
    .end annotation
.end field

.field private pos:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pos"
    .end annotation
.end field

.field private price:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private revokeable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_withdraw"
    .end annotation
.end field

.field private scode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scode"
    .end annotation
.end field

.field private sname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sname"
    .end annotation
.end field

.field private stockAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stock_account"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/xueqiu/android/trade/model/TrustDeed$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TrustDeed$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TrustDeed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->etype:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->stockAccount:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->scode:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->sname:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->action:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oid:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->batchNo:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->price:D

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->amount:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->cprice:D

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->camount:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatus:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otime:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ctime:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->pos:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oprop:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusName:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusColor:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->revokeable:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otimestamp:J

    .line 310
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->batchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCamount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->camount:Ljava/lang/String;

    return-object v0
.end method

.method public getCprice()D
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->cprice:D

    return-wide v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOprop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oprop:Ljava/lang/String;

    return-object v0
.end method

.method public getOstatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOstatusColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOstatusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusName:Ljava/lang/String;

    return-object v0
.end method

.method public getOtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otime:Ljava/lang/String;

    return-object v0
.end method

.method public getOtimestamp()J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otimestamp:J

    return-wide v0
.end method

.method public getPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->pos:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->price:D

    return-wide v0
.end method

.method public getScode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->scode:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->sname:Ljava/lang/String;

    return-object v0
.end method

.method public getStockAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->stockAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isRevokeable()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->revokeable:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->action:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->amount:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setBatchNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->batchNo:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setCamount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->camount:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setCprice(D)V
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->cprice:D

    .line 183
    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ctime:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->etype:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oid:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setOprop(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oprop:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setOstatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatus:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setOstatusColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusColor:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setOstatusName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setOtime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otime:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setOtimestamp(J)V
    .locals 1

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otimestamp:J

    .line 255
    return-void
.end method

.method public setPos(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->pos:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setPrice(D)V
    .locals 1

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->price:D

    .line 167
    return-void
.end method

.method public setRevokeable(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->revokeable:Z

    .line 103
    return-void
.end method

.method public setScode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->scode:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->sname:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setStockAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->stockAccount:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->stockAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->scode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->sname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->batchNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->cprice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->camount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ctime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->pos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->oprop:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->ostatusColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->revokeable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 286
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TrustDeed;->otimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

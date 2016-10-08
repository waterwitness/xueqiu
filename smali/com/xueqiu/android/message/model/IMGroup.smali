.class public Lcom/xueqiu/android/message/model/IMGroup;
.super Ljava/lang/Object;
.source "IMGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private allowInviteUser:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emptyName:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private joined:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private limitCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private master:Lcom/xueqiu/android/community/model/User;

.field private masterId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owner_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pinyinHeaders:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_image_url_100"
    .end annotation
.end field

.field private pub:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ispublic"
    .end annotation
.end field

.field private star:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private truncated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/xueqiu/android/message/model/IMGroup$1;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/IMGroup$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/IMGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->createdAt:Ljava/util/Date;

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->id:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->name:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->description:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->profileImageUrl:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->count:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->masterId:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->pub:Z

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->truncated:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->joined:Z

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->emptyName:Z

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/message/model/IMGroup;->limitCount:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_4
    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->allowInviteUser:Z

    .line 250
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->createdAt:Ljava/util/Date;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->star:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_5
    return-void

    :cond_0
    move v2, v1

    .line 244
    goto :goto_0

    :cond_1
    move v2, v1

    .line 245
    goto :goto_1

    :cond_2
    move v2, v1

    .line 246
    goto :goto_2

    :cond_3
    move v2, v1

    .line 247
    goto :goto_3

    :cond_4
    move v0, v1

    .line 249
    goto :goto_4

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "IMGroup"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->count:I

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->id:J

    return-wide v0
.end method

.method public getLimitCount()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->limitCount:I

    return v0
.end method

.method public getMaster()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->master:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getMasterId()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->masterId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->pinyinHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->star:I

    return v0
.end method

.method public isAllowInviteUser()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->allowInviteUser:Z

    return v0
.end method

.method public isEmptyName()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->emptyName:Z

    return v0
.end method

.method public isJoined()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->joined:Z

    return v0
.end method

.method public isPub()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->pub:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->truncated:Z

    return v0
.end method

.method public setAllowInviteUser(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->allowInviteUser:Z

    .line 217
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->count:I

    .line 145
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->createdAt:Ljava/util/Date;

    .line 177
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->description:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setEmptyName(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->emptyName:Z

    .line 201
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->id:J

    .line 113
    return-void
.end method

.method public setJoined(Z)V
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->joined:Z

    .line 193
    return-void
.end method

.method public setLimitCount(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->limitCount:I

    .line 209
    return-void
.end method

.method public setMaster(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->master:Lcom/xueqiu/android/community/model/User;

    .line 153
    return-void
.end method

.method public setMasterId(J)V
    .locals 1

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->masterId:J

    .line 185
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPinyinHeaders(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->pinyinHeaders:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->profileImageUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPub(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->pub:Z

    .line 161
    return-void
.end method

.method public setStar(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->star:I

    .line 225
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/IMGroup;->truncated:Z

    .line 169
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/IMGroup;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/IMGroup;->masterId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->pub:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->truncated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->joined:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->emptyName:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->limitCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->allowInviteUser:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    iget v0, p0, Lcom/xueqiu/android/message/model/IMGroup;->star:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return-void

    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    :cond_1
    move v0, v2

    .line 266
    goto :goto_1

    :cond_2
    move v0, v2

    .line 267
    goto :goto_2

    :cond_3
    move v0, v2

    .line 268
    goto :goto_3

    :cond_4
    move v1, v2

    .line 270
    goto :goto_4
.end method

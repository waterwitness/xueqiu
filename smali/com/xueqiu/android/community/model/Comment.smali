.class public Lcom/xueqiu/android/community/model/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blocked:Z
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

.field private donateCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private donateSnowcoin:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private favorited:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isAnswer:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isRefused:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private likeCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private liked:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private paidMention:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/PaidMention;",
            ">;"
        }
    .end annotation
.end field

.field private preparedShowObj:Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;

.field private replyComment:Lcom/xueqiu/android/community/model/Comment;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private replyCommentId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_comment_id"
    .end annotation
.end field

.field private replyScreenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reply_screenName"
    .end annotation
.end field

.field private retweetStatusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rewardAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rewardUserCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rqid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rqtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private screenName:Ljava/lang/String;

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Lcom/xueqiu/android/community/model/Status;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusId"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timestamp:J

.field private truncated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private user:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/xueqiu/android/community/model/Comment$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Comment$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->preparedShowObj:Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;

    .line 177
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->preparedShowObj:Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->text:Ljava/lang/String;

    .line 189
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->c(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->createdAt:Ljava/util/Date;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->source:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->sourceUrl:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->favorited:Z

    .line 193
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->truncated:Z

    .line 194
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->user:Lcom/xueqiu/android/community/model/User;

    .line 195
    const-class v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->status:Lcom/xueqiu/android/community/model/Status;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->retweetStatusId:J

    .line 197
    const-class v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyComment:Lcom/xueqiu/android/community/model/Comment;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyScreenName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->userId:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->statusId:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyCommentId:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateCount:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateSnowcoin:I

    .line 204
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->liked:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Comment;->likeCount:I

    .line 206
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardUserCount:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardAmount:F

    .line 209
    const-class v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->paidMention:Ljava/util/List;

    .line 210
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isRefused:Z

    .line 211
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isAnswer:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqtype:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqid:J

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/Comment$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/Comment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 544
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/xueqiu/android/community/model/Comment;

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    check-cast p1, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDonateCount()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateCount:I

    return v0
.end method

.method public getDonateSnowcoin()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateSnowcoin:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    return-wide v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->likeCount:I

    return v0
.end method

.method public getPaidMention()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/PaidMention;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->paidMention:Ljava/util/List;

    return-object v0
.end method

.method public getPreparedShowObj()Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->preparedShowObj:Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;

    return-object v0
.end method

.method public getReplyComment()Lcom/xueqiu/android/community/model/Comment;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyComment:Lcom/xueqiu/android/community/model/Comment;

    return-object v0
.end method

.method public getReplyCommentId()J
    .locals 2

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyCommentId:J

    return-wide v0
.end method

.method public getReplyScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetStatusId()J
    .locals 2

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->retweetStatusId:J

    return-wide v0
.end method

.method public getRewardAmount()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardAmount:F

    return v0
.end method

.method public getRewardUserCount()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardUserCount:I

    return v0
.end method

.method public getRqid()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqid:J

    return-wide v0
.end method

.method public getRqtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqtype:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/xueqiu/android/community/model/Status;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->status:Lcom/xueqiu/android/community/model/Status;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->statusId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->timestamp:J

    return-wide v0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnswer()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isAnswer:Z

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->favorited:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->liked:Z

    return v0
.end method

.method public isRefused()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isRefused:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->truncated:Z

    return v0
.end method

.method public setAnswer(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->isAnswer:Z

    .line 133
    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    .line 503
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->createdAt:Ljava/util/Date;

    .line 304
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->description:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setDonateCount(I)V
    .locals 0

    .prologue
    .line 474
    iput p1, p0, Lcom/xueqiu/android/community/model/Comment;->donateCount:I

    .line 475
    return-void
.end method

.method public setDonateSnowcoin(I)V
    .locals 0

    .prologue
    .line 482
    iput p1, p0, Lcom/xueqiu/android/community/model/Comment;->donateSnowcoin:I

    .line 483
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->favorited:Z

    .line 346
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    .line 276
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .prologue
    .line 498
    iput p1, p0, Lcom/xueqiu/android/community/model/Comment;->likeCount:I

    .line 499
    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->liked:Z

    .line 491
    return-void
.end method

.method public setPaidMention(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/PaidMention;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->paidMention:Ljava/util/List;

    .line 540
    return-void
.end method

.method public setPreparedShowObj(Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->preparedShowObj:Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;

    .line 516
    return-void
.end method

.method public setRefused(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->isRefused:Z

    .line 141
    return-void
.end method

.method public setReplyComment(Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->replyComment:Lcom/xueqiu/android/community/model/Comment;

    .line 402
    return-void
.end method

.method public setReplyCommentId(J)V
    .locals 1

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->replyCommentId:J

    .line 455
    return-void
.end method

.method public setReplyScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->replyScreenName:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setRetweetStatusId(J)V
    .locals 1

    .prologue
    .line 415
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->retweetStatusId:J

    .line 416
    return-void
.end method

.method public setRewardAmount(F)V
    .locals 0

    .prologue
    .line 531
    iput p1, p0, Lcom/xueqiu/android/community/model/Comment;->rewardAmount:F

    .line 532
    return-void
.end method

.method public setRewardUserCount(I)V
    .locals 0

    .prologue
    .line 523
    iput p1, p0, Lcom/xueqiu/android/community/model/Comment;->rewardUserCount:I

    .line 524
    return-void
.end method

.method public setRqid(J)V
    .locals 1

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->rqid:J

    .line 125
    return-void
.end method

.method public setRqtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->rqtype:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->screenName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->source:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->sourceUrl:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setStatus(Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->status:Lcom/xueqiu/android/community/model/Status;

    .line 388
    return-void
.end method

.method public setStatusId(J)V
    .locals 1

    .prologue
    .line 450
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->statusId:J

    .line 451
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->text:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->timestamp:J

    .line 174
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment;->truncated:Z

    .line 360
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Comment;->user:Lcom/xueqiu/android/community/model/User;

    .line 374
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 446
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Comment;->userId:J

    .line 447
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->createdAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->sourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->favorited:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 224
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->truncated:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->user:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->status:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->retweetStatusId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyComment:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyScreenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->statusId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->replyCommentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->donateSnowcoin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->liked:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 236
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->blocked:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 238
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/xueqiu/android/community/model/Comment;->rewardAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->paidMention:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 241
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isRefused:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 242
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment;->isAnswer:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Comment;->rqid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    return-void
.end method

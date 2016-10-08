.class public Lcom/xueqiu/android/community/model/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_NORMAL:I = 0x0

.field public static final MARK_NORMAL_AD:I = 0x2

.field public static final MARK_PROMOTION_FANS_TOP:I = 0x3

.field public static final MARK_PROMOTION_USER_PROFILE:I = 0x1

.field public static final MARK_SYSTEM_RECOMMEND:I = 0x4


# instance fields
.field private andthumbPic:Ljava/lang/String;

.field private answers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private blocked:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bmiddlePic:Ljava/lang/String;

.field public card:Lcom/xueqiu/android/community/model/Card;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private commentId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private commentsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reply_count"
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private donateCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "donate_count"
    .end annotation
.end field

.field private donateSnowCoin:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "donate_snowcoin"
    .end annotation
.end field

.field private favorited:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private favount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fav_count"
    .end annotation
.end field

.field private formmatedText:Ljava/lang/String;

.field private hasReply:Z

.field private inReplyToScreenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private inReplyToStatusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private inReplyToUserId:J
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

.field private mPreparedShowObj:Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

.field private mRecommendCubeCard:Lcom/xueqiu/android/community/model/RecommendCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendStatusCard:Lcom/xueqiu/android/community/model/RecommendCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendStockCard:Lcom/xueqiu/android/community/model/RecommendCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendUserCard:Lcom/xueqiu/android/community/model/RecommendCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private mark:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private markDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mark_desc"
    .end annotation
.end field

.field private originalPic:Ljava/lang/String;

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

.field private paidMentionAmount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private paidMentionUserId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private picSize:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private picType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field promotionId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private promotionPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private promotionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private reTweetStatusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private retweetedStatus:Lcom/xueqiu/android/community/model/Status;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private retweetsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweet_count"
    .end annotation
.end field

.field private reward:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rewardAmount:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rewardCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rewardUserCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private screenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private thumbnailPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstImg"
    .end annotation
.end field

.field private timestamp:J

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicPicFirst:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_pic"
    .end annotation
.end field

.field private topicPicHd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicPicHead:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic_pic_headOrPad"
    .end annotation
.end field

.field private topicPicSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic_pic_thumbnail_small"
    .end annotation
.end field

.field private topicPicThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private truncated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private unread:Z

.field private unreadCount:I

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
    .line 481
    new-instance v0, Lcom/xueqiu/android/community/model/Status$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Status$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/model/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "normal"

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->type:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    .line 122
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicTitle:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicDesc:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicThumbnail:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPic:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHead:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicSmall:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->picType:I

    .line 145
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHd:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicFirst:Ljava/lang/String;

    .line 358
    iput-object v1, p0, Lcom/xueqiu/android/community/model/Status;->mPreparedShowObj:Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    .line 369
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "normal"

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->type:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    .line 122
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicTitle:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicDesc:Ljava/lang/String;

    .line 128
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPicThumbnail:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPic:Ljava/lang/String;

    .line 134
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHead:Ljava/lang/String;

    .line 138
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPicSmall:Ljava/lang/String;

    .line 142
    iput v2, p0, Lcom/xueqiu/android/community/model/Status;->picType:I

    .line 145
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHd:Ljava/lang/String;

    .line 148
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->topicPicFirst:Ljava/lang/String;

    .line 358
    iput-object v3, p0, Lcom/xueqiu/android/community/model/Status;->mPreparedShowObj:Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    .line 373
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->createdAt:Ljava/util/Date;

    .line 375
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->title:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->text:Ljava/lang/String;

    .line 377
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->source:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->target:Ljava/lang/String;

    .line 379
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->sourceUrl:Ljava/lang/String;

    .line 380
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->user:Lcom/xueqiu/android/community/model/User;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToStatusId:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToUserId:J

    .line 383
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToScreenName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->favorited:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->truncated:Z

    .line 386
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->thumbnailPic:Ljava/lang/String;

    .line 387
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    .line 388
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    .line 390
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->pic:Ljava/lang/String;

    .line 391
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionPic:Ljava/lang/String;

    .line 392
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionUrl:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->promotionId:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->reward:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->rewardAmount:J

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardCount:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardUserCount:I

    .line 398
    const-class v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->answers:Ljava/util/List;

    .line 399
    const-class v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMention:Ljava/util/List;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionUserId:J

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionAmount:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->commentsCount:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetsCount:I

    .line 404
    const-class v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetedStatus:Lcom/xueqiu/android/community/model/Status;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->hasReply:Z

    .line 407
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->formmatedText:Ljava/lang/String;

    .line 408
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->description:Ljava/lang/String;

    .line 409
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->screenName:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->reTweetStatusId:J

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/xueqiu/android/community/model/Status;->blocked:Z

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->userId:J

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->donateCount:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->donateSnowCoin:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/model/Status;->mark:I

    .line 416
    const-class v0, Lcom/xueqiu/android/community/model/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Card;

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    .line 417
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isAnswer:Z

    .line 418
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isRefused:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->commentId:J

    .line 420
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->markDesc:Ljava/lang/String;

    .line 421
    return-void

    :cond_0
    move v0, v2

    .line 384
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 385
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 394
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 405
    goto :goto_3

    :cond_4
    move v0, v2

    .line 406
    goto :goto_4

    :cond_5
    move v1, v2

    .line 411
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/community/model/Status$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/model/Status;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 853
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/xueqiu/android/community/model/Status;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 862
    :cond_1
    :goto_0
    return v0

    .line 856
    :cond_2
    if-eq p1, p0, :cond_1

    .line 858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    if-ne v2, v3, :cond_3

    .line 859
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 860
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 862
    goto :goto_0
.end method

.method public getAndthumbPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 719
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 720
    if-nez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    const-string v2, "!Andthumb."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    .line 727
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    return-object v0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/thumb."

    const-string v2, "/Andthumb."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getBmiddlePic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 692
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 693
    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    const-string v2, "!small."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    .line 700
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    return-object v0

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/thumb."

    const-string v2, "/small."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommentId()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->commentId:J

    return-wide v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->commentsCount:I

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDonateCount()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->donateCount:I

    return v0
.end method

.method public getDonateSnowCoin()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->donateSnowCoin:I

    return v0
.end method

.method public getFormmatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->formmatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .prologue
    .line 832
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToUserId:J

    return-wide v0
.end method

.method public getMark()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->mark:I

    return v0
.end method

.method public getMarkDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->markDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPic()Ljava/lang/String;
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    .line 3197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 707
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    .line 4197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 708
    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!thumb."

    const-string v2, "!custom."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    .line 715
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    return-object v0

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getThumbnailPic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/thumb."

    const-string v2, "/custom."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    goto :goto_0
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
    .line 1030
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMention:Ljava/util/List;

    return-object v0
.end method

.method public getPaidMentionAmount()I
    .locals 1

    .prologue
    .line 1046
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionAmount:I

    return v0
.end method

.method public getPaidMentionUserId()J
    .locals 2

    .prologue
    .line 1038
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionUserId:J

    return-wide v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPicType()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->picType:I

    return v0
.end method

.method public getPreparedShowObj()Lcom/xueqiu/android/community/model/Status$PreparedShowObj;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->mPreparedShowObj:Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    return-object v0
.end method

.method public getPromotionId()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionId:J

    return-wide v0
.end method

.method public getPromotionPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionPic:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReTweetStatusId()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->reTweetStatusId:J

    return-wide v0
.end method

.method public getRecommendCubeCard()Lcom/xueqiu/android/community/model/RecommendCard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendCubeCard:Lcom/xueqiu/android/community/model/RecommendCard;

    return-object v0
.end method

.method public getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendStatusCard:Lcom/xueqiu/android/community/model/RecommendCard;

    return-object v0
.end method

.method public getRecommendStockCard()Lcom/xueqiu/android/community/model/RecommendCard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendStockCard:Lcom/xueqiu/android/community/model/RecommendCard;

    return-object v0
.end method

.method public getRecommendUserCard()Lcom/xueqiu/android/community/model/RecommendCard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendUserCard:Lcom/xueqiu/android/community/model/RecommendCard;

    return-object v0
.end method

.method public getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetedStatus:Lcom/xueqiu/android/community/model/Status;

    return-object v0
.end method

.method public getRetweetsCount()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetsCount:I

    return v0
.end method

.method public getRewardAmount()J
    .locals 2

    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardAmount:J

    return-wide v0
.end method

.method public getRewardCount()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardCount:I

    return v0
.end method

.method public getRewardUserCount()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardUserCount:I

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    return-wide v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->thumbnailPic:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPic:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicFirst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPicFirst:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicHd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHd:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicHead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHead:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPicSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicPicThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->topicTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->unreadCount:I

    return v0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 918
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnswer()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isAnswer:Z

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->blocked:Z

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->favorited:Z

    return v0
.end method

.method public isHasReply()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->hasReply:Z

    return v0
.end method

.method public isRefused()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isRefused:Z

    return v0
.end method

.method public isReward()Z
    .locals 1

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->reward:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->truncated:Z

    return v0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    return v0
.end method

.method public proportion()D
    .locals 4

    .prologue
    const-wide v2, 0x3fe0cccccccccccdL    # 0.525

    .line 1066
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->picSize:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->picSize:Lcom/google/gson/JsonElement;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1068
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 1070
    const-string v2, "width"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 1071
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 1077
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 1073
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1077
    goto :goto_0
.end method

.method public setAnswer(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->isAnswer:Z

    .line 230
    return-void
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->answers:Ljava/util/List;

    .line 340
    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->blocked:Z

    .line 844
    return-void
.end method

.method public setCommentId(J)V
    .locals 1

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->commentId:J

    .line 222
    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .prologue
    .line 741
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->commentsCount:I

    .line 742
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->createdAt:Ljava/util/Date;

    .line 546
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->desc:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->description:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public setDonateCount(I)V
    .locals 0

    .prologue
    .line 946
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->donateCount:I

    .line 947
    return-void
.end method

.method public setDonateSnowCoin(I)V
    .locals 0

    .prologue
    .line 954
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->donateSnowCoin:I

    .line 955
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->favorited:Z

    .line 658
    return-void
.end method

.method public setFormmatedText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->formmatedText:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public setHasReply(Z)V
    .locals 0

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->hasReply:Z

    .line 798
    return-void
.end method

.method public setInReplyToScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToScreenName:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 1

    .prologue
    .line 629
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToStatusId:J

    .line 630
    return-void
.end method

.method public setInReplyToUserId(J)V
    .locals 1

    .prologue
    .line 839
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToUserId:J

    .line 840
    return-void
.end method

.method public setMark(I)V
    .locals 0

    .prologue
    .line 962
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->mark:I

    .line 963
    return-void
.end method

.method public setMarkDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->markDesc:Ljava/lang/String;

    .line 1059
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
    .line 1034
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->paidMention:Ljava/util/List;

    .line 1035
    return-void
.end method

.method public setPaidMentionAmount(I)V
    .locals 0

    .prologue
    .line 1050
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionAmount:I

    .line 1051
    return-void
.end method

.method public setPaidMentionUserId(J)V
    .locals 1

    .prologue
    .line 1042
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionUserId:J

    .line 1043
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->pic:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setPicType(I)V
    .locals 0

    .prologue
    .line 970
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->picType:I

    .line 971
    return-void
.end method

.method public setPreparedShowObj(Lcom/xueqiu/android/community/model/Status$PreparedShowObj;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->mPreparedShowObj:Lcom/xueqiu/android/community/model/Status$PreparedShowObj;

    .line 891
    return-void
.end method

.method public setReTweetStatusId(J)V
    .locals 1

    .prologue
    .line 517
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->reTweetStatusId:J

    .line 518
    return-void
.end method

.method public setRecommendCubeCard(Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendCubeCard:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 278
    return-void
.end method

.method public setRecommendStatusCard(Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendStatusCard:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 256
    return-void
.end method

.method public setRecommendStockCard(Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendStockCard:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 270
    return-void
.end method

.method public setRecommendUserCard(Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->mRecommendUserCard:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 246
    return-void
.end method

.method public setRefused(Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->isRefused:Z

    .line 238
    return-void
.end method

.method public setRetweetedStatus(Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->retweetedStatus:Lcom/xueqiu/android/community/model/Status;

    .line 770
    return-void
.end method

.method public setRetweetsCount(I)V
    .locals 0

    .prologue
    .line 755
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->retweetsCount:I

    .line 756
    return-void
.end method

.method public setReward(Z)V
    .locals 0

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->reward:Z

    .line 1003
    return-void
.end method

.method public setRewardAmount(J)V
    .locals 1

    .prologue
    .line 1018
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->rewardAmount:J

    .line 1019
    return-void
.end method

.method public setRewardCount(I)V
    .locals 0

    .prologue
    .line 1026
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->rewardCount:I

    .line 1027
    return-void
.end method

.method public setRewardUserCount(I)V
    .locals 0

    .prologue
    .line 1010
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->rewardUserCount:I

    .line 1011
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->screenName:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->source:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->sourceUrl:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public setStatusId(J)V
    .locals 1

    .prologue
    .line 531
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    .line 532
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->target:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->text:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setThumbnailPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->thumbnailPic:Ljava/lang/String;

    .line 686
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->timestamp:J

    .line 308
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->title:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setTopicDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicDesc:Ljava/lang/String;

    .line 907
    return-void
.end method

.method public setTopicPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPic:Ljava/lang/String;

    .line 995
    return-void
.end method

.method public setTopicPicFirst(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicFirst:Ljava/lang/String;

    .line 987
    return-void
.end method

.method public setTopicPicHd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHd:Ljava/lang/String;

    .line 979
    return-void
.end method

.method public setTopicPicHead(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicHead:Ljava/lang/String;

    .line 931
    return-void
.end method

.method public setTopicPicSmall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicSmall:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public setTopicPicThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicPicThumbnail:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public setTopicTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->topicTitle:Ljava/lang/String;

    .line 899
    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->truncated:Z

    .line 672
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->type:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setUnread(Z)V
    .locals 0

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    .line 784
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    .prologue
    .line 297
    iput p1, p0, Lcom/xueqiu/android/community/model/Status;->unreadCount:I

    .line 298
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/xueqiu/android/community/model/Status;->user:Lcom/xueqiu/android/community/model/User;

    .line 616
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 922
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/Status;->userId:J

    .line 923
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 426
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->statusId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->source:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->target:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->sourceUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->user:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 434
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToStatusId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 435
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToUserId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->inReplyToScreenName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 437
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->favorited:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->truncated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->thumbnailPic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->bmiddlePic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->originalPic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->andthumbPic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->pic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionPic:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->promotionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 446
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->promotionId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->reward:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->rewardAmount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->rewardUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->answers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMention:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 453
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionUserId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->paidMentionAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->commentsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->retweetedStatus:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 458
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->unread:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->hasReply:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->formmatedText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->description:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->screenName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 463
    iget-wide v4, p0, Lcom/xueqiu/android/community/model/Status;->reTweetStatusId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 464
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->blocked:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->donateCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->donateSnowCoin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/xueqiu/android/community/model/Status;->mark:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 470
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isAnswer:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 471
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Status;->isRefused:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 472
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/Status;->commentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 473
    iget-object v0, p0, Lcom/xueqiu/android/community/model/Status;->markDesc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 474
    return-void

    :cond_0
    move v0, v2

    .line 437
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 438
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 447
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 458
    goto :goto_3

    :cond_4
    move v0, v2

    .line 459
    goto :goto_4

    :cond_5
    move v1, v2

    .line 464
    goto :goto_5
.end method

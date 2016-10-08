.class public Lcom/xueqiu/android/community/model/TopicInfo;
.super Ljava/lang/Object;
.source "TopicInfo.java"


# static fields
.field public static final TAG_CN:Ljava/lang/String; = "cn"

.field public static final TAG_HK:Ljava/lang/String; = "hk"

.field public static final TAG_US:Ljava/lang/String; = "us"


# instance fields
.field private topicDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private topicId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private topicPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic"
    .end annotation
.end field

.field private topicPicHeader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic_header"
    .end annotation
.end field

.field private topicPicRatio:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratio"
    .end annotation
.end field

.field private topicTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private topicType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicTitle:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicDescription:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPic:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPicHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTopicDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicId:J

    return-wide v0
.end method

.method public getTopicPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPic:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPicHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicRatio()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPicRatio:D

    return-wide v0
.end method

.method public getTopicTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicType:I

    return v0
.end method

.method public setTopicDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicDescription:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTopicId(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicId:J

    .line 48
    return-void
.end method

.method public setTopicPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPic:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTopicPicHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPicHeader:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTopicPicRatio(D)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicPicRatio:D

    .line 97
    return-void
.end method

.method public setTopicTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicTitle:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTopicType(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/xueqiu/android/community/model/TopicInfo;->topicType:I

    .line 81
    return-void
.end method

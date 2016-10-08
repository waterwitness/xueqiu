.class public Lcom/xueqiu/android/community/model/PublicTimelineStatus;
.super Ljava/lang/Object;
.source "PublicTimelineStatus.java"


# instance fields
.field private column:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private description:Ljava/lang/String;
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

.field private promotion:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private replyCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private retweetCount:I
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

.field private topicPicHd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private topicTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private user:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPicType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->picType:I

    return v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->replyCount:I

    return v0
.end method

.method public getRetweetCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->retweetCount:I

    return v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->statusId:J

    return-wide v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicPic:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicPicHd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicPicHd:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public isPromotion()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->promotion:Z

    return v0
.end method

.method public proportion()D
    .locals 4

    .prologue
    const-wide v2, 0x3fe0cccccccccccdL    # 0.525

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->picSize:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->picSize:Lcom/google/gson/JsonElement;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 173
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 175
    const-string v2, "width"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 176
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 178
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 182
    goto :goto_0
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->column:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->description:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPicType(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->picType:I

    .line 148
    return-void
.end method

.method public setPromotion(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->promotion:Z

    .line 164
    return-void
.end method

.method public setReplyCount(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->replyCount:I

    .line 92
    return-void
.end method

.method public setRetweetCount(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->retweetCount:I

    .line 100
    return-void
.end method

.method public setStatusId(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->statusId:J

    .line 52
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->target:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->title:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTopicDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicDesc:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setTopicPic(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicPic:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTopicPicHd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicPicHd:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTopicSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicSymbol:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTopicTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->topicTitle:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->user:Lcom/xueqiu/android/community/model/User;

    .line 156
    return-void
.end method

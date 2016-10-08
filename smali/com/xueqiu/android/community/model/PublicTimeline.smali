.class public Lcom/xueqiu/android/community/model/PublicTimeline;
.super Ljava/lang/Object;
.source "PublicTimeline.java"


# static fields
.field public static final CATEGORY_ASK_ANSWER:I = 0xd

.field public static final CATEGORY_EVENT:I = 0x8

.field public static final CATEGORY_HOT:I = 0xc

.field public static final CATEGORY_INTERVIEW:I = 0x5

.field public static final CATEGORY_LIVENEWS:I = 0x6

.field public static final CATEGORY_LOTTERY:I = 0xb

.field public static final CATEGORY_NOTICE:I = 0x3

.field public static final CATEGORY_PLAY_CUBE:I = 0x2

.field public static final CATEGORY_PROMOTION:I = 0xa

.field public static final CATEGORY_RECOMMEND:I = 0x9

.field public static final CATEGORY_RESEARCH:I = 0x4

.field public static final CATEGORY_SPECIAL:I = 0x7

.field public static final CATEGORY_TALENT:I = 0x1

.field public static final CATEGORY_TODAY:I


# instance fields
.field private category:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private headerIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private headerText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timelineId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 98
    check-cast p1, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 100
    iget-wide v2, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    iget-wide v4, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 101
    iget v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->category:I

    iget v2, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->category:I

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 104
    iget-object v1, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 110
    iget-object v1, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 116
    iget-object v1, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 121
    iget-object v1, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    iget-object v1, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    iget-object v2, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 112
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    iget-object v2, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 118
    :cond_8
    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    iget-object v2, p1, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->category:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTimelineId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-wide v2, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    iget-wide v4, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->category:I

    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 135
    return v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    :cond_2
    move v0, v1

    .line 132
    goto :goto_1

    :cond_3
    move v0, v1

    .line 133
    goto :goto_2
.end method

.method public setCategory(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->category:I

    .line 59
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->data:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setHeaderIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerIcon:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->headerText:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->target:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTimelineId(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/PublicTimeline;->timelineId:J

    .line 51
    return-void
.end method

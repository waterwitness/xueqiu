.class public Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;
.super Ljava/util/ArrayList;
.source "HomeTimelineStatusGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private mRecommendCubeCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecommendStatusCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecommendStockCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecommendUserCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field private nextId:J

.field private nextMaxId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public getNextId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->nextId:J

    return-wide v0
.end method

.method public getNextMaxId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->nextMaxId:J

    return-wide v0
.end method

.method public getRecommendCubeCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendCubeCardList:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendStatusCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendStatusCardList:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendStockCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendStockCardList:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendUserCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendUserCardList:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setNextId(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->nextId:J

    .line 76
    return-void
.end method

.method public setNextMaxId(J)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->nextMaxId:J

    .line 84
    return-void
.end method

.method public setRecommendCubeCardList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendCubeCardList:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setRecommendStatusCardList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendStatusCardList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setRecommendStockCardList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendStockCardList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setRecommendUserCardList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->mRecommendUserCardList:Ljava/util/List;

    .line 48
    return-void
.end method

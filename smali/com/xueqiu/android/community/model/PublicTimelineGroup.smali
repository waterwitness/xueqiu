.class public Lcom/xueqiu/android/community/model/PublicTimelineGroup;
.super Ljava/util/ArrayList;
.source "PublicTimelineGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/PublicTimeline;",
        ">;"
    }
.end annotation


# instance fields
.field private addition:Lcom/google/gson/JsonArray;

.field private nextId:J

.field private nextMaxId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getAddition()Lcom/google/gson/JsonArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->addition:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method public getNextId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->nextId:J

    return-wide v0
.end method

.method public getNextMaxId()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->nextMaxId:J

    return-wide v0
.end method

.method public hasMore()Z
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->nextMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAddition(Lcom/google/gson/JsonArray;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->addition:Lcom/google/gson/JsonArray;

    .line 53
    return-void
.end method

.method public setNextId(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->nextId:J

    .line 37
    return-void
.end method

.method public setNextMaxId(J)V
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->nextMaxId:J

    .line 45
    return-void
.end method

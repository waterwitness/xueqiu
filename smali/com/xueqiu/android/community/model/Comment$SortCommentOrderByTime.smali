.class public Lcom/xueqiu/android/community/model/Comment$SortCommentOrderByTime;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsreverse:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment$SortCommentOrderByTime;->mIsreverse:Z

    .line 432
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/Comment$SortCommentOrderByTime;->mIsreverse:Z

    .line 433
    return-void
.end method


# virtual methods
.method public compare(Lcom/xueqiu/android/community/model/Comment;Lcom/xueqiu/android/community/model/Comment;)I
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/Comment$SortCommentOrderByTime;->mIsreverse:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 440
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 427
    check-cast p1, Lcom/xueqiu/android/community/model/Comment;

    check-cast p2, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/community/model/Comment$SortCommentOrderByTime;->compare(Lcom/xueqiu/android/community/model/Comment;Lcom/xueqiu/android/community/model/Comment;)I

    move-result v0

    return v0
.end method

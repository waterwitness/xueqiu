.class public Lcom/xueqiu/android/common/model/PagedGroup;
.super Ljava/util/ArrayList;
.source "PagedGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList;"
    }
.end annotation


# instance fields
.field private currentPage:I

.field public mContent:Ljava/lang/String;

.field public mID:J

.field public mType:Ljava/lang/String;

.field private maxPage:I

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedGroup;->currentPage:I

    return v0
.end method

.method public getMaxPage()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedGroup;->maxPage:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedGroup;->totalCount:I

    return v0
.end method

.method public hasMore()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedGroup;->currentPage:I

    iget v1, p0, Lcom/xueqiu/android/common/model/PagedGroup;->maxPage:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedGroup;->currentPage:I

    .line 47
    return-void
.end method

.method public setMaxPage(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedGroup;->maxPage:I

    .line 39
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedGroup;->totalCount:I

    .line 55
    return-void
.end method

.class public Lcom/xueqiu/android/common/model/PagedList;
.super Ljava/lang/Object;
.source "PagedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "size"
        }
        value = "count"
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "items",
            "statuses"
        }
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private maxPage:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "total_pages"
        }
        value = "maxPage"
    .end annotation
.end field

.field private page:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "current_page"
        }
        value = "page"
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "total_items",
            "total"
        }
        value = "totalCount"
    .end annotation
.end field

.field private updateAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedList;->count:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/model/PagedList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxPage()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedList;->maxPage:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedList;->page:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/xueqiu/android/common/model/PagedList;->totalCount:I

    return v0
.end method

.method public getUpdateAt()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/PagedList;->updateAt:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedList;->count:I

    .line 60
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/common/model/PagedList;->list:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public setMaxPage(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedList;->maxPage:I

    .line 52
    return-void
.end method

.method public setPage(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedList;->page:I

    .line 76
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/xueqiu/android/common/model/PagedList;->totalCount:I

    .line 68
    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/PagedList;->updateAt:J

    .line 84
    return-void
.end method

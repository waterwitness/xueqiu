.class public Lcom/xueqiu/android/common/model/parser/PagedIdList;
.super Ljava/lang/Object;
.source "PagedIdList.java"


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
.field private list:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "items"
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

.field private nextId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "nextId"
        }
        value = "next_id"
    .end annotation
.end field

.field private nextMaxId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "nextMaxId"
        }
        value = "next_max_id"
    .end annotation
.end field

.field private size:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "count"
        }
        value = "size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->nextId:I

    return v0
.end method

.method public getNextMaxId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->nextMaxId:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->size:I

    return v0
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
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->list:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public setNextId(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->nextId:I

    .line 54
    return-void
.end method

.method public setNextMaxId(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->nextMaxId:I

    .line 62
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/xueqiu/android/common/model/parser/PagedIdList;->size:I

    .line 46
    return-void
.end method

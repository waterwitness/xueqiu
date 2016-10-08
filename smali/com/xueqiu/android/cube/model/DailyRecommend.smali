.class public Lcom/xueqiu/android/cube/model/DailyRecommend;
.super Ljava/lang/Object;
.source "DailyRecommend.java"


# instance fields
.field private cubes:Lcom/xueqiu/android/common/model/PagedList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private editorials:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;"
        }
    .end annotation
.end field

.field private industries:Lcom/xueqiu/android/common/model/PagedList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCubes()Lcom/xueqiu/android/common/model/PagedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->cubes:Lcom/xueqiu/android/common/model/PagedList;

    return-object v0
.end method

.method public getEditorials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->editorials:Ljava/util/List;

    return-object v0
.end method

.method public getIndustries()Lcom/xueqiu/android/common/model/PagedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->industries:Lcom/xueqiu/android/common/model/PagedList;

    return-object v0
.end method

.method public setCubes(Lcom/xueqiu/android/common/model/PagedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->cubes:Lcom/xueqiu/android/common/model/PagedList;

    .line 44
    return-void
.end method

.method public setEditorials(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->editorials:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setIndustries(Lcom/xueqiu/android/common/model/PagedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/DailyRecommend;->industries:Lcom/xueqiu/android/common/model/PagedList;

    .line 52
    return-void
.end method

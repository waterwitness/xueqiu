.class final Lcom/xueqiu/android/community/d/d$2;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicFeaturedListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/TopicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/d/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/d;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/d/d$2;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 72
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 68
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1076
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2018
    iput v1, v0, Lcom/xueqiu/android/community/d/d;->b:I

    .line 1077
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v1

    .line 3018
    iput v1, v0, Lcom/xueqiu/android/community/d/d;->c:I

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    .line 4018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 1078
    iget-boolean v1, p0, Lcom/xueqiu/android/community/d/d$2;->a:Z

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/community/b/l;->a(ZLjava/util/ArrayList;)V

    .line 1079
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    .line 5018
    iget v0, v0, Lcom/xueqiu/android/community/d/d;->b:I

    .line 1079
    iget-object v1, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    .line 6018
    iget v1, v1, Lcom/xueqiu/android/community/d/d;->c:I

    .line 1079
    if-le v0, v1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$2;->b:Lcom/xueqiu/android/community/d/d;

    .line 7018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 1080
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/l;->j()V

    .line 68
    :cond_0
    return-void
.end method

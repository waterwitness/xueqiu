.class final Lcom/xueqiu/android/community/d/c$6;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 4

    .prologue
    .line 213
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 1050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 214
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/b/i;->c(Z)V

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 2050
    iget v0, v0, Lcom/xueqiu/android/community/d/c;->c:I

    .line 215
    int-to-double v0, v0

    iget-object v2, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 3050
    iget v2, v2, Lcom/xueqiu/android/community/d/c;->h:I

    .line 215
    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 4050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 216
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/i;->l()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 5050
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/community/d/c;->d:Z

    .line 219
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 210
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 5223
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 6050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 5223
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/b/i;->a(Ljava/util/ArrayList;)V

    .line 5224
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v1

    .line 7050
    iput v1, v0, Lcom/xueqiu/android/community/d/c;->h:I

    .line 5225
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 8050
    iget v0, v0, Lcom/xueqiu/android/community/d/c;->c:I

    .line 5225
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5226
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 9050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 5226
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/i;->l()V

    .line 5228
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 10050
    iget v1, v0, Lcom/xueqiu/android/community/d/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/community/d/c;->c:I

    .line 5229
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$6;->a:Lcom/xueqiu/android/community/d/c;

    .line 11050
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/community/d/c;->d:Z

    .line 210
    return-void
.end method

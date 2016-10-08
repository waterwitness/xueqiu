.class final Lcom/xueqiu/android/community/d/a$3;
.super Lcom/xueqiu/android/base/b/p;
.source "PaidMentionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/parser/PagedIdList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/community/d/a$3;->b:Lcom/xueqiu/android/community/d/a;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/d/a$3;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/community/d/a$3;->b:Lcom/xueqiu/android/community/d/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/community/d/a;->d:Z

    .line 104
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    check-cast p1, Lcom/xueqiu/android/common/model/parser/PagedIdList;

    .line 1108
    iget-object v1, p0, Lcom/xueqiu/android/community/d/a$3;->b:Lcom/xueqiu/android/community/d/a;

    iget-boolean v0, p0, Lcom/xueqiu/android/community/d/a$3;->a:Z

    .line 2130
    iput-boolean v4, v1, Lcom/xueqiu/android/community/d/a;->d:Z

    .line 2131
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2132
    iget-object v0, v1, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    invoke-interface {v0, v5}, Lcom/xueqiu/android/community/b/c;->a(Z)V

    .line 2133
    :goto_0
    return-void

    .line 2135
    :cond_0
    if-eqz v0, :cond_1

    .line 2136
    iget-object v0, v1, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xueqiu/android/community/b/c;->c(Ljava/util/List;)V

    .line 2137
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextId()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/xueqiu/android/community/d/a;->c:J

    .line 2145
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextId()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2146
    iget-object v0, v1, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    invoke-interface {v0, v4}, Lcom/xueqiu/android/community/b/c;->b(Z)V

    .line 2150
    :goto_2
    sget-object v0, Lcom/xueqiu/android/message/client/c;->h:Lrx/i/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2140
    :cond_1
    iget-object v0, v1, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xueqiu/android/community/b/c;->a(Ljava/util/List;)V

    .line 2141
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextId()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/xueqiu/android/community/d/a;->c:J

    .line 2142
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xueqiu/android/community/d/a;->b:J

    goto :goto_1

    .line 2148
    :cond_2
    iget-object v0, v1, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    invoke-interface {v0, v5}, Lcom/xueqiu/android/community/b/c;->b(Z)V

    goto :goto_2
.end method

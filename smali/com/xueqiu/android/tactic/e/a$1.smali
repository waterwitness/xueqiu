.class final Lcom/xueqiu/android/tactic/e/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "MyPushListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/tactic/e/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/parser/PagedIdList",
        "<",
        "Lcom/xueqiu/android/tactic/d/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/tactic/e/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/e/a;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    iput-boolean p3, p0, Lcom/xueqiu/android/tactic/e/a$1;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 1015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 47
    invoke-interface {v0}, Lcom/xueqiu/android/tactic/b/c;->j()V

    .line 48
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    check-cast p1, Lcom/xueqiu/android/common/model/parser/PagedIdList;

    .line 1052
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 2015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1053
    invoke-interface {v0}, Lcom/xueqiu/android/tactic/b/c;->k()V

    .line 1071
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->a:Z

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 3015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1057
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/tactic/b/c;->a(Ljava/util/ArrayList;)V

    .line 1058
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextMaxId()I

    move-result v1

    int-to-long v2, v1

    .line 4015
    iput-wide v2, v0, Lcom/xueqiu/android/tactic/e/a;->a:J

    .line 1070
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextMaxId()I

    move-result v0

    if-gez v0, :cond_3

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 10015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1071
    invoke-interface {v0, v4}, Lcom/xueqiu/android/tactic/b/c;->b(Z)V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextId()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 5015
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/e/a;->b:J

    .line 1061
    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 6015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1062
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/xueqiu/android/tactic/b/c;->refresh(Ljava/util/ArrayList;Z)V

    .line 1063
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getNextMaxId()I

    move-result v1

    int-to-long v2, v1

    .line 7015
    iput-wide v2, v0, Lcom/xueqiu/android/tactic/e/a;->a:J

    .line 1067
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/h;

    .line 8060
    iget-wide v2, v0, Lcom/xueqiu/android/tactic/d/h;->id:J

    .line 9015
    iput-wide v2, v1, Lcom/xueqiu/android/tactic/e/a;->b:J

    goto :goto_1

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 8015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1065
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/parser/PagedIdList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/xueqiu/android/tactic/b/c;->refresh(Ljava/util/ArrayList;Z)V

    goto :goto_2

    .line 1073
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a$1;->b:Lcom/xueqiu/android/tactic/e/a;

    .line 11015
    iget-object v0, v0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 1073
    invoke-interface {v0, v5}, Lcom/xueqiu/android/tactic/b/c;->b(Z)V

    goto :goto_0
.end method

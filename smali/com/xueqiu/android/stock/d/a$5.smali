.class final Lcom/xueqiu/android/stock/d/a$5;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/d/a;
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
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/d/a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 219
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 221
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 216
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1225
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1226
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1228
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/TopicInfo;

    .line 1229
    new-instance v3, Lcom/xueqiu/android/tactic/d/c;

    invoke-direct {v3}, Lcom/xueqiu/android/tactic/d/c;-><init>()V

    .line 1230
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v4

    .line 2034
    iput-object v4, v3, Lcom/xueqiu/android/tactic/d/c;->b:Ljava/lang/String;

    .line 1231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/special/item/"

    invoke-static {v5}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2050
    iput-object v4, v3, Lcom/xueqiu/android/tactic/d/c;->d:Ljava/lang/String;

    .line 1232
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPic()Ljava/lang/String;

    move-result-object v0

    .line 3042
    iput-object v0, v3, Lcom/xueqiu/android/tactic/d/c;->c:Ljava/lang/String;

    .line 4026
    const/4 v0, 0x1

    iput v0, v3, Lcom/xueqiu/android/tactic/d/c;->a:I

    .line 1234
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    .line 4057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    .line 1234
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    .line 5057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1236
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    .line 6057
    iget-object v1, v1, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    .line 1236
    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->b(Ljava/util/List;)V

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$5;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stock/d/a;->a(Lcom/xueqiu/android/stock/d/a;)V

    .line 216
    return-void
.end method

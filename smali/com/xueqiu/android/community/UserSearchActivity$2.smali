.class final Lcom/xueqiu/android/community/UserSearchActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "UserSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;Z)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    iput-boolean p2, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->a:Z

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 511
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 498
    check-cast p1, Ljava/util/ArrayList;

    .line 1515
    if-eqz p1, :cond_3

    .line 1516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1518
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1519
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->k(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1525
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const v4, 0x7f0700c3

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1531
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 1534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 1535
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v5}, Lcom/xueqiu/android/community/UserSearchActivity;->d(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z

    .line 1536
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    :goto_1
    return-void

    .line 1538
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/UserSearchActivity;->d(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z

    .line 1540
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->l(Lcom/xueqiu/android/community/UserSearchActivity;)I

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1545
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1547
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$2;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    goto :goto_1
.end method

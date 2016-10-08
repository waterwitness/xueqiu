.class final Lcom/xueqiu/android/community/UserSearchActivity$3;
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
.field final synthetic a:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 583
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 585
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 589
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 580
    check-cast p1, Ljava/util/ArrayList;

    .line 1593
    if-eqz p1, :cond_2

    .line 1594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1596
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1597
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1600
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1601
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1606
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 1607
    :cond_1
    :goto_1
    return-void

    .line 1609
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$3;->a:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

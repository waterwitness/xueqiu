.class final Lcom/xueqiu/android/community/UserSearchActivity$11;
.super Lcom/xueqiu/android/base/b/p;
.source "UserSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserSearchActivity;->c(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/UserSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;I)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    iput p2, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->a:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 440
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 442
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->a:I

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->j(Lcom/xueqiu/android/community/UserSearchActivity;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 437
    check-cast p1, Ljava/util/ArrayList;

    .line 1451
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1454
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1455
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1459
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1460
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const v4, 0x7f070209

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1467
    const-string v1, "type_key"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 1472
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->a:I

    if-nez v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->j(Lcom/xueqiu/android/community/UserSearchActivity;)V

    :cond_2
    :goto_1
    return-void

    .line 1474
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$11;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    goto :goto_1
.end method

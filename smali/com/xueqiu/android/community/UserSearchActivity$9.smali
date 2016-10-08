.class final Lcom/xueqiu/android/community/UserSearchActivity$9;
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
.method constructor <init>(Lcom/xueqiu/android/community/UserSearchActivity;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->a:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 313
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 304
    check-cast p1, Ljava/util/ArrayList;

    .line 1317
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1318
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    .line 1321
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1323
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1324
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 1335
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 1336
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->a(Lcom/xueqiu/android/community/UserSearchActivity;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1330
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v5}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    goto :goto_1

    .line 1339
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0, v5}, Lcom/xueqiu/android/community/UserSearchActivity;->c(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity$9;->b:Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserSearchActivity;->g(Lcom/xueqiu/android/community/UserSearchActivity;)I

    goto :goto_2
.end method

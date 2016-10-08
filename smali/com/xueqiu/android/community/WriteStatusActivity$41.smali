.class final Lcom/xueqiu/android/community/WriteStatusActivity$41;
.super Lcom/xueqiu/android/base/b/p;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
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

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V
    .locals 0

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-boolean p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2187
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->a:Z

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2192
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 2193
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

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

    .line 2180
    check-cast p1, Ljava/util/ArrayList;

    .line 3197
    if-eqz p1, :cond_3

    .line 3198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3199
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 3200
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3201
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3205
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->X(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 3206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3207
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3208
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v4, 0x7f0700c3

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3209
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3212
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3213
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 3216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 3217
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->f(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 3218
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3224
    :goto_1
    return-void

    .line 3220
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3221
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/WriteStatusActivity;->f(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 3222
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->Y(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    goto :goto_1

    .line 3226
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3227
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3229
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$41;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    goto :goto_1
.end method

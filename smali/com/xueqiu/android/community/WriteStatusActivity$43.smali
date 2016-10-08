.class final Lcom/xueqiu/android/community/WriteStatusActivity$43;
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
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 2291
    const-string v0, "WriteStatusActivity"

    const-string v1, "onErrorResponse"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iget-boolean v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->a:Z

    if-eqz v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2297
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->a:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 2298
    return-void

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

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

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2288
    check-cast p1, Ljava/util/ArrayList;

    .line 3303
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3304
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 3305
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->g(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 3307
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3308
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 3309
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3310
    invoke-static {v3, v0, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3312
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/List;Ljava/lang/Exception;Z)V

    .line 3321
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 3322
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->h(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 3323
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 3315
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->C(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 3316
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/WriteStatusActivity;->g(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    goto :goto_1

    .line 3325
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->G(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3326
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/WriteStatusActivity;->h(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 3327
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$43;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->Z(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    goto :goto_2
.end method

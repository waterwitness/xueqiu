.class final Lcom/xueqiu/android/common/search/SearchActivity$11;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 383
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;I)I

    .line 384
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/common/search/SearchActivity;->c(Lcom/xueqiu/android/common/search/SearchActivity;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 395
    if-nez p1, :cond_1

    .line 396
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 397
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/SearchActivity;->b(Lcom/xueqiu/android/common/search/SearchActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;I)I

    move-object v0, p1

    .line 403
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->getTotalCount()I

    move-result v1

    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    const v2, 0x7f0e0369

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    const-string v2, "\u627e\u5230%s\u4e2a\u7fa4\u7ec4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_0
    return-void

    .line 399
    :cond_1
    if-nez p3, :cond_2

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/SearchActivity;->b(Lcom/xueqiu/android/common/search/SearchActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->a(Lcom/xueqiu/android/common/search/SearchActivity;I)I

    .line 390
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity$11;->a:Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/SearchActivity;->b(Lcom/xueqiu/android/common/search/SearchActivity;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/common/search/SearchActivity;->c(Lcom/xueqiu/android/common/search/SearchActivity;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

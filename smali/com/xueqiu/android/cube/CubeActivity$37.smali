.class final Lcom/xueqiu/android/cube/CubeActivity$37;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/StatusFacetCount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$37;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1691
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1692
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x2

    .line 1688
    check-cast p1, Ljava/util/List;

    .line 2696
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$37;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 2697
    :cond_0
    return-void

    .line 2699
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$37;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->g(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2700
    new-array v1, v9, [Ljava/lang/Integer;

    const v2, 0x7f070254

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f07002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move v3, v4

    .line 2701
    :goto_0
    if-ge v3, v9, :cond_0

    .line 2702
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v6, "%s(%d)"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xueqiu/android/cube/CubeActivity$37;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/StatusFacetCount;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/StatusFacetCount;->getStatusCount()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2701
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0
.end method

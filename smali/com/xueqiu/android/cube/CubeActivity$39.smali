.class final Lcom/xueqiu/android/cube/CubeActivity$39;
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
        "Lcom/xueqiu/android/community/model/UserProp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Rebalancing;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1770
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1771
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const v3, 0x7f0d00ba

    const v2, 0x7f0d0089

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1767
    check-cast p1, Ljava/util/List;

    .line 2775
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->B(Lcom/xueqiu/android/cube/CubeActivity;)Lrx/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->B(Lcom/xueqiu/android/cube/CubeActivity;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->B(Lcom/xueqiu/android/cube/CubeActivity;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->b()V

    .line 2778
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-ne v0, v1, :cond_3

    .line 2779
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2780
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->D(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2786
    :goto_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2787
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2788
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserProp;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserProp;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2789
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserProp;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserProp;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2790
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserProp;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserProp;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2792
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2793
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2794
    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2796
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getUpdatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 2798
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 2799
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2800
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 2801
    sget-object v0, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2802
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$39$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$39$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity$39;)V

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Lrx/j;)Lrx/j;

    .line 2827
    :cond_2
    :goto_1
    return-void

    .line 2782
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2783
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->D(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 2811
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v7}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    goto :goto_1

    .line 2815
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 2816
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2817
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2818
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    goto :goto_1

    .line 2820
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v7}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    goto :goto_1

    .line 2824
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 2825
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2826
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->a:Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2827
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    goto/16 :goto_1

    .line 2829
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$39;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v7}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    goto/16 :goto_1
.end method

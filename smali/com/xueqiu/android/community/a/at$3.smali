.class final Lcom/xueqiu/android/community/a/at$3;
.super Ljava/lang/Object;
.source "UserGuideRecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/at;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/model/RecommendCube;

.field final synthetic c:Lcom/xueqiu/android/community/a/at;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/cube/model/RecommendCube;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    iput p2, p0, Lcom/xueqiu/android/community/a/at$3;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/community/a/at$3;->b:Lcom/xueqiu/android/cube/model/RecommendCube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/community/a/at$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/community/a/at$3;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/av;

    iget-boolean v1, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    invoke-static {v1}, Lcom/xueqiu/android/community/a/at;->a(Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->b(Lcom/xueqiu/android/community/a/at;)Lcom/xueqiu/android/community/a/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->b(Lcom/xueqiu/android/community/a/at;)Lcom/xueqiu/android/community/a/aw;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->b:Lcom/xueqiu/android/cube/model/RecommendCube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/xueqiu/android/community/a/at$3;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-boolean v0, v0, Lcom/xueqiu/android/community/a/av;->c:Z

    invoke-interface {v1, v2, v0}, Lcom/xueqiu/android/community/a/aw;->b(Ljava/lang/String;Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$3;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->c(Lcom/xueqiu/android/community/a/at;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 420
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xa28

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 424
    const-string v1, "cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/at$3;->b:Lcom/xueqiu/android/cube/model/RecommendCube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 425
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 426
    return-void
.end method

.class final Lcom/xueqiu/android/community/a/at$1;
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

.field final synthetic b:Lcom/xueqiu/android/community/model/User;

.field final synthetic c:Lcom/xueqiu/android/community/a/at;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    iput p2, p0, Lcom/xueqiu/android/community/a/at$1;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/community/a/at$1;->b:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/community/a/at$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/community/a/at$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/av;

    iget-boolean v1, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    invoke-static {v1}, Lcom/xueqiu/android/community/a/at;->a(Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->b(Lcom/xueqiu/android/community/a/at;)Lcom/xueqiu/android/community/a/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->b(Lcom/xueqiu/android/community/a/at;)Lcom/xueqiu/android/community/a/aw;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/xueqiu/android/community/a/at$1;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-boolean v0, v0, Lcom/xueqiu/android/community/a/av;->c:Z

    invoke-interface {v1, v2, v3, v0}, Lcom/xueqiu/android/community/a/aw;->a(JZ)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->c:Lcom/xueqiu/android/community/a/at;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/at;->c(Lcom/xueqiu/android/community/a/at;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v0, 0xa28

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at$1;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

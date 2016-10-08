.class final Lcom/xueqiu/android/community/TopicDetailActivity$8;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/RecommendStock;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->c:Lcom/xueqiu/android/community/TopicDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iput-object p3, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->c:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->g(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v3, p0, Lcom/xueqiu/android/community/TopicDetailActivity$8;->b:Landroid/view/View;

    .line 1261
    new-instance v4, Lcom/xueqiu/android/community/d/c$8;

    iget-object v1, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    check-cast v1, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/xueqiu/android/community/d/c$8;-><init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V

    .line 1280
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, v0, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1285
    :goto_0
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x7d1

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1286
    const-string v3, "special_id"

    iget-wide v4, v0, Lcom/xueqiu/android/community/d/c;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v0, "symbol"

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 1288
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 348
    return-void

    .line 1283
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v5, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

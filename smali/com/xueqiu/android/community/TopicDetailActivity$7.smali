.class final Lcom/xueqiu/android/community/TopicDetailActivity$7;
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

.field final synthetic b:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/RecommendStock;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 328
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x7d1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 329
    const-string v1, "special_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/TopicDetailActivity;->f(Lcom/xueqiu/android/community/TopicDetailActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$7;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 332
    return-void
.end method

.class final Lcom/xueqiu/android/community/a/y$11;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/RecommendStock;

.field final synthetic b:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/RecommendStock;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$11;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$11;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$11;->b:Lcom/xueqiu/android/community/a/y;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$11;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    .line 1391
    new-instance v2, Lcom/xueqiu/android/community/a/y$4;

    invoke-direct {v2, v0, v1}, Lcom/xueqiu/android/community/a/y$4;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/RecommendStock;)V

    .line 1411
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    iget-object v0, v0, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 201
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 202
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$11;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 204
    return-void

    .line 1414
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/community/a/ak$26;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/RecommendStock;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$26;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$26;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$26;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$26;->c:Lcom/xueqiu/android/community/a/ak;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$26;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$26;->b:Landroid/view/View;

    .line 2787
    new-instance v4, Lcom/xueqiu/android/community/a/ak$27;

    iget-object v0, v1, Lcom/xueqiu/android/community/a/ak;->e:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/xueqiu/android/community/a/ak$27;-><init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V

    .line 2807
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2808
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :goto_0
    return-void

    .line 2810
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

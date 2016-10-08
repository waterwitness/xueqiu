.class final Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/tactic/d/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 80
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    check-cast p1, Ljava/util/List;

    .line 5084
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5085
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->a(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5086
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->a(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5087
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->b(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Lcom/xueqiu/android/tactic/a/j;

    move-result-object v0

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 5087
    :goto_0
    return-void

    .line 5089
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->c(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 5090
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;->a:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->d(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

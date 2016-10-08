.class final Lcom/xueqiu/android/cube/j$1;
.super Landroid/content/BroadcastReceiver;
.source "CubeTopListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/j;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/xueqiu/android/cube/j$1;->a:Lcom/xueqiu/android/cube/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const v5, 0x7f0e0461

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 421
    const-string v0, "extra_arena_rank_new_count"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/cube/j$1;->a:Lcom/xueqiu/android/cube/j;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 422
    const v2, 0x7f0e0462

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    if-lez v1, :cond_0

    .line 424
    const-string v2, "%d\u4e2a\u7ec4\u5408\u65b0\u5165\u699c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/cube/j$1;->a:Lcom/xueqiu/android/cube/j;

    .line 3240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 426
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/cube/j$1;->a:Lcom/xueqiu/android/cube/j;

    .line 4240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 429
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

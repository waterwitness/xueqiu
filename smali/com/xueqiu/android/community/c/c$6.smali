.class final Lcom/xueqiu/android/community/c/c$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x514

    const/16 v4, 0x17

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0007

    if-ne v0, v1, :cond_2

    .line 480
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->paidMentionAvailable()Z

    move-result v0

    .line 481
    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->j(Lcom/xueqiu/android/community/c/c;)V

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->l(Lcom/xueqiu/android/community/c/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->m(Lcom/xueqiu/android/community/c/c;)Z

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->n(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e04aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in_write"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    .line 490
    invoke-static {v2}, Lcom/xueqiu/android/community/c/c;->l(Lcom/xueqiu/android/community/c/c;)Z

    move-result v2

    .line 489
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 538
    :cond_0
    :goto_1
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->k(Lcom/xueqiu/android/community/c/c;)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04ad

    if-ne v0, v1, :cond_3

    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->k(Lcom/xueqiu/android/community/c/c;)V

    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04af

    if-ne v0, v1, :cond_6

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 496
    if-eqz v0, :cond_4

    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 2152
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 501
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    const-string v1, "extra_write_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "to_pick_user"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;)V

    .line 506
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->o(Lcom/xueqiu/android/community/c/c;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 507
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->p(Lcom/xueqiu/android/community/c/c;)V

    .line 508
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->q(Lcom/xueqiu/android/community/c/c;)Z

    .line 509
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    .line 510
    invoke-static {v2}, Lcom/xueqiu/android/community/c/c;->o(Lcom/xueqiu/android/community/c/c;)Z

    move-result v2

    .line 509
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 513
    :cond_5
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v5, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 515
    const-string v1, "name"

    const-string v2, "\u63d0\u95ee"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 516
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_1

    .line 517
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04ab

    if-ne v0, v1, :cond_7

    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->r(Lcom/xueqiu/android/community/c/c;)V

    goto/16 :goto_1

    .line 519
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0014

    if-ne v0, v1, :cond_8

    .line 520
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f040010

    const v3, 0x7f040008

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;II)V

    goto/16 :goto_1

    .line 521
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04a8

    if-ne v0, v1, :cond_9

    .line 522
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->k()V

    goto/16 :goto_1

    .line 525
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04b2

    if-ne v0, v1, :cond_0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 526
    if-eqz v0, :cond_a

    .line 527
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 4152
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    goto/16 :goto_1

    .line 530
    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$6;->a:Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;)V

    .line 532
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "post_long_status_tag"

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 533
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v5, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 535
    const-string v1, "name"

    const-string v2, "\u957f\u6587"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 536
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_1
.end method

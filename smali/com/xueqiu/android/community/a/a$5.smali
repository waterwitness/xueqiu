.class final Lcom/xueqiu/android/community/a/a$5;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$5;->b:Lcom/xueqiu/android/community/a/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x6a4

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v3

    .line 521
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->b:Lcom/xueqiu/android/community/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/a;->d(Lcom/xueqiu/android/community/a/a;)V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 525
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->b:Lcom/xueqiu/android/community/a/a;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 525
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->b:Lcom/xueqiu/android/community/a/a;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 526
    check-cast v0, Landroid/app/Activity;

    .line 3152
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 569
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v4

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 530
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 531
    const v0, 0x7f0700a0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 538
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 539
    new-instance v4, Lcom/xueqiu/android/community/a/a$5$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/a/a$5$1;-><init>(Lcom/xueqiu/android/community/a/a$5;)V

    .line 552
    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4}, Lcom/xueqiu/android/base/b/ai;->e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 554
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    iget-object v3, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getLikeCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/model/Comment;->setLikeCount(I)V

    .line 555
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setLiked(Z)V

    .line 562
    :goto_2
    const v0, 0x7f0e01ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 563
    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getLikeCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 564
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getLikeCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 535
    goto :goto_1

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v4}, Lcom/xueqiu/android/base/b/ai;->f(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 558
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setLikeCount(I)V

    .line 559
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$5;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/Comment;->setLiked(Z)V

    goto :goto_2

    .line 567
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

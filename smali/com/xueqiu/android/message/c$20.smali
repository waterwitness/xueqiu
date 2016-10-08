.class final Lcom/xueqiu/android/message/c$20;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;Ljava/util/List;J)V
    .locals 1

    .prologue
    .line 654
    iput-object p1, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    iput-object p2, p0, Lcom/xueqiu/android/message/c$20;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/xueqiu/android/message/c$20;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/c$20;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->c(Ljava/util/List;)Lcom/xueqiu/android/message/a/z;

    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 678
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->d(Lcom/xueqiu/android/message/c;)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 679
    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->f(Lcom/xueqiu/android/message/c;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    .line 2560
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->d()V

    .line 2561
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2567
    const-string v2, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    const-string v2, "com.xueqiu.android.action.updateUser"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2569
    iget-boolean v2, v0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-nez v2, :cond_1

    .line 2570
    const-string v2, "com.xueqiu.android.action.deleteTalk"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2572
    :cond_1
    iget-object v2, v0, Lcom/xueqiu/android/message/a/z;->g:Landroid/support/v4/content/r;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->f:Lcom/xueqiu/android/message/a/aa;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 684
    const-string v0, "RecentTalkFragment"

    const-string v1, "reload update UI costs:%dms"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xueqiu/android/message/c$20;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    new-instance v1, Lcom/xueqiu/android/message/a/z;

    iget-object v2, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/c;->g()Landroid/support/v4/a/k;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/message/c$20;->a:Ljava/util/List;

    invoke-direct {v1, v2, v3, v8}, Lcom/xueqiu/android/message/a/z;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/a/z;)Lcom/xueqiu/android/message/a/z;

    .line 662
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->n(Lcom/xueqiu/android/message/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 663
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 664
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v8, v0, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 665
    const v0, 0x7f070142

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 666
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 669
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080113

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 670
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->o(Lcom/xueqiu/android/message/c;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e018d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->n(Lcom/xueqiu/android/message/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->n(Lcom/xueqiu/android/message/c;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v1}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 676
    iget-object v0, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->n(Lcom/xueqiu/android/message/c;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/d/a/b/f/c;

    iget-object v2, p0, Lcom/xueqiu/android/message/c$20;->c:Lcom/xueqiu/android/message/c;

    invoke-static {v2}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v2

    .line 1401
    iget-object v2, v2, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 676
    invoke-direct {v1, v2, v8, v5}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0
.end method

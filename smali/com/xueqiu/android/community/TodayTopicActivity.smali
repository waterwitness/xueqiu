.class public Lcom/xueqiu/android/community/TodayTopicActivity;
.super Lcom/xueqiu/android/common/b;
.source "TodayTopicActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 29
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f07046b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TodayTopicActivity;->setTitle(I)V

    .line 32
    const-string v0, "TodayTopic"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(Z)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->a(Z)V

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TodayTopicActivity;->setContentView(Landroid/view/View;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TodayTopicActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/xueqiu/android/community/c/g;

    invoke-direct {v2}, Lcom/xueqiu/android/community/c/g;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TodayTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "view_which"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 47
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v5, "view_which"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/community/c/g;->e(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const-string v3, "fragment_tag"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 51
    invoke-virtual {v1, v2}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 52
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 54
    :cond_0
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TodayTopicActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/g;

    .line 59
    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, v0, Lcom/xueqiu/android/community/c/g;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 61
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

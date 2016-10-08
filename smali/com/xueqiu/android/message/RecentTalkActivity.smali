.class public Lcom/xueqiu/android/message/RecentTalkActivity;
.super Lcom/xueqiu/android/common/b;
.source "RecentTalkActivity.java"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/message/RecentTalkActivity;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/RecentTalkActivity;->setTheme(I)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/RecentTalkActivity;->j:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/message/RecentTalkActivity;->j:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 39
    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/message/RecentTalkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    const-string v0, "extra_comment_count"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    const-string v1, "extra_mention_count"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    const-string v2, "extra_paid_mention_count"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    const-string v3, "extra_paid_comment_count"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 49
    const-string v4, "extra_new_follower_count"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 50
    const-string v5, "extra_trade_notification_count"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 52
    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/message/c;->a(IIIIII)Lcom/xueqiu/android/message/c;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/message/RecentTalkActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/RecentTalkActivity;->j:Landroid/view/View;

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/RecentTalkActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/RecentTalkActivity;->setContentView(Landroid/view/View;)V

    .line 60
    return-void

    :cond_1
    move v4, v5

    move v3, v5

    move v2, v5

    move v1, v5

    move v0, v5

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 65
    return-void
.end method

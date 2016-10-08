.class public Lcom/xueqiu/android/message/TalkListActivity;
.super Lcom/xueqiu/android/common/b;
.source "TalkListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0e0018

    const/4 v2, -0x1

    .line 25
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 28
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/TalkListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Lcom/xueqiu/android/message/d;

    invoke-direct {v0}, Lcom/xueqiu/android/message/d;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkListActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 37
    :cond_0
    return-void
.end method

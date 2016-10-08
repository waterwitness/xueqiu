.class public Lcom/xueqiu/android/community/CommentReceiveActivity;
.super Lcom/xueqiu/android/common/b;
.source "CommentReceiveActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v1, Lcom/xueqiu/android/community/b;

    invoke-direct {v1}, Lcom/xueqiu/android/community/b;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentReceiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentReceiveActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentReceiveActivity;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 51
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentReceiveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 53
    return-void
.end method

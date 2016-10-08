.class public Lcom/xueqiu/android/community/MentionMeStatusActivity;
.super Lcom/xueqiu/android/common/b;
.source "MentionMeStatusActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0e001b

    const/4 v2, -0x1

    .line 34
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/MentionMeStatusActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Lcom/xueqiu/android/community/h;

    invoke-direct {v0}, Lcom/xueqiu/android/community/h;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/community/MentionMeStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/xueqiu/android/community/MentionMeStatusActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 44
    const-string v2, "fragment_tag"

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 46
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 52
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/MentionMeStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 54
    return-void
.end method

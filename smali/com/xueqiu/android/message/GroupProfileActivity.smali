.class public Lcom/xueqiu/android/message/GroupProfileActivity;
.super Lcom/xueqiu/android/common/b;
.source "GroupProfileActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 34
    new-instance v1, Landroid/support/v7/a/c;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/support/v7/a/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/GroupProfileActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_group_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 37
    if-nez p1, :cond_1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 38
    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a;->a(J)Lcom/xueqiu/android/message/a;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/message/GroupProfileActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 42
    const-string v0, "GroupProfileActivity"

    const-string v1, "groupId not found"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

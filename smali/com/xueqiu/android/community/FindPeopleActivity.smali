.class public Lcom/xueqiu/android/community/FindPeopleActivity;
.super Lcom/xueqiu/android/common/b;
.source "FindPeopleActivity.java"


# instance fields
.field private j:I

.field private k:Lcom/xueqiu/android/base/b/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->j:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->k:Lcom/xueqiu/android/base/b/ap;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/FindPeopleActivity;)Lcom/xueqiu/android/base/b/ap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->k:Lcom/xueqiu/android/base/b/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/FindPeopleActivity;)Lcom/xueqiu/android/base/b/ap;
    .locals 1

    .prologue
    .line 78
    .line 2091
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->k:Lcom/xueqiu/android/base/b/ap;

    .line 78
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->k:Lcom/xueqiu/android/base/b/ap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ap;->a(IILandroid/content/Intent;)V

    .line 633
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->setTitle(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 103
    new-instance v0, Lcom/xueqiu/android/base/b/ap;

    new-instance v1, Lcom/xueqiu/android/community/FindPeopleActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/FindPeopleActivity$1;-><init>(Lcom/xueqiu/android/community/FindPeopleActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/b/ap;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleActivity;->k:Lcom/xueqiu/android/base/b/ap;

    .line 119
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v1, Lcom/xueqiu/android/community/d;

    invoke-direct {v1}, Lcom/xueqiu/android/community/d;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleActivity;->setContentView(Landroid/view/View;)V

    .line 129
    return-void
.end method

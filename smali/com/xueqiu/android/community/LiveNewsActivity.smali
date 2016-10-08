.class public Lcom/xueqiu/android/community/LiveNewsActivity;
.super Lcom/xueqiu/android/common/b;
.source "LiveNewsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f07045f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/LiveNewsActivity;->setTitle(I)V

    .line 21
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 23
    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/xueqiu/android/community/LiveNewsActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-static {}, Lcom/xueqiu/android/community/c/j;->u()Lcom/xueqiu/android/community/c/j;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/LiveNewsActivity;->setContentView(Landroid/view/View;)V

    .line 29
    return-void
.end method

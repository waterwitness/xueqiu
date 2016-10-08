.class public Lcom/xueqiu/android/cube/IndustryListActivity;
.super Lcom/xueqiu/android/common/b;
.source "IndustryListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/IndustryListActivity;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-static {}, Lcom/xueqiu/android/cube/b/a;->u()Lcom/xueqiu/android/cube/b/a;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/IndustryListActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->a(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 28
    return-void
.end method

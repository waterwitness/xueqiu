.class public Lcom/xueqiu/android/common/widget/SnowBallTabHost;
.super Landroid/support/v4/a/y;
.source "SnowBallTabHost.java"


# instance fields
.field private a:Landroid/support/v4/a/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/a/y;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/a/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v4/a/q;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a:Landroid/support/v4/a/q;

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/y;->a(Landroid/content/Context;Landroid/support/v4/a/q;I)V

    .line 53
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 58
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/a/y;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a:Landroid/support/v4/a/q;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 32
    :cond_0
    instance-of v1, v0, Lcom/xueqiu/android/common/d;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/xueqiu/android/common/d;

    invoke-interface {v0}, Lcom/xueqiu/android/common/d;->B_()V

    goto :goto_0

    .line 38
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/a/y;->setCurrentTab(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/a/y;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 47
    return-void
.end method

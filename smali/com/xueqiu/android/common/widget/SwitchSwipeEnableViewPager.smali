.class public Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SwitchSwipeEnableViewPager.java"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->b:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->b:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->b:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 26
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->b:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 35
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->b:Z

    .line 41
    return-void
.end method

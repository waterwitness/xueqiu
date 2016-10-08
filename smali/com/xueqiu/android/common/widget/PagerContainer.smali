.class public Lcom/xueqiu/android/common/widget/PagerContainer;
.super Landroid/widget/FrameLayout;
.source "PagerContainer.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# instance fields
.field a:Z

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->a:Z

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->c:Landroid/graphics/Point;

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->d:Landroid/graphics/Point;

    .line 1059
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/PagerContainer;->setClipChildren(Z)V

    .line 1064
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/PagerContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PagerContainer;->invalidate()V

    .line 111
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->a:Z

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b_(I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/PagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 73
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 88
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PagerContainer;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

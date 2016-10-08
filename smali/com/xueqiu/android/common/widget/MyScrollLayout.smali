.class public Lcom/xueqiu/android/common/widget/MyScrollLayout;
.super Landroid/view/ViewGroup;
.source "MyScrollLayout.java"


# instance fields
.field private a:Landroid/view/VelocityTracker;

.field private b:Landroid/widget/Scroller;

.field private c:I

.field private d:I

.field private e:F

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Lcom/xueqiu/android/common/widget/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->d:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->f:Z

    .line 43
    iput v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    .line 1064
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->d:I

    iput v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    .line 1066
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->g:I

    .line 1068
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    .line 1069
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->i:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 124
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 131
    iput v6, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    .line 132
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->invalidate()V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->scrollTo(II)V

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->postInvalidate()V

    .line 157
    :cond_0
    return-void
.end method

.method public getCurScreen()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    return v0
.end method

.method public getIndicatorLayoutCount()I
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->f:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 257
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    if-eqz v3, :cond_1

    .line 259
    const-string v0, ""

    const-string v1, "onInterceptTouchEvent  return true"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 264
    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_2
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    if-eqz v0, :cond_3

    .line 286
    const-string v0, ""

    const-string v3, "mTouchState != TOUCH_STATE_REST  return true"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 266
    :pswitch_0
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 267
    iget v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->g:I

    if-le v0, v3, :cond_2

    .line 268
    iput v2, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    goto :goto_1

    .line 273
    :pswitch_1
    iput v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 281
    :pswitch_2
    iput v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 82
    :goto_0
    if-ge v1, v3, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 86
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 87
    add-int/2addr v0, v5

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 103
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v3

    move v0, v1

    .line 104
    :goto_0
    if-ge v0, v3, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "ScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moving to screen "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->scrollTo(II)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 168
    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 171
    :pswitch_0
    const-string v0, "ScrollLayout"

    const-string v1, "onTouchEvent  ACTION_DOWN"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 182
    :cond_2
    iput v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    .line 185
    const-string v0, "ScrollLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent  ACTION_DOWN mLastMotionX="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :pswitch_1
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    sub-float/2addr v0, v3

    float-to-int v4, v0

    .line 1295
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v0

    if-gtz v0, :cond_4

    if-gez v4, :cond_4

    move v0, v1

    .line 191
    :goto_1
    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 196
    :cond_3
    iput v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->e:F

    .line 198
    invoke-virtual {p0, v4, v1}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->scrollBy(II)V

    goto :goto_0

    .line 1299
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    if-lt v0, v5, :cond_5

    if-lez v4, :cond_5

    move v0, v1

    .line 1300
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1304
    goto :goto_1

    .line 206
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 213
    :goto_2
    const/16 v3, 0xc8

    if-le v0, v3, :cond_8

    iget v3, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    if-lez v3, :cond_8

    .line 215
    const-string v0, "ScrollLayout"

    const-string v3, "snap left"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a(I)V

    .line 239
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a:Landroid/view/VelocityTracker;

    .line 244
    :cond_7
    iput v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    goto/16 :goto_0

    .line 217
    :cond_8
    const/16 v3, -0xc8

    if-ge v0, v3, :cond_b

    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 219
    const-string v0, "ScrollLayout"

    const-string v3, "snap right"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v0, v3, :cond_a

    .line 222
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->f:Z

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->j:Lcom/xueqiu/android/common/widget/s;

    if-eqz v0, :cond_6

    goto :goto_3

    .line 228
    :cond_9
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a(I)V

    goto :goto_3

    .line 232
    :cond_a
    iget v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a(I)V

    goto :goto_3

    .line 2114
    :cond_b
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getWidth()I

    move-result v0

    .line 2116
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v0, v3, v0

    .line 2117
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->a(I)V

    goto :goto_3

    .line 247
    :pswitch_3
    iput v1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->h:I

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_2

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setIsNotifyScrollFinished(Z)V
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->f:Z

    .line 310
    return-void
.end method

.method public setOnScrollPageChangeListener(Lcom/xueqiu/android/common/widget/s;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->j:Lcom/xueqiu/android/common/widget/s;

    .line 316
    return-void
.end method

.method public setToScreen(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    iput v0, p0, Lcom/xueqiu/android/common/widget/MyScrollLayout;->c:I

    .line 143
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/xueqiu/android/common/widget/MyScrollLayout;->scrollTo(II)V

    .line 144
    return-void
.end method

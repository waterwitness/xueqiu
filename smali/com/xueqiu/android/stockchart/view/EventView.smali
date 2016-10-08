.class public Lcom/xueqiu/android/stockchart/view/EventView;
.super Lcom/xueqiu/android/stockchart/view/BaseView;
.source "EventView.java"


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field private c:Lcom/xueqiu/android/stockchart/a/c;

.field private d:Lcom/xueqiu/android/stockchart/a/a;

.field private e:Lcom/xueqiu/android/stockchart/a/d;

.field private f:Landroid/view/View$OnTouchListener;

.field private g:Ljava/lang/String;

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/ScaleGestureDetector;

.field private s:F

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    .line 37
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 38
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->q:Z

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->s:F

    .line 206
    new-instance v0, Lcom/xueqiu/android/stockchart/view/EventView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stockchart/view/EventView$1;-><init>(Lcom/xueqiu/android/stockchart/view/EventView;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->t:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/xueqiu/android/stockchart/view/a;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/stockchart/view/a;-><init>(Lcom/xueqiu/android/stockchart/view/EventView;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->r:Landroid/view/ScaleGestureDetector;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    .line 37
    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 38
    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->q:Z

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->s:F

    .line 206
    new-instance v0, Lcom/xueqiu/android/stockchart/view/EventView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stockchart/view/EventView$1;-><init>(Lcom/xueqiu/android/stockchart/view/EventView;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->t:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/view/EventView;F)F
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->s:F

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/view/EventView;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stockchart/view/EventView;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stockchart/view/EventView;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stockchart/view/EventView;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stockchart/view/EventView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stockchart/view/EventView;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->s:F

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->e:Lcom/xueqiu/android/stockchart/a/d;

    return-object v0
.end method


# virtual methods
.method public getChartStartX()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->h:F

    return v0
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getChartWidth()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->i:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->r:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return v4

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    .line 119
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    .line 120
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->n:F

    .line 122
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/view/EventView;->q:Z

    .line 124
    iput-boolean v4, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/a;->d(FF)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->t:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 134
    :pswitch_2
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 135
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->t:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/a;->f(FF)V

    .line 150
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/c;->c(FF)V

    .line 162
    :cond_5
    :goto_1
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 163
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    .line 165
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/EventView;->invalidate()V

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->l:F

    goto/16 :goto_0

    .line 155
    :cond_6
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    if-nez v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->f:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->f:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 174
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->n:F

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_8

    .line 178
    iput-boolean v3, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    .line 181
    :cond_8
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->q:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->k:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->t:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iput-boolean v4, p0, Lcom/xueqiu/android/stockchart/view/EventView;->q:Z

    .line 186
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->o:Z

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    if-eqz v0, :cond_a

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->n:F

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/c;->b(FF)V

    .line 192
    :cond_a
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->p:Z

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->m:F

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/EventView;->n:F

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/a;->e(FF)V

    .line 198
    :cond_b
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/EventView;->invalidate()V

    goto/16 :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setChartStartX(F)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->h:F

    .line 70
    return-void
.end method

.method public setChartType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->g:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setChartWidth(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->i:F

    .line 79
    return-void
.end method

.method public setOnDragEventListener(Lcom/xueqiu/android/stockchart/a/a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->d:Lcom/xueqiu/android/stockchart/a/a;

    .line 49
    return-void
.end method

.method public setOnPressListener(Lcom/xueqiu/android/stockchart/a/c;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->c:Lcom/xueqiu/android/stockchart/a/c;

    .line 45
    return-void
.end method

.method public setOnScaleEventListener(Lcom/xueqiu/android/stockchart/a/d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->e:Lcom/xueqiu/android/stockchart/a/d;

    .line 53
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->f:Landroid/view/View$OnTouchListener;

    .line 58
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView;->j:Ljava/lang/String;

    .line 62
    return-void
.end method

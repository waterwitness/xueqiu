.class public Lcom/xueqiu/android/community/widget/PullToZoomListView;
.super Landroid/widget/ListView;
.source "PullToZoomListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field a:I

.field b:F

.field c:F

.field d:F

.field private f:Landroid/widget/FrameLayout;

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/AbsListView$OnScrollListener;

.field private j:Lcom/xueqiu/android/community/widget/a;

.field private k:I

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/xueqiu/android/community/widget/PullToZoomListView$1;

    invoke-direct {v0}, Lcom/xueqiu/android/community/widget/PullToZoomListView$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 32
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 33
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    .line 34
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->d:F

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->m:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 32
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 33
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    .line 34
    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->d:F

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->m:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/PullToZoomListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 216
    if-nez v1, :cond_0

    .line 217
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    :cond_0
    move-object v0, v1

    .line 218
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, v1

    .line 219
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iput p2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    .line 223
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 62
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, p1

    .line 63
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->k:I

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    .line 68
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->l:I

    .line 69
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->l:I

    const/high16 v1, 0x41980000    # 19.0f

    iget v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->l:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(II)V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    new-instance v0, Lcom/xueqiu/android/community/widget/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/widget/a;-><init>(Lcom/xueqiu/android/community/widget/PullToZoomListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->j:Lcom/xueqiu/android/community/widget/a;

    .line 73
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/widget/PullToZoomListView;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 95
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->l:I

    iget v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->l:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(II)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 113
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    .line 115
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 121
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 122
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 123
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    neg-int v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/ImageView;->scrollTo(II)V

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 131
    :cond_1
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ImageView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->j:Lcom/xueqiu/android/community/widget/a;

    iget-boolean v0, v0, Lcom/xueqiu/android/community/widget/a;->b:Z

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->j:Lcom/xueqiu/android/community/widget/a;

    .line 1237
    iput-boolean v1, v0, Lcom/xueqiu/android/community/widget/a;->b:Z

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 147
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 148
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->d:F

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    goto :goto_0

    .line 152
    :pswitch_1
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 153
    if-eq v0, v2, :cond_0

    .line 155
    iget v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    if-lt v2, v3, :cond_6

    .line 158
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 161
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    add-float/2addr v3, v4

    .line 163
    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    .line 164
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iput-boolean v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 168
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 170
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->d:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    .line 172
    iget v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->k:I

    if-ge v3, v4, :cond_4

    .line 174
    iget-object v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 175
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iput-boolean v8, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    .line 179
    iput-boolean v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 181
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    move v0, v1

    .line 182
    goto/16 :goto_1

    .line 184
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    goto/16 :goto_0

    .line 2088
    :pswitch_2
    iput v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 2089
    iput v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 2090
    iput v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->d:F

    .line 2091
    iput v3, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->c:F

    .line 3057
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    if-lt v0, v2, :cond_7

    .line 3058
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->j:Lcom/xueqiu/android/community/widget/a;

    .line 3267
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/community/widget/a;->d:J

    .line 3268
    const-wide/16 v2, 0xc8

    iput-wide v2, v0, Lcom/xueqiu/android/community/widget/a;->a:J

    .line 3269
    iget-object v2, v0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 4020
    iget-object v2, v2, Lcom/xueqiu/android/community/widget/PullToZoomListView;->f:Landroid/widget/FrameLayout;

    .line 3270
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 5020
    iget v3, v3, Lcom/xueqiu/android/community/widget/PullToZoomListView;->g:I

    .line 3270
    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/xueqiu/android/community/widget/a;->c:F

    .line 3271
    iput-boolean v8, v0, Lcom/xueqiu/android/community/widget/a;->b:Z

    .line 3272
    iget-object v2, v0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->m:Landroid/content/Context;

    instance-of v0, v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->m:Landroid/content/Context;

    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    iget-boolean v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    .line 5213
    iput-boolean v2, v0, Lcom/xueqiu/android/community/TopicDetailActivity;->p:Z

    .line 192
    iput-boolean v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->n:Z

    goto/16 :goto_0

    .line 196
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    goto/16 :goto_0

    .line 6077
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 6078
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    if-ne v1, v2, :cond_8

    .line 6079
    if-eqz v0, :cond_8

    .line 6081
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F

    .line 6082
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 203
    :cond_8
    :try_start_0
    iget v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/PullToZoomListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    .line 228
    return-void
.end method

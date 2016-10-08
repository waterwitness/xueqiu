.class public Lcom/emilsjolander/components/stickylistheaders/IndexScroller;
.super Ljava/lang/Object;
.source "IndexScroller.java"


# static fields
.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_HIDING:I = 0x3

.field private static final STATE_SHOWING:I = 0x1

.field private static final STATE_SHOWN:I = 0x2


# instance fields
.field private mAlphaRate:F

.field private mCurrentSection:I

.field private mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mIndexbarMargin:F

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIndexbarWidth:F

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIsIndexing:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mPreviewPadding:F

.field private mScaledDensity:F

.field private mSections:[Ljava/lang/Character;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    .line 35
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIsIndexing:Z

    .line 36
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    .line 37
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 38
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    .line 223
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mScaledDensity:F

    .line 49
    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setAdapter(Landroid/widget/Adapter;)V

    .line 52
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarWidth:F

    .line 53
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    .line 54
    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mPreviewPadding:F

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    return v0
.end method

.method static synthetic access$102(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    return p1
.end method

.method static synthetic access$200(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;J)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->fade(J)V

    return-void
.end method

.method private contains(FF)Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fade(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 221
    return-void
.end method

.method private getSectionByPoint(F)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    .line 181
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 188
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    .line 189
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->fade(J)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 197
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    .line 198
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->fade(J)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v0, 0x0

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 58
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    if-nez v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 63
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v3, v11

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v4, v11

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 68
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 70
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    if-ltz v1, :cond_2

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 72
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x40

    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 77
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 78
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    const/high16 v3, 0x42480000    # 50.0f

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mScaledDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 83
    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mPreviewPadding:F

    mul-float/2addr v4, v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    .line 84
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v10

    iget v7, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    div-float/2addr v7, v10

    iget v8, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v10

    add-float/2addr v8, v4

    iget v9, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewHeight:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    div-float/2addr v9, v10

    add-float/2addr v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    iget v6, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mDensity:F

    mul-float/2addr v7, v11

    invoke-virtual {p1, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    iget v6, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float v3, v4, v3

    div-float/2addr v3, v10

    add-float/2addr v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, v5, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mPreviewPadding:F

    add-float/2addr v4, v5

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 90
    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 95
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mScaledDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    mul-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float v3, v2, v3

    div-float/2addr v3, v10

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 103
    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarWidth:F

    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    .line 104
    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    add-float/2addr v6, v7

    int-to-float v7, v0

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 104
    invoke-virtual {p1, v5, v4, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6

    .prologue
    .line 149
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewWidth:I

    .line 150
    iput p2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListViewHeight:I

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    int-to-float v3, p1

    iget v4, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget v5, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarMargin:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 145
    :cond_1
    :goto_1
    return v0

    .line 114
    :pswitch_0
    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0, v4}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    .line 118
    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIsIndexing:Z

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    .line 121
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 126
    :pswitch_1
    iget-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIsIndexing:Z

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    .line 131
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexer:Landroid/widget/SectionIndexer;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    invoke-interface {v2, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 137
    :pswitch_2
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIsIndexing:Z

    if-eqz v0, :cond_2

    .line 138
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIsIndexing:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mCurrentSection:I

    .line 141
    :cond_2
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    if-ne v0, v4, :cond_0

    .line 142
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    .prologue
    .line 170
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Landroid/widget/SectionIndexer;

    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 172
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Character;

    check-cast v0, [Ljava/lang/Character;

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mSections:[Ljava/lang/Character;

    .line 174
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 158
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I

    if-ne v0, v1, :cond_0

    .line 161
    invoke-direct {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V

    goto :goto_0
.end method

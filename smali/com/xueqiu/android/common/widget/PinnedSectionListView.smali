.class public Lcom/xueqiu/android/common/widget/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# instance fields
.field a:Landroid/widget/AbsListView$OnScrollListener;

.field b:Lcom/xueqiu/android/common/widget/u;

.field c:Lcom/xueqiu/android/common/widget/u;

.field d:I

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/PointF;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/view/MotionEvent;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:I

.field private l:I

.field private final m:Landroid/widget/AbsListView$OnScrollListener;

.field private final n:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->f:Landroid/graphics/PointF;

    .line 90
    new-instance v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;-><init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 133
    new-instance v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;-><init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->n:Landroid/database/DataSetObserver;

    .line 146
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->f:Landroid/graphics/PointF;

    .line 90
    new-instance v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;-><init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    .line 133
    new-instance v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView$2;-><init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->n:Landroid/database/DataSetObserver;

    .line 151
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c()V

    .line 152
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 176
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    .line 177
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->l:I

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    .line 182
    iput v4, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->l:I

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 486
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 489
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 490
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 491
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->e:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/ListAdapter;I)Z
    .locals 1

    .prologue
    .line 519
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 520
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 522
    :goto_0
    check-cast v0, Lcom/xueqiu/android/common/widget/v;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/common/widget/v;->a(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->g:I

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Z)V

    .line 158
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 495
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->i:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->i:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 498
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->i:Landroid/view/MotionEvent;

    .line 500
    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 299
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v0, v2

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    instance-of v0, v1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 305
    check-cast v0, Landroid/widget/SectionIndexer;

    .line 306
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 307
    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 308
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 309
    invoke-static {v1, v3}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v0, p1

    .line 315
    :goto_1
    if-ltz v0, :cond_3

    .line 316
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 317
    invoke-static {v1, v3}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 319
    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b:Lcom/xueqiu/android/common/widget/u;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    .line 237
    :cond_0
    return-void
.end method

.method final a(III)V
    .locals 8

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 241
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget v0, v0, Lcom/xueqiu/android/common/widget/u;->b:I

    if-eq v0, p1, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a()V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-nez v0, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b:Lcom/xueqiu/android/common/widget/u;

    .line 1192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b:Lcom/xueqiu/android/common/widget/u;

    .line 1195
    if-nez v0, :cond_c

    new-instance v0, Lcom/xueqiu/android/common/widget/u;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/u;-><init>()V

    move-object v1, v0

    .line 1197
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    invoke-interface {v0, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1200
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1201
    if-nez v0, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1203
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    :cond_3
    iget v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1207
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1209
    if-nez v3, :cond_b

    move v0, v2

    .line 1211
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingBottom()I

    move-result v7

    sub-int/2addr v3, v7

    .line 1212
    if-le v4, v3, :cond_a

    .line 1215
    :goto_3
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1216
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1217
    invoke-virtual {v6, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1218
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v6, v5, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 1219
    iput v5, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    .line 1222
    iput-object v6, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 1223
    iput p1, v1, Lcom/xueqiu/android/common/widget/u;->b:I

    .line 1224
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xueqiu/android/common/widget/u;->c:J

    .line 1227
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    .line 256
    :cond_4
    add-int/lit8 v3, p1, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 258
    sub-int v0, v3, p2

    sub-int v0, p3, v0

    .line 1281
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1283
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1284
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    if-ge v2, v1, :cond_7

    .line 1286
    add-int v2, v3, v0

    if-lt v2, v1, :cond_5

    .line 1287
    sub-int v0, v1, v3

    :cond_5
    move v2, v5

    .line 1290
    :goto_4
    if-ge v2, v0, :cond_7

    .line 1291
    add-int v1, v3, v2

    .line 1292
    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 1293
    invoke-static {v4, v6}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v1

    .line 260
    :goto_5
    if-ltz v0, :cond_9

    .line 261
    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v1, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    .line 264
    iget v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    if-gez v0, :cond_8

    .line 266
    iget v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    iput v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    goto/16 :goto_0

    .line 1290
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1295
    :cond_7
    const/4 v0, -0x1

    goto :goto_5

    .line 269
    :cond_8
    iput v5, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    goto/16 :goto_0

    .line 273
    :cond_9
    iput v5, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    .line 274
    const v0, 0x7fffffff

    iput v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto/16 :goto_2

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method

.method final b()V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a()V

    .line 324
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 327
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(I)I

    move-result v1

    .line 328
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 329
    invoke-virtual {p0, v1, v0, v2}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(III)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 392
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v1

    .line 396
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v2

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v3, v0, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 402
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 403
    :goto_0
    add-int/2addr v0, v4

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 406
    int-to-float v0, v1

    iget v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    if-lez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v1, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v2, v2, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 411
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v3, v3, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 412
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v4, v4, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 413
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->l:I

    add-int/2addr v4, v5

    .line 410
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 414
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    :cond_1
    return-void

    .line 402
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->l:I

    iget v5, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->k:I

    .line 403
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 430
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v3, v3, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 433
    invoke-direct {p0, v3, v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v3, v3, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    iput-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    .line 437
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->f:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 438
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->f:Landroid/graphics/PointF;

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 441
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->i:Landroid/view/MotionEvent;

    .line 444
    :cond_0
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 445
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    invoke-direct {p0, v3, v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 449
    :cond_1
    if-ne v2, v6, :cond_5

    .line 450
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1503
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_3

    .line 1505
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget v2, v2, Lcom/xueqiu/android/common/widget/u;->b:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1507
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v2, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 1508
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->playSoundEffect(I)V

    .line 1509
    if-eqz v2, :cond_2

    .line 1510
    invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget v3, v1, Lcom/xueqiu/android/common/widget/u;->b:I

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-wide v4, v1, Lcom/xueqiu/android/common/widget/u;->c:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 452
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d()V

    :cond_4
    :goto_0
    move v0, v6

    .line 478
    :goto_1
    return v0

    .line 454
    :cond_5
    if-ne v2, v4, :cond_6

    .line 455
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d()V

    goto :goto_0

    .line 457
    :cond_6
    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 461
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 463
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 464
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->i:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 468
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 469
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->d()V

    goto :goto_0

    .line 478
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 378
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_0

    .line 380
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 381
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v1, v1, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 382
    if-eq v0, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->b()V

    .line 386
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 346
    new-instance v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView$3;-><init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->n:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 368
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->n:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 371
    :cond_1
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a()V

    .line 373
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->m:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 337
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method

.method public setShadowVisible(Z)V
    .locals 5

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Z)V

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->c:Lcom/xueqiu/android/common/widget/u;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/u;->a:Landroid/view/View;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->l:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->invalidate(IIII)V

    .line 168
    :cond_0
    return-void
.end method

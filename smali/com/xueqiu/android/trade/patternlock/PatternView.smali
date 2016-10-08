.class public Lcom/xueqiu/android/trade/patternlock/PatternView;
.super Landroid/view/View;
.source "PatternView.java"


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private B:I

.field private C:I

.field private D:I

.field private final E:Landroid/graphics/Matrix;

.field private final F:Landroid/graphics/Matrix;

.field private final G:Landroid/graphics/PorterDuffColorFilter;

.field private final H:Landroid/graphics/PorterDuffColorFilter;

.field private final I:Landroid/graphics/PorterDuffColorFilter;

.field private final J:Landroid/graphics/PorterDuffColorFilter;

.field private final a:[[Lcom/xueqiu/android/trade/patternlock/g;

.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Lcom/xueqiu/android/trade/patternlock/i;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/patternlock/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:[[Z

.field private h:F

.field private i:F

.field private j:J

.field private k:Lcom/xueqiu/android/trade/patternlock/h;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private final p:I

.field private q:F

.field private r:F

.field private s:F

.field private final t:Landroid/graphics/Bitmap;

.field private final u:Landroid/graphics/Bitmap;

.field private final v:Landroid/graphics/Bitmap;

.field private final w:Landroid/graphics/Bitmap;

.field private final x:Landroid/graphics/Bitmap;

.field private final y:Landroid/graphics/Path;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 268
    const v0, 0x7f0101bd

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->b:Z

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    .line 101
    filled-new-array {v9, v9}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    .line 108
    iput v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    .line 109
    iput v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    .line 113
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 114
    iput-boolean v8, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->l:Z

    .line 115
    iput-boolean v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->m:Z

    .line 116
    iput-boolean v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 118
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->o:F

    .line 119
    const/16 v0, 0x80

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->p:I

    .line 120
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->q:F

    .line 131
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->y:Landroid/graphics/Path;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->z:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->A:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    .line 274
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setClickable(Z)V

    .line 276
    sget-object v0, Lcom/xueqiu/android/R$styleable;->PatternView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 279
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->D:I

    .line 281
    invoke-virtual {v2, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 282
    invoke-virtual {v2, v8, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 283
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 284
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 285
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v0, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->G:Landroid/graphics/PorterDuffColorFilter;

    .line 286
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->H:Landroid/graphics/PorterDuffColorFilter;

    .line 287
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->I:Landroid/graphics/PorterDuffColorFilter;

    .line 288
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->J:Landroid/graphics/PorterDuffColorFilter;

    .line 290
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 291
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 293
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 300
    const/4 v0, 0x6

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->t:Landroid/graphics/Bitmap;

    .line 301
    const/4 v0, 0x7

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->u:Landroid/graphics/Bitmap;

    .line 302
    const/16 v0, 0x8

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->v:Landroid/graphics/Bitmap;

    .line 303
    const/16 v0, 0x9

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->w:Landroid/graphics/Bitmap;

    .line 304
    const/16 v0, 0xa

    invoke-direct {p0, v2, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->x:Landroid/graphics/Bitmap;

    .line 306
    new-array v3, v10, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->t:Landroid/graphics/Bitmap;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->u:Landroid/graphics/Bitmap;

    aput-object v0, v3, v8

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->v:Landroid/graphics/Bitmap;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->w:Landroid/graphics/Bitmap;

    aput-object v0, v3, v9

    move v0, v1

    .line 308
    :goto_0
    if-ge v0, v10, :cond_0

    aget-object v4, v3, v0

    .line 309
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    .line 310
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 319
    filled-new-array {v9, v9}, [I

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/trade/patternlock/g;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/xueqiu/android/trade/patternlock/g;

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    move v0, v1

    .line 320
    :goto_1
    if-ge v0, v9, :cond_2

    move v2, v1

    .line 321
    :goto_2
    if-ge v2, v9, :cond_1

    .line 322
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    aget-object v3, v3, v0

    new-instance v4, Lcom/xueqiu/android/trade/patternlock/g;

    invoke-direct {v4}, Lcom/xueqiu/android/trade/patternlock/g;-><init>()V

    aput-object v4, v3, v2

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 320
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    return-void
.end method

.method private a(I)F
    .locals 3

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 491
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 492
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p1, v0

    .line 503
    :goto_0
    :sswitch_0
    return p1

    .line 497
    :sswitch_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 492
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/content/res/TypedArray;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(FF)Lcom/xueqiu/android/trade/patternlock/f;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 549
    .line 2617
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    .line 2618
    iget v4, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->q:F

    mul-float v6, v5, v4

    .line 2620
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v5, v6

    div-float/2addr v7, v10

    add-float/2addr v7, v4

    move v4, v1

    .line 2621
    :goto_0
    const/4 v8, 0x3

    if-ge v4, v8, :cond_6

    .line 2623
    int-to-float v8, v4

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    .line 2624
    cmpl-float v9, p2, v8

    if-ltz v9, :cond_5

    add-float/2addr v8, v6

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_5

    .line 2595
    :goto_1
    if-gez v4, :cond_7

    move-object v5, v0

    .line 550
    :goto_2
    if-eqz v5, :cond_4

    .line 554
    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 556
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/f;

    .line 557
    iget v1, v5, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    sub-int v6, v1, v4

    .line 558
    iget v1, v5, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    sub-int v7, v1, v4

    .line 560
    iget v1, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 561
    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 563
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v2, :cond_0

    .line 564
    iget v8, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    if-lez v6, :cond_c

    move v1, v2

    :goto_3
    add-int/2addr v1, v8

    .line 567
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-eq v6, v2, :cond_d

    .line 568
    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    if-lez v7, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    .line 571
    :goto_4
    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/patternlock/f;->a(II)Lcom/xueqiu/android/trade/patternlock/f;

    move-result-object v0

    .line 574
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    iget v3, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    aget-object v1, v1, v3

    iget v3, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 576
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Lcom/xueqiu/android/trade/patternlock/f;)V

    .line 578
    :cond_3
    invoke-direct {p0, v5}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(Lcom/xueqiu/android/trade/patternlock/f;)V

    .line 579
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/trade/patternlock/PatternView;->performHapticFeedback(I)Z

    move-object v0, v5

    .line 582
    :cond_4
    return-object v0

    .line 2621
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v4, v3

    .line 2628
    goto :goto_1

    .line 2638
    :cond_7
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    .line 2639
    iget v6, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->q:F

    mul-float/2addr v6, v5

    .line 2641
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v5, v6

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 2642
    :goto_5
    const/4 v8, 0x3

    if-ge v1, v8, :cond_9

    .line 2644
    int-to-float v8, v1

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    .line 2645
    cmpl-float v9, p1, v8

    if-ltz v9, :cond_8

    add-float/2addr v8, v6

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_8

    .line 2599
    :goto_6
    if-gez v1, :cond_a

    move-object v5, v0

    .line 2600
    goto/16 :goto_2

    .line 2642
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v3

    .line 2649
    goto :goto_6

    .line 2603
    :cond_a
    iget-object v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    aget-object v5, v5, v4

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_b

    move-object v5, v0

    .line 2604
    goto/16 :goto_2

    .line 2606
    :cond_b
    invoke-static {v4, v1}, Lcom/xueqiu/android/trade/patternlock/f;->a(II)Lcom/xueqiu/android/trade/patternlock/f;

    move-result-object v5

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 564
    goto :goto_3

    :cond_d
    move v0, v4

    goto :goto_4
.end method

.method private a(Lcom/xueqiu/android/trade/patternlock/f;)V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    .line 3176
    iget v1, p1, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 586
    aget-object v0, v0, v1

    .line 3180
    iget v1, p1, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 586
    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 587
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method private b(I)F
    .locals 3

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/patternlock/i;->w()V

    .line 423
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/patternlock/i;->x()V

    .line 437
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 460
    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 461
    :goto_1
    if-ge v0, v4, :cond_0

    .line 462
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    aget-object v3, v3, v2

    aput-boolean v1, v3, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->e()V

    .line 452
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 453
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate()V

    .line 454
    return-void
.end method

.method public getCellStates()[[Lcom/xueqiu/android/trade/patternlock/g;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    return-object v0
.end method

.method public getDisplayMode()Lcom/xueqiu/android/trade/patternlock/h;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 836
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne v4, v5, :cond_2

    .line 843
    add-int/lit8 v4, v10, 0x1

    mul-int/lit16 v4, v4, 0x2bc

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->j:J

    sub-long/2addr v6, v12

    long-to-int v5, v6

    rem-int v6, v5, v4

    .line 846
    div-int/lit16 v7, v6, 0x2bc

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->e()V

    .line 849
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    .line 850
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/patternlock/f;

    .line 6176
    iget v8, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 851
    aget-object v8, v11, v8

    .line 6180
    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 851
    const/4 v12, 0x1

    aput-boolean v12, v8, v4

    .line 849
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 856
    :cond_0
    if-lez v7, :cond_5

    if-ge v7, v10, :cond_5

    const/4 v4, 0x1

    .line 859
    :goto_1
    if-eqz v4, :cond_1

    .line 860
    rem-int/lit16 v4, v6, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float v5, v4, v5

    .line 864
    add-int/lit8 v4, v7, -0x1

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/patternlock/f;

    .line 865
    iget v6, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v6

    .line 866
    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v8

    .line 868
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/patternlock/f;

    .line 869
    iget v7, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 870
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v7

    sub-float/2addr v7, v6

    mul-float/2addr v7, v5

    .line 871
    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 872
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v4

    sub-float/2addr v4, v8

    mul-float/2addr v4, v5

    .line 873
    add-float v5, v6, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    .line 874
    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    .line 877
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate()V

    .line 880
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    .line 881
    move-object/from16 v0, p0

    iget v13, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    .line 883
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->o:F

    mul-float/2addr v4, v12

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->y:Landroid/graphics/Path;

    .line 887
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingTop()I

    move-result v15

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingLeft()I

    move-result v16

    .line 893
    const/4 v4, 0x0

    move v7, v4

    :goto_2
    const/4 v4, 0x3

    if-ge v7, v4, :cond_c

    .line 894
    int-to-float v4, v15

    int-to-float v5, v7

    mul-float/2addr v5, v13

    add-float v17, v4, v5

    .line 896
    const/4 v4, 0x0

    move v8, v4

    :goto_3
    const/4 v4, 0x3

    if-ge v8, v4, :cond_b

    .line 897
    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v8

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    .line 898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    aget-object v5, v5, v7

    aget-object v5, v5, v8

    iget v0, v5, Lcom/xueqiu/android/trade/patternlock/g;->a:F

    move/from16 v18, v0

    .line 899
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    aget-object v6, v6, v7

    aget-object v6, v6, v8

    iget v6, v6, Lcom/xueqiu/android/trade/patternlock/g;->c:F

    const/high16 v19, 0x437f0000    # 255.0f

    mul-float v6, v6, v19

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    aget-object v5, v5, v7

    aget-object v5, v5, v8

    iget v5, v5, Lcom/xueqiu/android/trade/patternlock/g;->b:F

    .line 901
    float-to-int v4, v4

    int-to-float v0, v4

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v4, v0

    int-to-float v4, v4

    add-float v20, v4, v5

    aget-object v4, v11, v7

    aget-boolean v5, v4, v8

    .line 7024
    const/4 v4, 0x0

    .line 7026
    if-eqz v5, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7028
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->v:Landroid/graphics/Bitmap;

    .line 7029
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->G:Landroid/graphics/PorterDuffColorFilter;

    .line 7050
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v21, v0

    .line 7051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v22, v0

    .line 7053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    move/from16 v23, v0

    .line 7054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    move/from16 v24, v0

    .line 7056
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v23, v21

    const/high16 v23, 0x40000000    # 2.0f

    div-float v21, v21, v23

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    .line 7057
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v24, v22

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 7060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 7061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 7063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v19, v21

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    mul-float v20, v23, v18

    mul-float v18, v18, v24

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 7066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 7071
    if-eqz v4, :cond_4

    .line 7072
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7073
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->F:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 896
    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_3

    .line 856
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 7030
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v4, :cond_7

    .line 7032
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->w:Landroid/graphics/Bitmap;

    .line 7033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->u:Landroid/graphics/Bitmap;

    .line 7034
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->H:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_4

    .line 7035
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne v4, v5, :cond_8

    .line 7037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->w:Landroid/graphics/Bitmap;

    .line 7038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->t:Landroid/graphics/Bitmap;

    .line 7039
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->I:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_4

    .line 7040
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    if-eq v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne v4, v5, :cond_a

    .line 7043
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->w:Landroid/graphics/Bitmap;

    .line 7044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->t:Landroid/graphics/Bitmap;

    .line 7045
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->J:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_4

    .line 7047
    :cond_a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown display mode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_b
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_2

    .line 906
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 911
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    move v8, v4

    .line 914
    :goto_5
    if-eqz v8, :cond_11

    .line 915
    const/4 v4, 0x0

    move v7, v4

    :goto_6
    add-int/lit8 v4, v10, -0x1

    if-ge v7, v4, :cond_11

    .line 916
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/patternlock/f;

    .line 917
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xueqiu/android/trade/patternlock/f;

    .line 922
    iget v6, v5, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    aget-object v6, v11, v6

    iget v0, v5, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    move/from16 v17, v0

    aget-boolean v6, v6, v17

    if-eqz v6, :cond_11

    .line 926
    move/from16 v0, v16

    int-to-float v6, v0

    iget v0, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v17, v17, v6

    .line 927
    int-to-float v6, v15

    iget v0, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v13

    add-float v6, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    move-object/from16 v18, v0

    iget v0, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    iget v0, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/g;->b:F

    move/from16 v18, v0

    add-float v18, v18, v6

    .line 7976
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v6, :cond_e

    .line 7977
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->H:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7983
    :goto_7
    iget v6, v5, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 7984
    iget v0, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    move/from16 v19, v0

    .line 7985
    iget v5, v5, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 7986
    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 7989
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    .line 7990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    .line 7995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v22, v0

    .line 7996
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v23, v0

    .line 7999
    sub-int v6, v6, v19

    int-to-double v0, v6

    move-wide/from16 v24, v0

    sub-int v4, v5, v4

    int-to-double v4, v4

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 8001
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    .line 8004
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 8005
    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v6, v19

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 8006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v17, v17, v20

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v18, v18, v20

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 8007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 8009
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->B:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->C:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8010
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move/from16 v0, v22

    int-to-float v6, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v6, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v5, v4, v6, v0}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 8011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v22, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->x:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->E:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 915
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_6

    .line 911
    :cond_d
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_5

    .line 7979
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v19, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_f

    const/4 v6, 0x1

    .line 7980
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->c:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->J:Landroid/graphics/PorterDuffColorFilter;

    :goto_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_7

    .line 7979
    :cond_f
    const/4 v6, 0x0

    goto :goto_8

    .line 7980
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->I:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_9

    .line 934
    :cond_11
    if-eqz v8, :cond_16

    .line 935
    const/4 v4, 0x0

    .line 936
    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    :goto_a
    if-ge v6, v10, :cond_13

    .line 937
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/patternlock/f;

    .line 942
    iget v7, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    aget-object v7, v11, v7

    iget v8, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_13

    .line 945
    const/4 v5, 0x1

    .line 947
    iget v7, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v7

    .line 948
    iget v8, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v8

    .line 951
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->a:[[Lcom/xueqiu/android/trade/patternlock/g;

    iget v13, v4, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    aget-object v12, v12, v13

    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    aget-object v4, v12, v4

    iget v4, v4, Lcom/xueqiu/android/trade/patternlock/g;->b:F

    add-float/2addr v4, v8

    .line 952
    if-nez v6, :cond_12

    .line 953
    invoke-virtual {v14, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 936
    :goto_b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a

    .line 955
    :cond_12
    invoke-virtual {v14, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b

    .line 960
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v6, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne v4, v6, :cond_15

    :cond_14
    if-eqz v5, :cond_15

    .line 962
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    invoke-virtual {v14, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 965
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v4, :cond_17

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->H:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 971
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 973
    :cond_16
    return-void

    .line 968
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    sget-object v5, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    if-eq v4, v5, :cond_18

    const/4 v4, 0x1

    .line 969
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->d:Landroid/graphics/Paint;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->J:Landroid/graphics/PorterDuffColorFilter;

    :goto_e
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_c

    .line 968
    :cond_18
    const/4 v4, 0x0

    goto :goto_d

    .line 969
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/trade/patternlock/PatternView;->I:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_e
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 656
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 658
    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 672
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 660
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 663
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 666
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 521
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 522
    invoke-static {p1, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(II)I

    move-result v1

    .line 523
    invoke-static {p2, v2}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(II)I

    move-result v0

    .line 525
    iget v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->D:I

    packed-switch v2, :pswitch_data_0

    .line 537
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setMeasuredDimension(II)V

    .line 538
    return-void

    .line 527
    :pswitch_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 528
    goto :goto_0

    .line 530
    :pswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 533
    :pswitch_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1088
    check-cast p1, Lcom/xueqiu/android/trade/patternlock/j;

    .line 1089
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/patternlock/j;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1090
    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    .line 8132
    iget-object v0, p1, Lcom/xueqiu/android/trade/patternlock/j;->a:Ljava/lang/String;

    .line 1092
    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8374
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8375
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8376
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->e()V

    .line 8377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/f;

    .line 8378
    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->g:[[Z

    .line 9176
    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 8378
    aget-object v3, v3, v4

    .line 9180
    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 8378
    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    goto :goto_0

    .line 8381
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 1093
    invoke-static {}, Lcom/xueqiu/android/trade/patternlock/h;->values()[Lcom/xueqiu/android/trade/patternlock/h;

    move-result-object v0

    .line 10136
    iget v1, p1, Lcom/xueqiu/android/trade/patternlock/j;->b:I

    .line 1093
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 10140
    iget-boolean v0, p1, Lcom/xueqiu/android/trade/patternlock/j;->c:Z

    .line 1094
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->l:Z

    .line 10144
    iget-boolean v0, p1, Lcom/xueqiu/android/trade/patternlock/j;->d:Z

    .line 1095
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->m:Z

    .line 1096
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1080
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/j;

    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    .line 1081
    invoke-static {v2}, Lcom/xueqiu/android/trade/patternlock/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 1082
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/patternlock/h;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->l:Z

    iget-boolean v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->m:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/trade/patternlock/j;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZB)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 482
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 483
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    .line 485
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 486
    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    .line 487
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    .line 681
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 705
    const/4 v0, 0x0

    goto :goto_0

    .line 3792
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a()V

    .line 3793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3795
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(FF)Lcom/xueqiu/android/trade/patternlock/f;

    move-result-object v2

    .line 3796
    if-eqz v2, :cond_4

    .line 3797
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 3798
    sget-object v3, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    iput-object v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 3799
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->c()V

    .line 3804
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 3805
    iget v3, v2, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    invoke-direct {p0, v3}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v3

    .line 3806
    iget v2, v2, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    invoke-direct {p0, v2}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v2

    .line 3808
    iget v4, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 3809
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 3811
    sub-float v6, v3, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {p0, v6, v7, v3, v2}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate(IIII)V

    .line 3814
    :cond_3
    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    .line 3815
    iput v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .line 3800
    :cond_4
    iget-boolean v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v3, :cond_2

    .line 3801
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 3802
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->d()V

    goto :goto_1

    .line 4778
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 5427
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    if-eqz v0, :cond_5

    .line 5428
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/patternlock/i;->a(Ljava/util/List;)V

    .line 4781
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate()V

    .line 687
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 5711
    :pswitch_2
    iget v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->o:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v7, v0, v1

    .line 5712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 5713
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->A:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5714
    const/4 v2, 0x0

    .line 5715
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    add-int/lit8 v0, v8, 0x1

    if-ge v6, v0, :cond_d

    .line 5716
    if-ge v6, v8, :cond_b

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v3, v0

    .line 5717
    :goto_3
    if-ge v6, v8, :cond_c

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    move v1, v0

    .line 5718
    :goto_4
    invoke-direct {p0, v3, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(FF)Lcom/xueqiu/android/trade/patternlock/f;

    move-result-object v9

    .line 5719
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5720
    if-eqz v9, :cond_7

    const/4 v0, 0x1

    if-ne v4, v0, :cond_7

    .line 5721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 5722
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->c()V

    .line 5725
    :cond_7
    iget v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 5726
    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 5727
    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_9

    .line 5728
    :cond_8
    const/4 v0, 0x1

    move v2, v0

    .line 5731
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v0, :cond_a

    if-lez v4, :cond_a

    .line 5732
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    .line 5733
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/f;

    .line 5734
    iget v4, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    invoke-direct {p0, v4}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v4

    .line 5735
    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v10

    .line 5738
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v7

    .line 5739
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float v5, v3, v7

    .line 5740
    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v7

    .line 5741
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float v4, v1, v7

    .line 5744
    if-eqz v9, :cond_10

    .line 5745
    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->r:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    .line 5746
    iget v10, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->s:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    .line 5747
    iget v11, v9, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    invoke-direct {p0, v11}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v11

    .line 5748
    iget v9, v9, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    invoke-direct {p0, v9}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v9

    .line 5750
    sub-float v12, v11, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5751
    add-float/2addr v1, v11

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 5752
    sub-float v1, v9, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 5753
    add-float v3, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v4, v5

    .line 5757
    :goto_5
    iget-object v5, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->A:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5758
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5757
    invoke-virtual {v5, v0, v1, v4, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 5715
    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_2

    .line 5716
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v3, v0

    goto/16 :goto_3

    .line 5717
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    move v1, v0

    goto/16 :goto_4

    .line 5761
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    .line 5762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    .line 5765
    if-eqz v2, :cond_e

    .line 5766
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 5767
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 5768
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 690
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 692
    :pswitch_3
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    if-eqz v0, :cond_f

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->n:Z

    .line 694
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a()V

    .line 695
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->d()V

    .line 703
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_10
    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_5

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V
    .locals 2

    .prologue
    .line 396
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->k:Lcom/xueqiu/android/trade/patternlock/h;

    .line 397
    sget-object v0, Lcom/xueqiu/android/trade/patternlock/h;->b:Lcom/xueqiu/android/trade/patternlock/h;

    if-ne p1, v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->j:J

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/f;

    .line 1180
    iget v1, v0, Lcom/xueqiu/android/trade/patternlock/f;->b:I

    .line 404
    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a(I)F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->h:F

    .line 2176
    iget v0, v0, Lcom/xueqiu/android/trade/patternlock/f;->a:I

    .line 405
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->b(I)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->i:F

    .line 406
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->e()V

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->invalidate()V

    .line 409
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->m:Z

    .line 350
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->l:Z

    .line 478
    return-void
.end method

.method public setOnPatternListener(Lcom/xueqiu/android/trade/patternlock/i;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/PatternView;->e:Lcom/xueqiu/android/trade/patternlock/i;

    .line 364
    return-void
.end method

.class public Lcom/a/a/i;
.super Landroid/view/SurfaceView;
.source "PDFView.java"


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private A:Lcom/a/a/l;

.field private B:Lcom/a/a/b/c;

.field private C:Lcom/a/a/b/a;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private I:Z

.field private J:Landroid/graphics/RectF;

.field private K:Landroid/graphics/RectF;

.field private L:Z

.field a:Lcom/a/a/e;

.field b:Lcom/a/a/a;

.field c:Lcom/a/a/h;

.field d:I

.field e:I

.field f:I

.field g:F

.field h:F

.field i:F

.field j:I

.field k:Lorg/vudroid/a/a;

.field l:Lcom/a/a/b/b;

.field m:I

.field n:Z

.field private p:[I

.field private q:[I

.field private r:[I

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/graphics/RectF;

.field private y:Z

.field private z:Lcom/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/i;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v1, 0x0

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    iput v1, p0, Lcom/a/a/i;->g:F

    .line 140
    iput v1, p0, Lcom/a/a/i;->h:F

    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/a/a/i;->i:F

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->y:Z

    .line 165
    sget v0, Lcom/a/a/k;->a:I

    iput v0, p0, Lcom/a/a/i;->j:I

    .line 234
    iput v2, p0, Lcom/a/a/i;->m:I

    .line 236
    iput-boolean v2, p0, Lcom/a/a/i;->L:Z

    .line 241
    iput-boolean v2, p0, Lcom/a/a/i;->n:Z

    .line 248
    iput-boolean v2, p0, Lcom/a/a/i;->I:Z

    .line 249
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 250
    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0, p0}, Lcom/a/a/a;-><init>(Lcom/a/a/i;)V

    iput-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/a;

    .line 251
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0}, Lcom/a/a/h;-><init>(Lcom/a/a/i;)V

    iput-object v0, p0, Lcom/a/a/i;->c:Lcom/a/a/h;

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->D:Landroid/graphics/Paint;

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->F:Landroid/graphics/Paint;

    .line 255
    iget-object v0, p0, Lcom/a/a/i;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->E:Landroid/graphics/Paint;

    .line 257
    iget-object v0, p0, Lcom/a/a/i;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v0, p0, Lcom/a/a/i;->E:Landroid/graphics/Paint;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->G:Landroid/graphics/Paint;

    .line 260
    iget-object v0, p0, Lcom/a/a/i;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Lcom/a/a/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/a/a/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/i;->H:Landroid/graphics/Paint;

    .line 264
    iget-object v0, p0, Lcom/a/a/i;->H:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v0, p0, Lcom/a/a/i;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/a/a/i;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    invoke-virtual {p0, v2}, Lcom/a/a/i;->setWillNotDraw(Z)V

    .line 271
    return-void
.end method

.method private a(II)I
    .locals 13

    .prologue
    const/high16 v9, 0x43800000    # 256.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 580
    .line 581
    iget-object v0, p0, Lcom/a/a/i;->q:[I

    if-eqz v0, :cond_4

    .line 582
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->q:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return v7

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/a/a/i;->q:[I

    aget v2, v0, p1

    .line 589
    :goto_1
    if-ltz v2, :cond_0

    iget v0, p0, Lcom/a/a/i;->d:I

    if-ge p1, v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6, v6, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/a/a/e;->a(IILandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    iget v1, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v6, v6, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x1

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/a/a/l;->a(IIFFLandroid/graphics/RectF;ZI)V

    .line 609
    :cond_2
    iget v0, p0, Lcom/a/a/i;->u:F

    div-float v0, v8, v0

    .line 610
    iget v1, p0, Lcom/a/a/i;->v:F

    div-float v1, v8, v1

    .line 611
    mul-float/2addr v1, v9

    iget v3, p0, Lcom/a/a/i;->i:F

    div-float/2addr v1, v3

    .line 612
    mul-float/2addr v0, v9

    iget v3, p0, Lcom/a/a/i;->i:F

    div-float/2addr v0, v3

    .line 613
    div-float v1, v8, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v10, v4

    .line 614
    div-float v0, v8, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 615
    int-to-float v0, v11

    div-float v5, v8, v0

    .line 616
    int-to-float v0, v10

    div-float v6, v8, v0

    .line 623
    iget v0, p0, Lcom/a/a/i;->g:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 624
    iget v0, p0, Lcom/a/a/i;->h:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 627
    iget-boolean v3, p0, Lcom/a/a/i;->n:Z

    if-eqz v3, :cond_3

    .line 628
    int-to-float v3, p1

    iget v4, p0, Lcom/a/a/i;->u:F

    .line 20011
    iget v7, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v4, v7

    .line 628
    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 634
    :goto_2
    iget v3, p0, Lcom/a/a/i;->u:F

    .line 22011
    iget v4, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v3, v4

    .line 634
    div-float/2addr v1, v3

    .line 635
    iget v3, p0, Lcom/a/a/i;->v:F

    .line 23011
    iget v4, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v3, v4

    .line 635
    div-float/2addr v0, v3

    .line 636
    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 637
    int-to-float v3, v11

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 640
    invoke-static {v0, v10}, Lcom/a/a/d/i;->a(II)I

    move-result v0

    .line 641
    invoke-static {v1, v11}, Lcom/a/a/d/i;->a(II)I

    move-result v1

    .line 697
    new-instance v12, Lcom/a/a/n;

    new-instance v3, Lcom/a/a/i$a;

    move-object v4, p0

    move v7, p1

    move v8, v2

    move v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/a/a/i$a;-><init>(Lcom/a/a/i;FFIII)V

    invoke-direct {v12, v3}, Lcom/a/a/n;-><init>(Lcom/a/a/o;)V

    .line 698
    invoke-virtual {v12, v10, v11, v0, v1}, Lcom/a/a/n;->a(IIII)V

    .line 700
    iget v7, v3, Lcom/a/a/i$a;->a:I

    goto/16 :goto_0

    .line 631
    :cond_3
    int-to-float v3, p1

    iget v4, p0, Lcom/a/a/i;->v:F

    .line 21011
    iget v7, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v4, v7

    .line 631
    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_2

    :cond_4
    move v2, p1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/a/a/i;)Lcom/a/a/e;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    return-object v0
.end method

.method private a(F)V
    .locals 0

    .prologue
    .line 965
    iput p1, p0, Lcom/a/a/i;->i:F

    .line 966
    invoke-direct {p0}, Lcom/a/a/i;->f()V

    .line 967
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/a/a/c/a;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 476
    .line 10067
    iget-object v3, p2, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 11063
    iget-object v4, p2, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 482
    iget-boolean v0, p0, Lcom/a/a/i;->n:Z

    if-eqz v0, :cond_1

    .line 12059
    iget v0, p2, Lcom/a/a/c/a;->a:I

    .line 483
    int-to-float v0, v0

    iget v2, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v0, v2

    .line 13011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v2

    move v2, v1

    .line 486
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 488
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 489
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 491
    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v6, v7

    .line 15011
    iget v7, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v6, v7

    .line 492
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v7, v8

    .line 16011
    iget v8, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v7, v8

    .line 493
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v8, v9

    .line 17011
    iget v9, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v8, v9

    .line 494
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v9, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v3, v9

    .line 18011
    iget v9, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v3, v9

    .line 499
    new-instance v9, Landroid/graphics/RectF;

    float-to-int v10, v6

    int-to-float v10, v10

    float-to-int v11, v7

    int-to-float v11, v11

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {v9, v10, v11, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 504
    iget v3, p0, Lcom/a/a/i;->g:F

    add-float/2addr v3, v2

    .line 505
    iget v6, p0, Lcom/a/a/i;->h:F

    add-float/2addr v6, v0

    .line 506
    iget v7, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v3

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_0

    iget v7, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v7

    cmpg-float v3, v3, v1

    if-lez v3, :cond_0

    iget v3, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    .line 507
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-gez v3, :cond_0

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_2

    .line 508
    :cond_0
    neg-float v1, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    :goto_1
    return-void

    .line 13059
    :cond_1
    iget v0, p2, Lcom/a/a/c/a;->a:I

    .line 485
    int-to-float v0, v0

    iget v2, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v2

    .line 14011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 485
    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/a/a/i;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 520
    neg-float v1, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;Lcom/a/a/b/b;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/a/a/i;->y:Z

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-eqz p3, :cond_1

    .line 285
    iput-object p3, p0, Lcom/a/a/i;->p:[I

    .line 286
    iget-object v0, p0, Lcom/a/a/i;->p:[I

    invoke-static {v0}, Lcom/a/a/d/a;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->q:[I

    .line 287
    iget-object v0, p0, Lcom/a/a/i;->p:[I

    invoke-static {v0}, Lcom/a/a/d/a;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->r:[I

    .line 290
    :cond_1
    iput-object p2, p0, Lcom/a/a/i;->l:Lcom/a/a/b/b;

    .line 293
    new-instance v0, Lcom/a/a/g;

    invoke-direct {v0, p1, p0}, Lcom/a/a/g;-><init>(Landroid/net/Uri;Lcom/a/a/i;)V

    iput-object v0, p0, Lcom/a/a/i;->z:Lcom/a/a/g;

    .line 294
    iget-object v0, p0, Lcom/a/a/i;->z:Lcom/a/a/g;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    new-instance v0, Lcom/a/a/l;

    invoke-direct {v0, p0}, Lcom/a/a/l;-><init>(Lcom/a/a/i;)V

    iput-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    .line 297
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method

.method static synthetic a(Lcom/a/a/i;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/a/a/i;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/i;Landroid/net/Uri;Lcom/a/a/b/b;)V
    .locals 1

    .prologue
    .line 66
    .line 50012
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/i;->a(Landroid/net/Uri;Lcom/a/a/b/b;[I)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/a/a/i;Landroid/net/Uri;Lcom/a/a/b/b;[I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/i;->a(Landroid/net/Uri;Lcom/a/a/b/b;[I)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/i;Lcom/a/a/b/a;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/a/a/i;->setOnDrawListener(Lcom/a/a/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/i;Lcom/a/a/b/c;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/a/a/i;->setOnPageChangeListener(Lcom/a/a/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/i;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/a/a/i;->setUserWantsMinimap(Z)V

    return-void
.end method

.method private b(I)F
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 778
    iget-boolean v0, p0, Lcom/a/a/i;->n:Z

    if-eqz v0, :cond_0

    .line 779
    int-to-float v0, p1

    iget v1, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v0, v1

    neg-float v0, v0

    .line 780
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->v:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 785
    :goto_0
    return v0

    .line 783
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v1

    neg-float v0, v0

    .line 784
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 785
    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/i;)Lcom/a/a/l;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/i;)Lcom/a/a/h;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/i;->c:Lcom/a/a/h;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    .line 834
    iget-object v0, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 838
    :cond_0
    iget v0, p0, Lcom/a/a/i;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/i;->I:Z

    goto :goto_0

    .line 842
    :cond_1
    iget v0, p0, Lcom/a/a/i;->g:F

    neg-float v0, v0

    iget v1, p0, Lcom/a/a/i;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v2

    .line 24011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 842
    sub-float/2addr v0, v1

    iget v1, p0, Lcom/a/a/i;->u:F

    .line 25011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 843
    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    .line 844
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    .line 26011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 844
    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    .line 845
    iget v2, p0, Lcom/a/a/i;->h:F

    neg-float v2, v2

    iget v3, p0, Lcom/a/a/i;->v:F

    .line 27011
    iget v4, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v3, v4

    .line 845
    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    .line 846
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/a/a/i;->v:F

    .line 28011
    iget v5, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v4, v5

    .line 846
    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    .line 847
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    iget-object v7, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/a/a/i;->K:Landroid/graphics/RectF;

    .line 849
    iget-object v0, p0, Lcom/a/a/i;->K:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->I:Z

    goto/16 :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 858
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    .line 29011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 858
    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/a/a/i;->w:Landroid/graphics/RectF;

    .line 859
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    .line 30011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 859
    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/a/a/i;->x:Landroid/graphics/RectF;

    .line 860
    return-void
.end method

.method private setDefaultPage(I)V
    .locals 0

    .prologue
    .line 1035
    iput p1, p0, Lcom/a/a/i;->m:I

    .line 1036
    return-void
.end method

.method private setOnDrawListener(Lcom/a/a/b/a;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/a/a/i;->C:Lcom/a/a/b/a;

    .line 354
    return-void
.end method

.method private setOnPageChangeListener(Lcom/a/a/b/c;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/a/a/i;->B:Lcom/a/a/b/c;

    .line 350
    return-void
.end method

.method private setUserWantsMinimap(Z)V
    .locals 0

    .prologue
    .line 1031
    iput-boolean p1, p0, Lcom/a/a/i;->L:Z

    .line 1032
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 359
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    invoke-virtual {v0, v3}, Lcom/a/a/l;->cancel(Z)Z

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->z:Lcom/a/a/g;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/a/a/i;->z:Lcom/a/a/g;

    invoke-virtual {v0, v3}, Lcom/a/a/g;->cancel(Z)Z

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 3129
    iget-object v0, v1, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 4063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 3130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3132
    :cond_2
    iget-object v0, v1, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 5063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 3133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 3135
    :cond_3
    iget-object v0, v1, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 6063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 3136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 3138
    :cond_4
    iget-object v0, v1, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 3139
    iget-object v0, v1, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 3140
    iget-object v0, v1, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 369
    iput-boolean v3, p0, Lcom/a/a/i;->y:Z

    .line 370
    sget v0, Lcom/a/a/k;->a:I

    iput v0, p0, Lcom/a/a/i;->j:I

    .line 371
    return-void
.end method

.method public final a(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 870
    iget-boolean v1, p0, Lcom/a/a/i;->n:Z

    if-eqz v1, :cond_8

    .line 872
    iget v1, p0, Lcom/a/a/i;->u:F

    .line 31011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 872
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    .line 32011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 873
    div-float/2addr v2, v5

    sub-float p1, v1, v2

    .line 883
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/i;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 884
    iget v1, p0, Lcom/a/a/i;->v:F

    .line 35011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 884
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 885
    iput-boolean v6, p0, Lcom/a/a/i;->I:Z

    .line 886
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->t:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v1, v2

    .line 36011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 886
    sub-float p2, v0, v1

    .line 944
    :cond_1
    :goto_1
    iput p1, p0, Lcom/a/a/i;->g:F

    .line 945
    iput p2, p0, Lcom/a/a/i;->h:F

    .line 946
    invoke-direct {p0}, Lcom/a/a/i;->e()V

    .line 947
    invoke-virtual {p0}, Lcom/a/a/i;->invalidate()V

    .line 948
    return-void

    .line 875
    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    move p1, v0

    .line 876
    goto :goto_0

    .line 877
    :cond_3
    iget v1, p0, Lcom/a/a/i;->u:F

    .line 33011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 877
    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    .line 34011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 878
    sub-float p1, v1, v2

    goto :goto_0

    .line 888
    :cond_4
    iput-boolean v7, p0, Lcom/a/a/i;->I:Z

    .line 889
    iget v1, p0, Lcom/a/a/i;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v1, v2

    .line 37011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 889
    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 890
    iget v0, p0, Lcom/a/a/i;->t:I

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v0, v1

    .line 38011
    iget v1, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v1

    .line 890
    neg-float p2, v0

    goto :goto_1

    .line 891
    :cond_5
    iget v0, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v0, v1

    .line 39011
    iget v1, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v1

    .line 891
    add-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v1, v2

    .line 40011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 892
    sub-float p2, v0, v1

    goto :goto_1

    .line 898
    :cond_6
    iget v0, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/i;->b(I)F

    move-result v1

    .line 899
    iget v0, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/a/a/i;->b(I)F

    move-result v0

    .line 900
    cmpg-float v2, p2, v1

    if-gez v2, :cond_7

    move p2, v1

    .line 901
    goto/16 :goto_1

    .line 902
    :cond_7
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    move p2, v0

    .line 903
    goto/16 :goto_1

    .line 908
    :cond_8
    iget v1, p0, Lcom/a/a/i;->v:F

    .line 41011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 908
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    .line 909
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->v:F

    .line 42011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 909
    div-float/2addr v2, v5

    sub-float p2, v1, v2

    .line 919
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/a/a/i;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 920
    iget v1, p0, Lcom/a/a/i;->u:F

    .line 45011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 920
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    .line 921
    iput-boolean v6, p0, Lcom/a/a/i;->I:Z

    .line 922
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->t:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v2

    .line 46011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 922
    sub-float p1, v0, v1

    goto/16 :goto_1

    .line 911
    :cond_a
    cmpl-float v1, p2, v0

    if-lez v1, :cond_b

    move p2, v0

    .line 912
    goto :goto_2

    .line 913
    :cond_b
    iget v1, p0, Lcom/a/a/i;->v:F

    .line 43011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 913
    add-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 914
    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->v:F

    .line 44011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v2, v3

    .line 914
    sub-float p2, v1, v2

    goto :goto_2

    .line 924
    :cond_c
    iput-boolean v7, p0, Lcom/a/a/i;->I:Z

    .line 925
    iget v1, p0, Lcom/a/a/i;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v2

    .line 47011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 925
    add-float/2addr v1, p1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_d

    .line 926
    iget v0, p0, Lcom/a/a/i;->t:I

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v1

    .line 48011
    iget v1, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v1

    .line 926
    neg-float p1, v0

    goto/16 :goto_1

    .line 927
    :cond_d
    iget v0, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v1

    .line 49011
    iget v1, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v1

    .line 927
    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v2

    .line 50011
    iget v2, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, v2

    .line 928
    sub-float p1, v0, v1

    goto/16 :goto_1

    .line 934
    :cond_e
    iget v0, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/i;->b(I)F

    move-result v0

    .line 935
    iget v1, p0, Lcom/a/a/i;->t:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/a/a/i;->b(I)F

    move-result v1

    .line 936
    cmpg-float v2, p1, v0

    if-gez v2, :cond_f

    move p1, v0

    .line 937
    goto/16 :goto_1

    .line 938
    :cond_f
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    move p1, v1

    .line 939
    goto/16 :goto_1
.end method

.method public final a(FLandroid/graphics/PointF;)V
    .locals 5

    .prologue
    .line 978
    iget v0, p0, Lcom/a/a/i;->i:F

    div-float v0, p1, v0

    .line 979
    invoke-direct {p0, p1}, Lcom/a/a/i;->a(F)V

    .line 980
    iget v1, p0, Lcom/a/a/i;->g:F

    mul-float/2addr v1, v0

    .line 981
    iget v2, p0, Lcom/a/a/i;->h:F

    mul-float/2addr v2, v0

    .line 982
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 983
    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    add-float/2addr v0, v2

    .line 984
    invoke-virtual {p0, v1, v0}, Lcom/a/a/i;->a(FF)V

    .line 985
    return-void
.end method

.method final a(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x190

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 310
    sget v1, Lcom/a/a/k;->c:I

    iput v1, p0, Lcom/a/a/i;->j:I

    .line 1754
    if-gtz p1, :cond_4

    move p1, v0

    .line 315
    :cond_0
    :goto_0
    iput p1, p0, Lcom/a/a/i;->s:I

    .line 316
    iput p1, p0, Lcom/a/a/i;->t:I

    .line 317
    iget-object v1, p0, Lcom/a/a/i;->r:[I

    if-eqz v1, :cond_1

    .line 318
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/a/a/i;->r:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/a/a/i;->r:[I

    aget p1, v1, p1

    .line 320
    iput p1, p0, Lcom/a/a/i;->t:I

    .line 2039
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/a/a/i;->a(F)V

    .line 326
    iget-boolean v1, p0, Lcom/a/a/i;->n:Z

    if-eqz v1, :cond_6

    .line 327
    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/a;

    iget v2, p0, Lcom/a/a/i;->h:F

    invoke-direct {p0, p1}, Lcom/a/a/i;->b(I)F

    move-result v3

    .line 2061
    iget-object v4, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 2062
    iget-object v4, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2064
    :cond_2
    new-array v4, v6, [F

    aput v2, v4, v0

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    .line 2065
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2066
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/a/a/c;

    invoke-direct {v2, v1}, Lcom/a/a/c;-><init>(Lcom/a/a/a;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2067
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2068
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    :goto_1
    invoke-virtual {p0}, Lcom/a/a/i;->b()V

    .line 332
    iget-object v0, p0, Lcom/a/a/i;->B:Lcom/a/a/b/c;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/a/a/i;->getPageCount()I

    .line 335
    :cond_3
    return-void

    .line 1757
    :cond_4
    iget-object v1, p0, Lcom/a/a/i;->p:[I

    if-eqz v1, :cond_5

    .line 1758
    iget-object v1, p0, Lcom/a/a/i;->p:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/a/a/i;->p:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 1762
    :cond_5
    iget v1, p0, Lcom/a/a/i;->d:I

    if-lt p1, v1, :cond_0

    .line 1763
    iget v1, p0, Lcom/a/a/i;->d:I

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 329
    :cond_6
    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/a;

    iget v2, p0, Lcom/a/a/i;->g:F

    invoke-direct {p0, p1}, Lcom/a/a/i;->b(I)F

    move-result v3

    .line 3050
    iget-object v4, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    .line 3051
    iget-object v4, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3053
    :cond_7
    new-array v4, v6, [F

    aput v2, v4, v0

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    .line 3054
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3055
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/a/a/b;

    invoke-direct {v2, v1}, Lcom/a/a/b;-><init>(Lcom/a/a/a;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3056
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3057
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 535
    iget v0, p0, Lcom/a/a/i;->u:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/i;->v:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/a/a/i;->A:Lcom/a/a/l;

    .line 18120
    iget-object v0, v0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 541
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 19055
    iget-object v2, v0, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    iget-object v3, v0, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 19056
    iget-object v0, v0, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 544
    iget v0, p0, Lcom/a/a/i;->s:I

    .line 545
    iget-object v2, p0, Lcom/a/a/i;->r:[I

    if-eqz v2, :cond_2

    .line 546
    iget-object v0, p0, Lcom/a/a/i;->r:[I

    iget v2, p0, Lcom/a/a/i;->s:I

    aget v0, v0, v2

    :cond_2
    move v2, v1

    .line 552
    :goto_1
    const/4 v3, 0x1

    if-gt v2, v3, :cond_4

    sget v3, Lcom/a/a/d/c;->a:I

    if-ge v1, v3, :cond_4

    .line 553
    add-int v3, v0, v2

    sget v4, Lcom/a/a/d/c;->a:I

    sub-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Lcom/a/a/i;->a(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 554
    if-eqz v2, :cond_3

    sget v3, Lcom/a/a/d/c;->a:I

    if-ge v1, v3, :cond_3

    .line 555
    sub-int v3, v0, v2

    sget v4, Lcom/a/a/d/c;->a:I

    sub-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Lcom/a/a/i;->a(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 552
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/i;->invalidate()V

    goto :goto_0
.end method

.method final c()V
    .locals 8

    .prologue
    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 794
    iget v0, p0, Lcom/a/a/i;->j:I

    sget v1, Lcom/a/a/k;->a:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/a/a/i;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 799
    iget v1, p0, Lcom/a/a/i;->e:I

    int-to-float v1, v1

    iget v3, p0, Lcom/a/a/i;->f:I

    int-to-float v3, v3

    .line 800
    div-float v3, v1, v3

    .line 802
    div-float v1, v2, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 803
    cmpl-float v4, v1, v0

    if-lez v4, :cond_2

    .line 805
    mul-float v1, v0, v3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 808
    :goto_1
    iput v1, p0, Lcom/a/a/i;->u:F

    .line 809
    iput v0, p0, Lcom/a/a/i;->v:F

    .line 811
    invoke-direct {p0}, Lcom/a/a/i;->f()V

    .line 23820
    iget v0, p0, Lcom/a/a/i;->u:F

    div-float v0, v7, v0

    .line 23821
    iget v1, p0, Lcom/a/a/i;->v:F

    div-float v1, v7, v1

    .line 23822
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 23823
    iget v1, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v1, v0

    .line 23824
    iget v2, p0, Lcom/a/a/i;->v:F

    mul-float/2addr v0, v2

    .line 23825
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    sub-float v1, v3, v1

    invoke-virtual {p0}, Lcom/a/a/i;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    add-float/2addr v0, v6

    invoke-direct {v2, v1, v6, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    .line 23826
    invoke-direct {p0}, Lcom/a/a/i;->e()V

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 1023
    iget v0, p0, Lcom/a/a/i;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/a/a/i;->s:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/a/a/i;->g:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/a/a/i;->h:F

    return v0
.end method

.method getDecodeService()Lorg/vudroid/a/a;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/a/a/i;->k:Lorg/vudroid/a/a;

    return-object v0
.end method

.method public getOptimalPageWidth()F
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/a/a/i;->u:F

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/a/a/i;->p:[I

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/a/a/i;->p:[I

    array-length v0, v0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/i;->d:I

    goto :goto_0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/a/a/i;->i:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/a/a/i;->a()V

    .line 376
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 421
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 423
    iget v0, p0, Lcom/a/a/i;->j:I

    sget v1, Lcom/a/a/k;->c:I

    if-eq v0, v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget v1, p0, Lcom/a/a/i;->g:F

    .line 429
    iget v2, p0, Lcom/a/a/i;->h:F

    .line 430
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 433
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 6125
    iget-object v0, v0, Lcom/a/a/e;->c:Ljava/util/Vector;

    .line 433
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/a/a/i;->a(Landroid/graphics/Canvas;Lcom/a/a/c/a;)V

    goto :goto_1

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 7119
    new-instance v3, Ljava/util/Vector;

    iget-object v4, v0, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 7120
    iget-object v0, v0, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 438
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 439
    invoke-direct {p0, p1, v0}, Lcom/a/a/i;->a(Landroid/graphics/Canvas;Lcom/a/a/c/a;)V

    goto :goto_2

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/a/a/i;->C:Lcom/a/a/b/a;

    if-eqz v0, :cond_4

    .line 444
    iget v0, p0, Lcom/a/a/i;->t:I

    int-to-float v0, v0

    iget v3, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v3

    .line 8011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v3

    .line 444
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 451
    iget v0, p0, Lcom/a/a/i;->t:I

    int-to-float v0, v0

    iget v3, p0, Lcom/a/a/i;->u:F

    mul-float/2addr v0, v3

    .line 9011
    iget v3, p0, Lcom/a/a/i;->i:F

    mul-float/2addr v0, v3

    .line 451
    neg-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 455
    :cond_4
    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    iget-object v0, p0, Lcom/a/a/i;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/a/a/i;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lcom/a/a/i;->x:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/a/a/i;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 462
    iget-boolean v0, p0, Lcom/a/a/i;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/i;->I:Z

    if-eqz v0, :cond_0

    .line 9525
    iget-object v0, p0, Lcom/a/a/i;->J:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/a/a/i;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9526
    iget-object v0, p0, Lcom/a/a/i;->K:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/a/a/i;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/a;

    .line 6085
    iget-object v1, v0, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 6086
    iget-object v1, v0, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6087
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/i;->c()V

    .line 382
    invoke-virtual {p0}, Lcom/a/a/i;->b()V

    .line 383
    iget-boolean v0, p0, Lcom/a/a/i;->n:Z

    if-eqz v0, :cond_1

    .line 384
    iget v0, p0, Lcom/a/a/i;->g:F

    iget v1, p0, Lcom/a/a/i;->t:I

    invoke-direct {p0, v1}, Lcom/a/a/i;->b(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/i;->a(FF)V

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v0, p0, Lcom/a/a/i;->t:I

    invoke-direct {p0, v0}, Lcom/a/a/i;->b(I)F

    move-result v0

    iget v1, p0, Lcom/a/a/i;->h:F

    invoke-virtual {p0, v0, v1}, Lcom/a/a/i;->a(FF)V

    goto :goto_0
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    .prologue
    .line 1155
    iput-boolean p1, p0, Lcom/a/a/i;->n:Z

    .line 1156
    return-void
.end method

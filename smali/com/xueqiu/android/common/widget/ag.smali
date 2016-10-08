.class public final Lcom/xueqiu/android/common/widget/ag;
.super Landroid/view/View;
.source "SNBTableView.java"


# instance fields
.field private a:F

.field private b:F

.field private c:[Ljava/lang/String;

.field private d:[[Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[F

.field private n:[F

.field private o:[Ljava/lang/String;

.field private p:F

.field private q:Landroid/graphics/Canvas;

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x7f0d010c

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->a:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->b:F

    .line 25
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->c:[Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->e:I

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->f:I

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->g:I

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->h:I

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->i:I

    .line 32
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->j:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->l:I

    .line 35
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    .line 36
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->n:[F

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->o:[Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->p:F

    .line 39
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private a(I)Landroid/text/Layout$Alignment;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->o:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 360
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->o:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 355
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 357
    :cond_1
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 360
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/text/Layout$Alignment;IFFFFZ)V
    .locals 8

    .prologue
    .line 291
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 292
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 293
    invoke-virtual {v2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    iget v1, p0, Lcom/xueqiu/android/common/widget/ag;->l:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    sub-float v1, p6, v0

    .line 300
    if-eqz p8, :cond_0

    .line 301
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 302
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 303
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 311
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    float-to-int v3, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 312
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 314
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 315
    sub-float v1, p7, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 318
    add-float/2addr v1, p5

    .line 320
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    iget v3, p0, Lcom/xueqiu/android/common/widget/ag;->l:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr p4, v2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    invoke-virtual {v2, p4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 327
    return-void
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    return-object v0
.end method

.method private getTableBodyHeight()F
    .locals 15

    .prologue
    const/high16 v14, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    array-length v12, v0

    .line 161
    new-array v0, v12, [F

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->n:[F

    .line 164
    if-nez v12, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    move v11, v7

    move v10, v6

    .line 168
    :goto_1
    if-ge v11, v12, :cond_3

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    aget-object v13, v0, v11

    .line 4185
    iget v0, p0, Lcom/xueqiu/android/common/widget/ag;->a:F

    move v8, v7

    move v9, v0

    .line 4187
    :goto_2
    array-length v0, v13

    if-ge v8, v0, :cond_2

    .line 4188
    aget-object v1, v13, v8

    .line 4189
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    aget v0, v0, v8

    iget v2, p0, Lcom/xueqiu/android/common/widget/ag;->p:F

    mul-float/2addr v0, v2

    .line 4190
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    iget v3, p0, Lcom/xueqiu/android/common/widget/ag;->l:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float v3, v0, v2

    .line 4191
    invoke-direct {p0, v8}, Lcom/xueqiu/android/common/widget/ag;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v4

    .line 4203
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 4204
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4205
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v0, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4207
    new-instance v0, Landroid/text/StaticLayout;

    float-to-int v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4208
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 4210
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/common/widget/ag;->a:F

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    .line 4212
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 4213
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v1, v0

    .line 4194
    :cond_1
    cmpl-float v0, v1, v9

    if-lez v0, :cond_4

    .line 4187
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->n:[F

    aput v9, v0, v11

    .line 172
    add-float/2addr v10, v9

    .line 168
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_3
    move v0, v10

    .line 175
    goto :goto_0

    :cond_4
    move v1, v9

    goto :goto_3
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/ag;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 119
    const/4 v2, 0x0

    new-array v2, v2, [[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    if-nez v2, :cond_2

    .line 2226
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->c:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1272
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/ag;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 1273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/common/widget/ag;->e:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/common/widget/ag;->b:F

    invoke-static {v6, v8}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1279
    const/4 v6, 0x0

    .line 1280
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/common/widget/ag;->k:I

    if-ge v11, v2, :cond_3

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->c:[Ljava/lang/String;

    aget-object v3, v2, v11

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    aget v2, v2, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    mul-float v8, v2, v4

    .line 1284
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/xueqiu/android/common/widget/ag;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/common/widget/ag;->h:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/xueqiu/android/common/widget/ag;->b:F

    invoke-static {v2, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v9

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/xueqiu/android/common/widget/ag;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;IFFFFZ)V

    .line 1285
    add-float/2addr v6, v8

    .line 1280
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    .line 2220
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    array-length v15, v2

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xueqiu/android/common/widget/ag;->b:F

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    .line 2224
    if-nez v15, :cond_4

    .line 2240
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/ag;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 2241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/common/widget/ag;->f:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v6, v8}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2244
    const-string v6, "\u6682\u65e0\u6570\u636e"

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/common/widget/ag;->j:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->r:Landroid/content/Context;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lcom/xueqiu/android/common/widget/ag;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;IFFFFZ)V

    goto/16 :goto_0

    .line 2229
    :cond_4
    const/4 v2, 0x0

    move v14, v2

    :goto_2
    if-ge v14, v15, :cond_1

    .line 2230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    aget-object v16, v2, v14

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->n:[F

    aget v12, v2, v14

    .line 2260
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/ag;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 2261
    rem-int/lit8 v2, v14, 0x2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/common/widget/ag;->g:I

    :goto_3
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/ag;->q:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    add-float/2addr v5, v6

    add-float v6, v4, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3248
    move-object/from16 v0, v16

    array-length v3, v0

    .line 3249
    const/4 v9, 0x0

    .line 3251
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_6

    .line 3252
    aget-object v6, v16, v2

    .line 3253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    aget v5, v5, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xueqiu/android/common/widget/ag;->p:F

    mul-float v11, v5, v7

    .line 3254
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/common/widget/ag;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/common/widget/ag;->i:I

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v13}, Lcom/xueqiu/android/common/widget/ag;->a(Ljava/lang/String;Landroid/text/Layout$Alignment;IFFFFZ)V

    .line 3255
    add-float/2addr v9, v11

    .line 3251
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2261
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/common/widget/ag;->f:I

    goto :goto_3

    .line 2235
    :cond_6
    add-float/2addr v4, v12

    .line 2229
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_2
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 139
    int-to-float v0, v1

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->p:F

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->c:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 141
    :goto_1
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/ag;->getTableBodyHeight()F

    move-result v2

    .line 142
    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/widget/ag;->setMeasuredDimension(II)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/xueqiu/android/common/widget/ag;->b:F

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    goto :goto_1
.end method

.method public final setBodyTextColor(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->i:I

    .line 75
    return-void
.end method

.method public final setColumnCount(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    .line 83
    return-void
.end method

.method public final setColumnPadding(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->l:I

    .line 110
    return-void
.end method

.method public final setColumnsAlign([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ag;->o:[Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final setColumnsWidth([I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 86
    array-length v0, p1

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    .line 87
    iget v0, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    move v0, v1

    move v2, v1

    .line 90
    :goto_0
    iget v3, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    if-ge v0, v3, :cond_0

    .line 91
    aget v3, p1, v0

    add-int/2addr v2, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/common/widget/ag;->k:I

    if-ge v1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ag;->m:[F

    aget v3, p1, v1

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    aput v3, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method public final setData([[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ag;->d:[[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final setEvenRowBgColor(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->g:I

    .line 71
    return-void
.end method

.method public final setHeadBgColor(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->e:I

    .line 63
    return-void
.end method

.method public final setHeadHeight(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->b:F

    .line 48
    return-void
.end method

.method public final setHeadNames([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/ag;->b:F

    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ag;->c:[Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public final setHeadTextColor(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->h:I

    .line 79
    return-void
.end method

.method public final setOddRowBgColor(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->f:I

    .line 67
    return-void
.end method

.method public final setRowHeight(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/xueqiu/android/common/widget/ag;->a:F

    .line 44
    return-void
.end method

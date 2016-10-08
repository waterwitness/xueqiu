.class public final Lme/grantland/widget/a;
.super Ljava/lang/Object;
.source "AutofitHelper.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:F

.field c:F

.field d:F

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/text/TextPaint;

.field private h:F

.field private i:I

.field private j:Z

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lme/grantland/widget/c;

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/c;-><init>(Lme/grantland/widget/a;B)V

    iput-object v0, p0, Lme/grantland/widget/a;->k:Landroid/text/TextWatcher;

    .line 242
    new-instance v0, Lme/grantland/widget/b;

    invoke-direct {v0, p0, v1}, Lme/grantland/widget/b;-><init>(Lme/grantland/widget/a;B)V

    iput-object v0, p0, Lme/grantland/widget/a;->l:Landroid/view/View$OnLayoutChangeListener;

    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 249
    iput-object p1, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    .line 250
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lme/grantland/widget/a;->g:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lme/grantland/widget/a;->b(F)V

    .line 3208
    const/4 v0, -0x1

    .line 3210
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    .line 3211
    if-eqz v2, :cond_1

    instance-of v2, v2, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v2, :cond_1

    .line 3212
    const/4 v0, 0x1

    .line 253
    :cond_0
    :goto_0
    iput v0, p0, Lme/grantland/widget/a;->i:I

    .line 254
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lme/grantland/widget/a;->b:F

    .line 255
    iget v0, p0, Lme/grantland/widget/a;->h:F

    iput v0, p0, Lme/grantland/widget/a;->c:F

    .line 256
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lme/grantland/widget/a;->d:F

    .line 257
    return-void

    .line 3214
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 3216
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F
    .locals 11

    .prologue
    .line 144
    move-object v3, p1

    move-object v2, p0

    :goto_0
    add-float v1, p4, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v9, v1, v4

    .line 145
    const/4 v4, 0x1

    .line 146
    const/4 v1, 0x0

    .line 148
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-static {v5, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 151
    const/4 v5, 0x1

    if-eq p3, v5, :cond_9

    .line 152
    new-instance v1, Landroid/text/StaticLayout;

    float-to-int v4, p2

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 154
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    move-object v5, v1

    move v6, v4

    .line 160
    :goto_1
    if-le v6, p3, :cond_2

    .line 162
    sub-float v1, p5, p4

    cmpg-float v1, v1, p6

    if-gez v1, :cond_1

    .line 193
    :cond_0
    :goto_2
    return p4

    :cond_1
    move/from16 p5, v9

    .line 165
    goto :goto_0

    .line 168
    :cond_2
    if-ge v6, p3, :cond_3

    move p4, v9

    .line 169
    goto :goto_0

    .line 173
    :cond_3
    const/4 v4, 0x0

    .line 174
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 175
    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 184
    :cond_4
    sub-float v4, p5, p4

    cmpg-float v4, v4, p6

    if-ltz v4, :cond_0

    .line 186
    cmpl-float v4, v1, p2

    if-lez v4, :cond_7

    move/from16 p5, v9

    .line 187
    goto :goto_0

    .line 177
    :cond_5
    const/4 v1, 0x0

    move v10, v1

    move v1, v4

    move v4, v10

    :goto_3
    if-ge v4, v6, :cond_4

    .line 178
    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    cmpl-float v7, v7, v1

    if-lez v7, :cond_6

    .line 179
    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    .line 177
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 189
    :cond_7
    cmpg-float v1, v1, p2

    if-gez v1, :cond_8

    move p4, v9

    .line 190
    goto :goto_0

    :cond_8
    move p4, v9

    .line 193
    goto :goto_2

    :cond_9
    move-object v5, v1

    move v6, v4

    goto :goto_1
.end method

.method public static a(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/a;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 62
    new-instance v1, Lme/grantland/widget/a;

    invoke-direct {v1, p0}, Lme/grantland/widget/a;-><init>(Landroid/widget/TextView;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1309
    iget v3, v1, Lme/grantland/widget/a;->b:F

    .line 66
    float-to-int v3, v3

    .line 2287
    iget v4, v1, Lme/grantland/widget/a;->d:F

    .line 69
    sget-object v5, Lme/grantland/widget/e;->AutofitTextView:[I

    invoke-virtual {v2, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 74
    sget v5, Lme/grantland/widget/e;->AutofitTextView_sizeToFit:I

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 75
    sget v5, Lme/grantland/widget/e;->AutofitTextView_minTextSize:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 77
    sget v5, Lme/grantland/widget/e;->AutofitTextView_precision:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    int-to-float v2, v3

    invoke-virtual {v1, v6, v2}, Lme/grantland/widget/a;->a(IF)Lme/grantland/widget/a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lme/grantland/widget/a;->a(F)Lme/grantland/widget/a;

    .line 83
    :cond_0
    invoke-virtual {v1, v0}, Lme/grantland/widget/a;->a(Z)Lme/grantland/widget/a;

    .line 85
    return-object v1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lme/grantland/widget/a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lme/grantland/widget/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(F)Lme/grantland/widget/a;
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lme/grantland/widget/a;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 298
    iput p1, p0, Lme/grantland/widget/a;->d:F

    .line 300
    invoke-virtual {p0}, Lme/grantland/widget/a;->a()V

    .line 302
    :cond_0
    return-object p0
.end method

.method public final a(I)Lme/grantland/widget/a;
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lme/grantland/widget/a;->i:I

    if-eq v0, p1, :cond_0

    .line 413
    iput p1, p0, Lme/grantland/widget/a;->i:I

    .line 415
    invoke-virtual {p0}, Lme/grantland/widget/a;->a()V

    .line 417
    :cond_0
    return-object p0
.end method

.method public final a(IF)Lme/grantland/widget/a;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 337
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 3346
    iget v1, p0, Lme/grantland/widget/a;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 3347
    iput v0, p0, Lme/grantland/widget/a;->b:F

    .line 3349
    invoke-virtual {p0}, Lme/grantland/widget/a;->a()V

    .line 342
    :cond_1
    return-object p0
.end method

.method public final a(Z)Lme/grantland/widget/a;
    .locals 3

    .prologue
    .line 431
    iget-boolean v0, p0, Lme/grantland/widget/a;->j:Z

    if-eq v0, p1, :cond_0

    .line 432
    iput-boolean p1, p0, Lme/grantland/widget/a;->j:Z

    .line 434
    if-eqz p1, :cond_1

    .line 435
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/a;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/a;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 438
    invoke-virtual {p0}, Lme/grantland/widget/a;->a()V

    .line 446
    :cond_0
    :goto_0
    return-object p0

    .line 440
    :cond_1
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/a;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lme/grantland/widget/a;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 443
    iget-object v0, p0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lme/grantland/widget/a;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method final a()V
    .locals 17

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v12

    .line 498
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lme/grantland/widget/a;->e:Z

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/grantland/widget/a;->g:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v10, v0, Lme/grantland/widget/a;->b:F

    move-object/from16 v0, p0

    iget v11, v0, Lme/grantland/widget/a;->c:F

    move-object/from16 v0, p0

    iget v14, v0, Lme/grantland/widget/a;->i:I

    move-object/from16 v0, p0

    iget v15, v0, Lme/grantland/widget/a;->d:F

    .line 4093
    if-lez v14, :cond_0

    const v1, 0x7fffffff

    if-ne v14, v1, :cond_2

    .line 500
    :cond_0
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lme/grantland/widget/a;->e:Z

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/grantland/widget/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 503
    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1

    .line 504
    invoke-direct/range {p0 .. p0}, Lme/grantland/widget/a;->b()V

    .line 506
    :cond_1
    return-void

    .line 4098
    :cond_2
    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int v16, v1, v2

    .line 4099
    if-lez v16, :cond_0

    .line 4103
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4104
    invoke-virtual {v13}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 4105
    if-eqz v1, :cond_3

    .line 4106
    invoke-interface {v1, v2, v13}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4109
    :cond_3
    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 4117
    if-eqz v4, :cond_4

    .line 4118
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4120
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 4122
    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 4123
    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4125
    const/4 v1, 0x1

    if-ne v14, v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    move/from16 v0, v16

    int-to-float v4, v0

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_6

    :cond_5
    move/from16 v0, v16

    int-to-float v4, v0

    .line 4200
    const/4 v1, 0x0

    invoke-static {v1, v11, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4202
    new-instance v1, Landroid/text/StaticLayout;

    float-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4204
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 4125
    if-le v1, v14, :cond_8

    .line 4127
    :cond_6
    move/from16 v0, v16

    int-to-float v4, v0

    const/4 v6, 0x0

    move v5, v14

    move v7, v11

    move v8, v15

    invoke-static/range {v2 .. v9}, Lme/grantland/widget/a;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 4131
    :goto_1
    cmpg-float v2, v1, v10

    if-gez v2, :cond_7

    move v1, v10

    .line 4135
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_8
    move v1, v11

    goto :goto_1
.end method

.method final b(F)V
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lme/grantland/widget/a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 490
    iput p1, p0, Lme/grantland/widget/a;->h:F

    .line 492
    :cond_0
    return-void
.end method

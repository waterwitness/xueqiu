.class public final Lcom/xueqiu/android/stock/c/g;
.super Lcom/xueqiu/android/stock/a/ac;
.source "IndustryIndexFragment.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/e;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/e;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    .line 306
    invoke-direct {p0, p2}, Lcom/xueqiu/android/stock/a/ac;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/g;->c:I

    .line 311
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/g;->d:I

    .line 312
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 326
    .line 1036
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ac;->b:Landroid/content/Context;

    .line 326
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 328
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 329
    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 331
    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 342
    const-string v1, "--"

    .line 343
    if-ne p1, v0, :cond_1

    .line 344
    if-ne p2, v0, :cond_0

    .line 345
    const-string v0, "\u6392\u540d"

    .line 367
    :goto_0
    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->l(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    goto :goto_0

    .line 350
    :cond_1
    if-ne p2, v0, :cond_2

    .line 351
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->m(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, p2

    .line 354
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 355
    if-lez p2, :cond_3

    .line 356
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_4

    .line 357
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_4

    .line 361
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 418
    if-ne p2, v4, :cond_0

    if-ltz p3, :cond_0

    .line 419
    new-instance v0, Lcom/xueqiu/android/stock/c/g$1;

    invoke-direct {v0, p0, p3}, Lcom/xueqiu/android/stock/c/g$1;-><init>(Lcom/xueqiu/android/stock/c/g;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_0
    if-ltz p2, :cond_1

    if-ne p3, v4, :cond_1

    .line 441
    new-instance v0, Lcom/xueqiu/android/stock/c/g$2;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/stock/c/g$2;-><init>(Lcom/xueqiu/android/stock/c/g;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :cond_1
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 461
    if-ltz p3, :cond_2

    .line 462
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 466
    :cond_2
    if-ne p2, v4, :cond_6

    .line 467
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 469
    if-ne p3, v4, :cond_4

    .line 470
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 471
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 501
    :cond_3
    :goto_0
    rem-int/lit8 v0, p2, 0x2

    if-ne v0, v5, :cond_7

    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 506
    :goto_1
    return-void

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020077

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->m(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    .line 479
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->k(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "order_desc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020071

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 486
    :goto_2
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 483
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007c

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 490
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 491
    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/e;->o(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 495
    if-ne p3, v4, :cond_3

    .line 496
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 504
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->l(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 510
    if-gez p1, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 373
    if-ne p1, v0, :cond_1

    .line 374
    if-ne p2, v0, :cond_0

    .line 375
    const v0, 0x7f030124

    .line 386
    :goto_0
    return v0

    .line 377
    :cond_0
    const v0, 0x7f030125

    goto :goto_0

    .line 380
    :cond_1
    if-ne p2, v0, :cond_2

    .line 381
    const v0, 0x7f030123

    goto :goto_0

    .line 383
    :cond_2
    const v0, 0x7f030126

    goto :goto_0
.end method

.method public final b(Landroid/view/View;II)V
    .locals 5

    .prologue
    const v4, 0x1020014

    const/4 v0, -0x1

    .line 391
    if-ne p2, v0, :cond_2

    .line 392
    if-eq p3, v0, :cond_1

    .line 410
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/xueqiu/android/stock/c/g;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    if-ne p3, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 398
    const-string v1, "symbol"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 399
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->n(Lcom/xueqiu/android/stock/c/e;)[I

    move-result-object v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->o(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->p(Lcom/xueqiu/android/stock/c/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 405
    :goto_2
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->n(Lcom/xueqiu/android/stock/c/e;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/xueqiu/android/stock/c/g;->d:I

    return v0
.end method

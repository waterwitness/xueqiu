.class public final Lcom/xueqiu/android/base/util/ai;
.super Ljava/lang/Object;
.source "SNBHtmlUtil.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 124
    new-array v0, v3, [I

    const v2, 0x7f010124

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 126
    invoke-static {p0, p1, v3}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 2375
    if-nez v0, :cond_0

    .line 2376
    const-string v0, ""

    .line 128
    :goto_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/xueqiu/android/base/util/ai$2;

    invoke-direct {v1, p1, p2}, Lcom/xueqiu/android/base/util/ai$2;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 190
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/community/widget/c;

    invoke-direct {v3}, Lcom/xueqiu/android/community/widget/c;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {v1, p1}, Lcom/xueqiu/android/base/util/ai;->a(Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/ai;->a(Landroid/text/Spannable;I)V

    .line 194
    return-object v1

    .line 2379
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2380
    const-string v4, "<p>"

    .line 2381
    const-string v5, "</p>"

    move v0, v1

    .line 2382
    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 2383
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2384
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 2385
    const-string v8, "<androidP>"

    invoke-virtual {v3, v6, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    add-int/lit8 v0, v0, 0x1

    .line 2387
    goto :goto_1

    .line 2389
    :cond_1
    :goto_2
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 2390
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2391
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 2392
    const-string v6, "<androidP>"

    invoke-virtual {v3, v0, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    add-int/lit8 v1, v1, 0x1

    .line 2394
    goto :goto_2

    .line 2396
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<androidP>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2397
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v4, ""

    invoke-virtual {v3, v0, v1, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010124

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 60
    invoke-static {p0, p1, p2, v0, v2}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;ZIZ)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/content/Context;ZIZ)Landroid/text/Spanned;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 69
    .line 1512
    if-nez p0, :cond_0

    .line 1513
    const-string v0, ""

    .line 2287
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Lcom/xueqiu/android/base/util/ai$1;

    invoke-direct {v2, p1}, Lcom/xueqiu/android/base/util/ai$1;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 101
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    if-eqz p2, :cond_7

    .line 104
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 105
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    .line 106
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 107
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 108
    invoke-virtual {v2, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 109
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v4, v5, 0x1

    const/16 v7, 0x12

    invoke-virtual {v2, v6, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1516
    :cond_0
    const-string v3, " <img src=\"http://js.xueqiu.com/images/face/emoji_link_40.png\" title=\"[\u7f51\u9875\u94fe\u63a5]\" alt=\"[\u7f51\u9875\u94fe\u63a5]\" height=\"24\" />"

    .line 1517
    const-string v4, "class=\"status-link\""

    .line 1519
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1521
    :cond_1
    :goto_2
    const-string v2, "<a"

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 1522
    const-string v2, "<a"

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1523
    const-string v6, ">"

    const-string v7, "<a"

    invoke-virtual {v5, v7, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 1524
    const-string v7, "</a>"

    const-string v8, "<a"

    invoke-virtual {v5, v8, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v7, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1526
    if-eq v7, v9, :cond_6

    .line 1530
    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1531
    add-int/lit8 v0, v7, 0x4

    .line 1532
    goto :goto_2

    .line 1535
    :cond_2
    const-string v0, "<a"

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v5, v0, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1536
    if-eq v0, v9, :cond_3

    if-ge v0, v7, :cond_3

    move v2, v0

    .line 1540
    :cond_3
    const-string v0, "/>"

    invoke-virtual {v5, v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1541
    if-eq v0, v9, :cond_4

    if-lt v0, v7, :cond_1

    .line 1545
    :cond_4
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v5, v0, v7}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1547
    const-string v6, "\u7f51\u9875\u94fe\u63a5"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1548
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1549
    add-int/lit8 v0, v7, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    .line 1551
    :cond_5
    add-int/lit8 v0, v7, 0x4

    .line 1553
    goto :goto_2

    .line 1554
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :cond_7
    if-eqz p4, :cond_8

    .line 116
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ai;->a(Landroid/text/Spannable;)V

    .line 120
    :goto_3
    return-object v2

    .line 118
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/ai;->a(Landroid/text/Spannable;I)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    const-string v0, ""

    .line 283
    :goto_0
    return-object v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    :goto_1
    const-string v1, "<img"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 257
    const-string v1, "<img"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 258
    const-string v1, ">"

    const-string v4, "<img"

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 260
    const/4 v1, -0x1

    if-eq v4, v1, :cond_2

    .line 264
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 265
    const-string v6, "alt=\""

    .line 266
    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 267
    const-string v1, "[\u56fe\u7247]"

    .line 269
    if-lez v7, :cond_1

    if-ge v7, v4, :cond_1

    .line 270
    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 271
    const-string v7, "\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 272
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {v2, v1, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v3, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v3, v1

    sub-int v1, v4, v1

    .line 278
    if-ge v0, v1, :cond_2

    move v0, v1

    .line 282
    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/text/Spannable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 570
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 571
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/Spannable;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 558
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 559
    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 560
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 561
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 562
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 563
    new-instance v7, Lcom/xueqiu/android/base/util/ak;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, p1}, Lcom/xueqiu/android/base/util/ak;-><init>(Ljava/lang/String;I)V

    .line 564
    invoke-interface {p0, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 472
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ImageSpan;

    invoke-virtual {p0, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 473
    const v1, 0x7f070155

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 475
    array-length v6, v0

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 477
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 478
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 480
    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 481
    const/16 v9, 0x36

    if-ge v2, v9, :cond_0

    if-ltz v2, :cond_0

    .line 483
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 484
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v9, 0x1

    invoke-direct {v2, v1, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v1, 0x12

    invoke-virtual {p0, v2, v7, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 475
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 490
    :cond_0
    new-instance v9, Lcom/xueqiu/android/base/util/ai$3;

    invoke-direct {v9, v1, p1}, Lcom/xueqiu/android/base/util/ai$3;-><init>(Landroid/text/style/ImageSpan;Landroid/content/Context;)V

    .line 497
    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, v7, v8, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 498
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 500
    array-length v10, v1

    move v2, v3

    :goto_2
    if-ge v2, v10, :cond_1

    aget-object v11, v1, v2

    .line 501
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 505
    :cond_1
    const/16 v1, 0x21

    invoke-virtual {p0, v9, v7, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 507
    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;ZIZ)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 414
    if-nez p0, :cond_0

    .line 415
    const-string v0, ""

    .line 441
    :goto_0
    return-object v0

    .line 418
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 419
    const-string v4, "<div class=\"img_desc\">"

    .line 420
    const-string v5, "</div>"

    move v0, v1

    .line 421
    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 422
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 423
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 424
    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 425
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    .line 426
    invoke-virtual {v3, v2, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    add-int/lit8 v7, v6, -0x5

    if-ltz v7, :cond_3

    .line 429
    const-string v7, "<br/>"

    add-int/lit8 v8, v6, -0x5

    invoke-virtual {v3, v8, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "<br>"

    add-int/lit8 v8, v6, -0x4

    .line 430
    invoke-virtual {v3, v8, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 431
    :cond_1
    const-string v7, "<gray><size><center>%s<br/></center></size></gray>"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 438
    :goto_2
    invoke-virtual {v3, v6, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 433
    :cond_2
    const-string v7, "<br/><gray><size><center>%s<br/></center></size></gray>"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 436
    :cond_3
    const-string v7, "<br/><gray><size><center>%s<br/></center></size></gray>"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 441
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/CharSequence;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 291
    if-nez p0, :cond_0

    .line 292
    const-string v0, ""

    .line 370
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 295
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    :goto_1
    const-string v1, "<img"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_9

    .line 298
    const-string v1, "<img"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 299
    const-string v1, ">"

    const-string v4, "<img"

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 301
    if-eq v1, v12, :cond_9

    .line 305
    const-string v4, "src=\""

    .line 306
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 307
    const-string v6, "\""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 309
    if-eq v5, v12, :cond_1

    if-eq v6, v12, :cond_1

    if-gt v5, v1, :cond_1

    if-le v6, v1, :cond_2

    .line 311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2, v7, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 317
    const-string v8, "alt=\""

    .line 318
    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 319
    if-lez v9, :cond_6

    if-ge v9, v1, :cond_6

    .line 320
    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 321
    const-string v10, "\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 322
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v2, v8, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 324
    const v9, 0x7f070154

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 331
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "[\u7f51\u9875\u94fe\u63a5]"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 332
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3, v6, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 365
    :cond_4
    :goto_2
    if-ge v0, v1, :cond_9

    move v0, v1

    .line 369
    goto/16 :goto_1

    .line 335
    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 338
    goto :goto_2

    .line 339
    :cond_6
    if-nez p2, :cond_7

    .line 340
    add-int/lit8 v1, v1, 0x1

    const-string v4, "&nbsp;"

    invoke-virtual {v2, v3, v1, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    add-int/lit8 v1, v3, 0x6

    .line 345
    :cond_7
    const-string v4, "<br>"

    .line 346
    const-string v5, "<br/>"

    .line 347
    const-string v6, "<p>"

    .line 348
    const-string v7, "</p>"

    .line 349
    const-string v8, "</h4>"

    .line 350
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v3, v9

    .line 351
    if-lez v3, :cond_8

    if-gez v9, :cond_8

    .line 352
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 353
    :cond_8
    if-ltz v9, :cond_4

    .line 355
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v2, v9, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 356
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v2, v9, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 357
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 358
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 359
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 360
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 370
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

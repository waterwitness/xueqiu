.class public Lcom/xueqiu/android/common/widget/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/widget/c;

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b:Z

    .line 47
    iput v1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    .line 50
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->f:F

    .line 56
    iput v1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->g:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->h:Z

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    .line 75
    return-void
.end method

.method private a(II)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextSize()F

    .line 244
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    iget v2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v8, v0

    .line 1306
    :goto_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v9}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1308
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1310
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->g:F

    const/4 v7, 0x1

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1311
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 250
    if-le v0, p2, :cond_3

    iget v2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    cmpl-float v2, v8, v2

    if-lez v2, :cond_3

    .line 251
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v8, v0

    .line 252
    goto :goto_1

    .line 244
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    move v8, v0

    goto :goto_1

    .line 256
    :cond_3
    iget-boolean v2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->h:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    cmpl-float v2, v8, v2

    if-nez v2, :cond_4

    if-le v0, p2, :cond_4

    .line 259
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v9}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 261
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->g:F

    move v3, p1

    move v7, v10

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 263
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 266
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 268
    if-gez v3, :cond_5

    .line 269
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4
    :goto_2
    invoke-virtual {p0, v10, v8}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextSize(IF)V

    .line 290
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->g:F

    iget v1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setLineSpacing(FF)V

    .line 298
    iput-boolean v10, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b:Z

    goto/16 :goto_0

    .line 273
    :cond_5
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 274
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    .line 275
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 276
    const-string v3, "..."

    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    move v11, v2

    move v2, v0

    move v0, v11

    .line 279
    :goto_3
    int-to-float v5, p1

    add-float/2addr v2, v3

    cmpg-float v2, v5, v2

    if-gez v2, :cond_6

    .line 280
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_3

    .line 282
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v10, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    iget v1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    .line 200
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 221
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 222
    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->a(II)V

    .line 223
    return-void
.end method

.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->h:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 207
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b:Z

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 209
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->a(II)V

    .line 212
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 213
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 92
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b:Z

    .line 95
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b:Z

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->a()V

    .line 85
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->h:Z

    .line 181
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 130
    iput p2, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->f:F

    .line 131
    iput p1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->g:F

    .line 132
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->d:F

    .line 141
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->requestLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->invalidate()V

    .line 143
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->e:F

    .line 161
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->requestLayout()V

    .line 162
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->invalidate()V

    .line 163
    return-void
.end method

.method public setOnResizeListener(Lcom/xueqiu/android/common/widget/c;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->a:Lcom/xueqiu/android/common/widget/c;

    .line 104
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    .line 113
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->c:F

    .line 122
    return-void
.end method

.class public final Lcom/xueqiu/android/common/widget/k;
.super Landroid/text/style/ImageSpan;
.source "IMTextView.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/IMTextView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/IMTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 240
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/k;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 242
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/k;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/k;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IMTextView;->getLineSpacingExtra()F

    move-result v0

    float-to-int v0, v0

    .line 254
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p8, v3

    sub-int v0, v3, v0

    .line 255
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/k;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/widget/IMTextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 256
    iget v3, p0, Lcom/xueqiu/android/common/widget/k;->mVerticalAlignment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 257
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 258
    :goto_1
    if-ge v1, v3, :cond_0

    .line 259
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    .line 265
    :cond_0
    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 268
    return-void

    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

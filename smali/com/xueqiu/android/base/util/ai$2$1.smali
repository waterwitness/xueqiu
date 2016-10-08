.class final Lcom/xueqiu/android/base/util/ai$2$1;
.super Lcom/d/a/b/f/d;
.source "SNBHtmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ai$2;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/aj;

.field final synthetic b:Lcom/xueqiu/android/base/util/ai$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ai$2;Lcom/xueqiu/android/base/util/aj;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ai$2$1;->a:Lcom/xueqiu/android/base/util/aj;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iget v0, v0, Lcom/xueqiu/android/base/util/ai$2;->a:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 164
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x30

    if-gt v1, v2, :cond_1

    .line 170
    const/high16 v0, 0x40400000    # 3.0f

    .line 173
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$2$1;->a:Lcom/xueqiu/android/base/util/aj;

    iput-object v0, v1, Lcom/xueqiu/android/base/util/aj;->a:Landroid/graphics/Bitmap;

    .line 177
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$2$1;->a:Lcom/xueqiu/android/base/util/aj;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xueqiu/android/base/util/aj;->setBounds(IIII)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ai$2;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ai$2;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ai$2;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$2$1;->b:Lcom/xueqiu/android/base/util/ai$2;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/ai$2;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->g()V

    goto :goto_0
.end method

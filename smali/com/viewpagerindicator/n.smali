.class final Lcom/viewpagerindicator/n;
.super Landroid/widget/FrameLayout;
.source "TabPageIndicator.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:I

.field final synthetic c:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 296
    iput-object p1, p0, Lcom/viewpagerindicator/n;->c:Lcom/viewpagerindicator/TabPageIndicator;

    .line 297
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    sget v2, Lcom/viewpagerindicator/g;->vpiTabPageIndicatorStyle:I

    invoke-direct {v0, p2, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 302
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 303
    const/4 v1, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 306
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 307
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 308
    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->d(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v1

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->d(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    iget-object v1, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method


# virtual methods
.method public final setSelected(Z)V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

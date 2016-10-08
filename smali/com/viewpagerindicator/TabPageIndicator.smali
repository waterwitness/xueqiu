.class public Lcom/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/e;


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Lcom/viewpagerindicator/c;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/cp;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/viewpagerindicator/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    sput-object v0, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v6, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Z

    .line 68
    new-instance v0, Lcom/viewpagerindicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicator$1;-><init>(Lcom/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/view/View$OnClickListener;

    .line 103
    invoke-virtual {p0, v3}, Lcom/viewpagerindicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setOverScrollMode(I)V

    .line 106
    const/4 v0, 0x0

    sget-object v1, Lcom/viewpagerindicator/l;->TabPageIndicator:[I

    sget v2, Lcom/viewpagerindicator/g;->vpiTabPageIndicatorStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    sget v1, Lcom/viewpagerindicator/l;->TabPageIndicator_bottom_line_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->j:I

    .line 108
    sget v1, Lcom/viewpagerindicator/l;->TabPageIndicator_text_horizontal_margin:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    .line 110
    new-instance v1, Lcom/viewpagerindicator/c;

    sget v2, Lcom/viewpagerindicator/g;->vpiTabPageIndicatorStyle:I

    invoke-direct {v1, p1, v2}, Lcom/viewpagerindicator/c;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    .line 111
    sget v1, Lcom/viewpagerindicator/l;->TabPageIndicator_container_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v3}, Lcom/viewpagerindicator/c;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v4}, Lcom/viewpagerindicator/c;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v5}, Lcom/viewpagerindicator/c;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/viewpagerindicator/c;->setPadding(IIII)V

    .line 113
    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    .line 1340
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1341
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1342
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 1343
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 1344
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    .line 1345
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    .line 1347
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1348
    invoke-virtual {v2, v5, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/viewpagerindicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/TabPageIndicator;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/viewpagerindicator/TabPageIndicator;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->k:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v0}, Lcom/viewpagerindicator/c;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v1

    .line 238
    const/4 v0, 0x0

    .line 239
    instance-of v2, v1, Lcom/viewpagerindicator/b;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 240
    check-cast v0, Lcom/viewpagerindicator/b;

    .line 242
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/bd;->b()I

    move-result v6

    move v5, v3

    .line 243
    :goto_0
    if-ge v5, v6, :cond_2

    .line 244
    invoke-virtual {v1, v5}, Landroid/support/v4/view/bd;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 245
    if-nez v2, :cond_5

    .line 246
    sget-object v2, Lcom/viewpagerindicator/TabPageIndicator;->a:Ljava/lang/CharSequence;

    move-object v4, v2

    .line 249
    :goto_1
    if-eqz v0, :cond_4

    .line 250
    invoke-interface {v0}, Lcom/viewpagerindicator/b;->a()I

    move-result v2

    .line 2183
    :goto_2
    new-instance v7, Lcom/viewpagerindicator/n;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/viewpagerindicator/n;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    .line 2291
    iput v5, v7, Lcom/viewpagerindicator/n;->b:I

    .line 2185
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/viewpagerindicator/n;->setFocusable(Z)V

    .line 2186
    iget-object v8, p0, Lcom/viewpagerindicator/TabPageIndicator;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/viewpagerindicator/n;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3323
    iget-object v8, v7, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2189
    if-eqz v2, :cond_1

    .line 4327
    iget-object v4, v7, Lcom/viewpagerindicator/n;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2193
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7, v4}, Lcom/viewpagerindicator/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 254
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:I

    if-le v0, v6, :cond_3

    .line 255
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:I

    .line 257
    :cond_3
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 258
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->requestLayout()V

    .line 259
    return-void

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move-object v4, v2

    goto :goto_1
.end method

.method public final a(IFI)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/cp;->a(IFI)V

    .line 208
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cp;->b(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public final b_(I)V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 213
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cp;->b_(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 168
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 177
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 126
    if-ne v2, v4, :cond_2

    move v0, v1

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setFillViewport(Z)V

    .line 129
    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v3}, Lcom/viewpagerindicator/c;->getChildCount()I

    move-result v3

    .line 130
    if-le v3, v1, :cond_4

    if-eq v2, v4, :cond_0

    const/high16 v1, -0x80000000

    if-ne v2, v1, :cond_4

    .line 131
    :cond_0
    const/4 v1, 0x2

    if-le v3, v1, :cond_3

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    .line 140
    :goto_1
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 142
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 144
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 146
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 148
    :cond_1
    return-void

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    goto :goto_1

    .line 137
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicator;->h:I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->i:I

    .line 273
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 275
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v0}, Lcom/viewpagerindicator/c;->getChildCount()I

    move-result v3

    move v2, v1

    .line 276
    :goto_0
    if-ge v2, v3, :cond_4

    .line 277
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/c;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 278
    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    .line 279
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 280
    if-eqz v0, :cond_2

    .line 5151
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->e:Lcom/viewpagerindicator/c;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5152
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 5153
    iget-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/viewpagerindicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5155
    :cond_1
    new-instance v4, Lcom/viewpagerindicator/TabPageIndicator$2;

    invoke-direct {v4, p0, v0}, Lcom/viewpagerindicator/TabPageIndicator$2;-><init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v4, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    .line 5162
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 278
    goto :goto_1

    .line 284
    :cond_4
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/cp;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->g:Landroid/support/v4/view/cp;

    .line 289
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/viewpagerindicator/m;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->l:Lcom/viewpagerindicator/m;

    .line 121
    return-void
.end method

.method public setSelectEnable(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->c:Z

    .line 353
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    .line 227
    if-nez v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    .line 231
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 232
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator;->a()V

    goto :goto_0
.end method

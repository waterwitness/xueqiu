.class public final Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v7/internal/widget/q;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/support/v7/internal/widget/ag;

.field private f:Z

.field private final g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/h;->abc_action_bar_tabbar:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/a/e;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4

    .prologue
    .line 44
    .line 2239
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/h;->abc_action_bar_tab:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 2340
    iput-object p0, v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->b:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 2341
    iput-object p1, v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a:Landroid/support/v7/a/e;

    .line 2344
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 2347
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()V

    .line 2244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2245
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return v4

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    .line 1552
    iget v0, v0, Landroid/support/v7/internal/widget/o;->w:I

    .line 164
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 208
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 320
    check-cast p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 321
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->e()V

    .line 322
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 228
    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 203
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    .line 204
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 80
    if-ne v3, v7, :cond_6

    move v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 83
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 84
    if-le v4, v1, :cond_8

    if-eq v3, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    .line 86
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    .line 91
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    .line 96
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 98
    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Z

    if-eqz v4, :cond_9

    .line 100
    :goto_3
    if-eqz v1, :cond_b

    .line 102
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 103
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_a

    .line 1136
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1140
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    if-nez v1, :cond_1

    .line 1190
    new-instance v1, Landroid/support/v7/internal/widget/ag;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/b/c;->actionDropDownStyle:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;I)V

    .line 1192
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/ag;->b(Landroid/support/v7/internal/widget/q;)V

    .line 1141
    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    .line 1143
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 1144
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    .line 1310
    iget-object v1, v1, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    .line 1146
    if-nez v1, :cond_2

    .line 1147
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    new-instance v4, Landroid/support/v7/internal/widget/af;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/internal/widget/af;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;)V

    .line 1149
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 1150
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    .line 1153
    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 112
    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 113
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 116
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 118
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 120
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 80
    goto/16 :goto_0

    .line 89
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_1

    .line 93
    :cond_8
    iput v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 98
    goto/16 :goto_3

    .line 106
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    goto :goto_4

    .line 109
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    goto :goto_4
.end method

.method public final setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Z

    .line 133
    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 187
    return-void
.end method

.method public final setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 169
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    .line 170
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 171
    :goto_0
    if-ge v2, v3, :cond_2

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 173
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 174
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    .line 171
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 180
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 182
    :cond_3
    return-void
.end method

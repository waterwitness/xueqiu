.class abstract Landroid/support/v7/internal/widget/a;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# instance fields
.field protected a:Landroid/support/v7/internal/view/menu/ActionMenuView;

.field protected b:Landroid/support/v7/internal/view/menu/c;

.field protected c:Landroid/support/v7/internal/widget/ActionBarContainer;

.field protected d:Z

.field protected e:Z

.field protected f:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method protected static a(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 183
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    .line 187
    add-int/lit8 v0, v0, 0x0

    .line 189
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected static a(Landroid/view/View;III)I
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 195
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    .line 197
    add-int v3, p1, v0

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 199
    return v0
.end method

.method protected static b(Landroid/view/View;III)I
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 205
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    .line 207
    sub-int v3, p1, v0

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v2, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 209
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->c()Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Landroid/support/v7/internal/widget/a$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/a$1;-><init>(Landroid/support/v7/internal/widget/a;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->d()Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->g()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    .line 1366
    iget-boolean v0, v0, Landroid/support/v7/internal/view/menu/c;->a:Z

    .line 172
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->e()Z

    .line 179
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/support/v7/internal/widget/a;->f:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/b/k;->ActionBar:[I

    sget v3, Landroid/support/v7/b/c;->actionBarStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/a;->setContentHeight(I)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/a;->e:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/d;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V

    .line 75
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Landroid/support/v7/internal/widget/a;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->a()V

    .line 78
    :cond_2
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Landroid/support/v7/internal/widget/a;->f:I

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->requestLayout()V

    .line 101
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->d:Z

    .line 87
    return-void
.end method

.method public setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/support/v7/internal/widget/a;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 109
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/a;->e:Z

    .line 96
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/a;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 138
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    :cond_0
    return-void
.end method

.class abstract Landroid/support/v7/internal/widget/b;
.super Landroid/support/v7/internal/widget/o;
.source "AbsSpinnerICS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/widget/o",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private F:Landroid/database/DataSetObserver;

.field a:Landroid/widget/SpinnerAdapter;

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field final i:Landroid/graphics/Rect;

.field final j:Landroid/support/v7/internal/widget/c;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/content/Context;I)V

    .line 41
    iput v1, p0, Landroid/support/v7/internal/widget/b;->e:I

    .line 42
    iput v1, p0, Landroid/support/v7/internal/widget/b;->f:I

    .line 43
    iput v1, p0, Landroid/support/v7/internal/widget/b;->g:I

    .line 44
    iput v1, p0, Landroid/support/v7/internal/widget/b;->h:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/support/v7/internal/widget/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/c;-><init>(Landroid/support/v7/internal/widget/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/b;->j:Landroid/support/v7/internal/widget/c;

    .line 1071
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/b;->setFocusable(Z)V

    .line 1072
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/b;->setWillNotDraw(Z)V

    .line 65
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/b;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 125
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->v:Z

    .line 126
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/b;->p:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->removeAllViewsInLayout()V

    .line 129
    iput v2, p0, Landroid/support/v7/internal/widget/b;->C:I

    .line 130
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/internal/widget/b;->D:J

    .line 132
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/b;->b(I)V

    .line 133
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/b;->c(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->invalidate()V

    .line 135
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/b;->c(I)V

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->requestLayout()V

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->invalidate()V

    .line 264
    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 83
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->F:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->a()V

    .line 88
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    .line 90
    iput v0, p0, Landroid/support/v7/internal/widget/b;->C:I

    .line 91
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/support/v7/internal/widget/b;->D:J

    .line 93
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 94
    iget v1, p0, Landroid/support/v7/internal/widget/b;->A:I

    iput v1, p0, Landroid/support/v7/internal/widget/b;->B:I

    .line 95
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/b;->A:I

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->d()V

    .line 98
    new-instance v1, Landroid/support/v7/internal/widget/p;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/p;-><init>(Landroid/support/v7/internal/widget/o;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/b;->F:Landroid/database/DataSetObserver;

    .line 99
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->F:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v1, p0, Landroid/support/v7/internal/widget/b;->A:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/b;->b(I)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/b;->c(I)V

    .line 106
    iget v0, p0, Landroid/support/v7/internal/widget/b;->A:I

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->f()V

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->requestLayout()V

    .line 119
    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->d()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->a()V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->f()V

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Landroid/support/v7/internal/widget/b;->A:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/b;->y:I

    if-ltz v0, :cond_0

    .line 289
    iget v0, p0, Landroid/support/v7/internal/widget/b;->y:I

    iget v1, p0, Landroid/support/v7/internal/widget/b;->k:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic c()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 34
    .line 4310
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    .line 34
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getPaddingLeft()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getPaddingTop()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getPaddingRight()I

    move-result v2

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getPaddingBottom()I

    move-result v3

    .line 156
    iget-object v7, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v8, p0, Landroid/support/v7/internal/widget/b;->e:I

    if-le v0, v8, :cond_5

    :goto_0
    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v7, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/b;->f:I

    if-le v1, v0, :cond_6

    move v0, v1

    :goto_1
    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/b;->g:I

    if-le v2, v0, :cond_7

    move v0, v2

    :goto_2
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/b;->h:I

    if-le v3, v0, :cond_8

    move v0, v3

    :goto_3
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/b;->v:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->e()V

    .line 1552
    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/o;->w:I

    .line 174
    if-ltz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->j:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/c;->a(I)Landroid/view/View;

    move-result-object v0

    .line 177
    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/widget/SpinnerAdapter;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    :cond_1
    if-eqz v0, :cond_2

    .line 184
    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->j:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    .line 187
    :cond_2
    if-eqz v0, :cond_9

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    .line 189
    iput-boolean v5, p0, Landroid/support/v7/internal/widget/b;->d:Z

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/b;->d:Z

    .line 193
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/b;->measureChild(Landroid/view/View;II)V

    .line 2222
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 195
    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 2226
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 196
    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    move v2, v4

    .line 202
    :goto_4
    if-eqz v2, :cond_4

    .line 204
    iget-object v1, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 205
    if-nez v6, :cond_4

    .line 206
    iget-object v0, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/b;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 210
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    invoke-static {v1, p2}, Landroid/support/v7/internal/widget/b;->resolveSize(II)I

    move-result v1

    .line 214
    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/b;->resolveSize(II)I

    move-result v0

    .line 216
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/b;->setMeasuredDimension(II)V

    .line 217
    iput p2, p0, Landroid/support/v7/internal/widget/b;->b:I

    .line 218
    iput p1, p0, Landroid/support/v7/internal/widget/b;->c:I

    .line 219
    return-void

    .line 156
    :cond_5
    iget v0, p0, Landroid/support/v7/internal/widget/b;->e:I

    goto/16 :goto_0

    .line 158
    :cond_6
    iget v0, p0, Landroid/support/v7/internal/widget/b;->f:I

    goto/16 :goto_1

    .line 160
    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/b;->g:I

    goto/16 :goto_2

    .line 162
    :cond_8
    iget v0, p0, Landroid/support/v7/internal/widget/b;->h:I

    goto/16 :goto_3

    :cond_9
    move v2, v5

    move v0, v4

    move v1, v4

    goto :goto_4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 408
    check-cast p1, Landroid/support/v7/internal/widget/d;

    .line 410
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/d;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/o;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 412
    iget-wide v0, p1, Landroid/support/v7/internal/widget/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 413
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/b;->v:Z

    .line 414
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/b;->p:Z

    .line 415
    iget-wide v0, p1, Landroid/support/v7/internal/widget/d;->a:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/b;->n:J

    .line 416
    iget v0, p1, Landroid/support/v7/internal/widget/d;->b:I

    iput v0, p0, Landroid/support/v7/internal/widget/b;->m:I

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/b;->q:I

    .line 418
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/b;->requestLayout()V

    .line 420
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 395
    invoke-super {p0}, Landroid/support/v7/internal/widget/o;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 396
    new-instance v1, Landroid/support/v7/internal/widget/d;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/d;-><init>(Landroid/os/Parcelable;)V

    .line 2561
    iget-wide v2, p0, Landroid/support/v7/internal/widget/o;->x:J

    .line 397
    iput-wide v2, v1, Landroid/support/v7/internal/widget/d;->a:J

    .line 398
    iget-wide v2, v1, Landroid/support/v7/internal/widget/d;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 3552
    iget v0, p0, Landroid/support/v7/internal/widget/o;->w:I

    .line 399
    iput v0, v1, Landroid/support/v7/internal/widget/d;->b:I

    .line 403
    :goto_0
    return-object v1

    .line 401
    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Landroid/support/v7/internal/widget/d;->b:I

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/b;->d:Z

    if-nez v0, :cond_0

    .line 304
    invoke-super {p0}, Landroid/support/v7/internal/widget/o;->requestLayout()V

    .line 306
    :cond_0
    return-void
.end method

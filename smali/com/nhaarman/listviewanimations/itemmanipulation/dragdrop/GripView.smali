.class public Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;
.super Landroid/view/View;
.source "GripView.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10101a5

    aput v2, v0, v1

    sput-object v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->e:I

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->b:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 81
    if-eqz p2, :cond_0

    .line 82
    sget-object v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    .line 90
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move v0, v1

    .line 132
    :goto_0
    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->e:I

    if-ge v0, v2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v2

    move v2, v1

    .line 134
    :goto_1
    iget v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->f:I

    if-ge v2, v4, :cond_0

    .line 135
    iget v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->d:F

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 136
    iget v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    iget-object v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 126
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 119
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->f:I

    .line 120
    int-to-float v0, p2

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->f:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->d:F

    .line 121
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->e:I

    .line 111
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->requestLayout()V

    .line 112
    return-void
.end method

.method public setDotSizeRadiusPx(F)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/GripView;->c:F

    .line 104
    return-void
.end method

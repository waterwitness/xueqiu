.class public Landroid/support/v7/internal/widget/LinearLayoutICS;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutICS.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v2, Landroid/support/v7/b/k;->LinearLayoutICS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    .line 51
    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    .line 56
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->d:I

    .line 57
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:I

    .line 59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget-object v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->setWillNotDraw(Z)V

    .line 62
    return-void

    .line 53
    :cond_0
    iput v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    iput v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 61
    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->e:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    if-nez p1, :cond_2

    .line 177
    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->d:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 179
    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->d:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 180
    :cond_3
    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->d:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 182
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 183
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 182
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 190
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getSupportDividerWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 109
    return-void

    .line 95
    :cond_1
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 101
    :cond_3
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1113
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1114
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1115
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(Landroid/graphics/Canvas;I)V

    .line 1113
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1122
    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    if-nez v0, :cond_4

    .line 1126
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->c:I

    sub-int/2addr v0, v1

    .line 1130
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 1128
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_2

    .line 1135
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1136
    :goto_3
    if-ge v1, v2, :cond_7

    .line 1137
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1138
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1140
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1141
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->b(Landroid/graphics/Canvas;I)V

    .line 1136
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1145
    :cond_7
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1148
    if-nez v0, :cond_8

    .line 1149
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->b:I

    sub-int/2addr v0, v1

    .line 1153
    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->b(Landroid/graphics/Canvas;I)V

    goto/16 :goto_0

    .line 1151
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_4
.end method

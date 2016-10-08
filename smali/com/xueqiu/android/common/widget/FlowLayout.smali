.class public Lcom/xueqiu/android/common/widget/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FlowLayout;->getWidth()I

    move-result v7

    .line 108
    const/4 v4, 0x0

    .line 109
    const/4 v3, 0x0

    .line 111
    const/4 v2, 0x0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FlowLayout;->getChildCount()I

    move-result v6

    .line 116
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_2

    .line 117
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/common/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 118
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 120
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 123
    add-int v11, v9, v4

    iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    if-gt v11, v7, :cond_0

    const/4 v11, 0x2

    if-lt v2, v11, :cond_1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v4, 0x0

    .line 133
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v10

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v3, v1, v2

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    const/4 v2, 0x0

    .line 138
    :cond_1
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v11

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    .line 139
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 140
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 116
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 153
    const/4 v0, 0x0

    move v5, v0

    move v6, v1

    :goto_1
    if-ge v5, v8, :cond_4

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v3, v0, 0x2

    .line 158
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 159
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_5

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v3

    .line 166
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v6

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v11

    .line 170
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v10

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 158
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_2

    .line 174
    :cond_3
    add-int v1, v6, v9

    .line 153
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_1

    .line 176
    :cond_4
    return-void

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 42
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 44
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v4, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v8, 0x0

    .line 54
    const/4 v7, 0x0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/FlowLayout;->getChildCount()I

    move-result v16

    .line 58
    const/4 v3, 0x0

    move v11, v7

    move v12, v8

    move v13, v9

    move v7, v10

    move v10, v3

    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/common/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 61
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/xueqiu/android/common/widget/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/FlowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v9, v9, v17

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v8, v8, v17

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v3

    .line 70
    add-int v3, v13, v9

    if-gt v3, v6, :cond_0

    const/4 v3, 0x2

    if-lt v11, v3, :cond_2

    .line 72
    :cond_0
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 76
    add-int/2addr v4, v12

    .line 78
    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move v4, v7

    move/from16 v7, v18

    .line 87
    :goto_1
    add-int/lit8 v11, v16, -0x1

    if-ne v10, v11, :cond_1

    .line 88
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 89
    add-int/2addr v3, v8

    .line 58
    :cond_1
    add-int/lit8 v10, v10, 0x1

    move v11, v7

    move v12, v8

    move v13, v9

    move v7, v4

    move v4, v3

    goto :goto_0

    .line 81
    :cond_2
    add-int/2addr v9, v13

    .line 83
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 84
    add-int/lit8 v3, v11, 0x1

    move/from16 v18, v3

    move v3, v4

    move v4, v7

    move/from16 v7, v18

    goto :goto_1

    .line 94
    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v14, v3, :cond_4

    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v15, v3, :cond_5

    move v3, v5

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lcom/xueqiu/android/common/widget/FlowLayout;->setMeasuredDimension(II)V

    .line 96
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 97
    return-void

    :cond_4
    move v6, v7

    .line 94
    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

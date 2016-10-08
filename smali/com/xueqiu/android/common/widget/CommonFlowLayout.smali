.class public Lcom/xueqiu/android/common/widget/CommonFlowLayout;
.super Landroid/view/ViewGroup;
.source "CommonFlowLayout.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->c:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getWidth()I

    move-result v6

    .line 140
    const/4 v4, 0x0

    .line 141
    const/4 v3, 0x0

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getChildCount()I

    move-result v7

    .line 145
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v7, :cond_1

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    sget-object v9, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onLayout lp.leftMargin = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lp.rightMargin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 150
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 153
    add-int v11, v9, v4

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    if-le v11, v6, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v4, 0x0

    .line 160
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    :cond_0
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v11

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v11

    add-int/2addr v4, v9

    .line 165
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v9

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 166
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v5, 0x0

    .line 174
    const/4 v2, 0x0

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 178
    const/4 v1, 0x2

    move v4, v1

    .line 180
    :goto_1
    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    :goto_2
    if-ge v7, v4, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->c:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 184
    const/4 v1, 0x0

    move v6, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 185
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v10, 0x8

    if-eq v2, v10, :cond_4

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v5

    .line 192
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v8

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v11

    .line 196
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 197
    sget-object v14, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "onLayout cLeft = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " cTop = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cRight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cBottom = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v10

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 184
    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v5, v1

    goto :goto_3

    .line 201
    :cond_2
    const/4 v5, 0x0

    .line 202
    add-int v2, v8, v9

    .line 180
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v8, v2

    goto/16 :goto_2

    .line 204
    :cond_3
    return-void

    :cond_4
    move v1, v5

    goto :goto_4

    :cond_5
    move v4, v1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 23

    .prologue
    .line 43
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 46
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 47
    sget-object v4, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onMeasure sizeHeight = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sizeWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v6, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v4, 0x0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getChildCount()I

    move-result v17

    .line 59
    if-lez v17, :cond_0

    .line 60
    const/4 v4, 0x1

    .line 62
    :cond_0
    const/4 v5, 0x0

    move v12, v5

    move v13, v9

    move v14, v10

    move v9, v4

    move v5, v6

    move v6, v11

    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_c

    .line 63
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 67
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v10

    .line 71
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v10, v10, v19

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    add-int v10, v10, v19

    .line 72
    sget-object v19, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "onMeasure childWidth = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childHeight = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lp.leftMargin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lp.rightMargin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lp.topMargin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lp.bottomMargin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, " child.getMeasuredWidth = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, " child.getMeasuredHeight = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int v4, v14, v11

    if-le v4, v8, :cond_5

    .line 79
    add-int/lit8 v4, v9, 0x1

    .line 80
    const/4 v9, 0x2

    if-le v4, v9, :cond_3

    .line 81
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 82
    add-int v4, v5, v13

    move v5, v6

    .line 104
    :goto_1
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onMeasure width = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " modeWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " modeHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v15, v6, :cond_6

    .line 107
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeWidth = MeasureSpec.EXACTLY"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_2
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v0, v6, :cond_8

    .line 115
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeHeight = MeasureSpec.EXACTLY"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_3
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v15, v6, :cond_a

    :goto_4
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v0, v6, :cond_b

    move v6, v7

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->setMeasuredDimension(II)V

    .line 124
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-eq v0, v6, :cond_1

    .line 125
    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v15, v4, :cond_2

    .line 128
    const/high16 v4, -0x80000000

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 130
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 131
    return-void

    .line 86
    :cond_3
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 90
    add-int/2addr v5, v13

    move v9, v10

    move v10, v11

    move/from16 v22, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v22

    .line 99
    :goto_6
    add-int/lit8 v11, v17, -0x1

    if-ne v12, v11, :cond_4

    .line 100
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 101
    add-int/2addr v4, v9

    .line 62
    :cond_4
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v13, v9

    move v14, v10

    move v9, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_0

    .line 94
    :cond_5
    add-int/2addr v11, v14

    .line 96
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v11

    move/from16 v22, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move/from16 v9, v22

    goto :goto_6

    .line 108
    :cond_6
    if-nez v15, :cond_7

    .line 109
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeWidth = MeasureSpec.UNSPECIFIED"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_7
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeWidth = MeasureSpec.AT_MOST"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_8
    if-nez v16, :cond_9

    .line 117
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeHeight = MeasureSpec.UNSPECIFIED"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 119
    :cond_9
    sget-object v6, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->a:Ljava/lang/String;

    const-string v9, "modeHeight = MeasureSpec.AT_MOST"

    invoke-static {v6, v9}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move v8, v5

    .line 122
    goto :goto_4

    :cond_b
    move v6, v4

    goto :goto_5

    :cond_c
    move v4, v5

    move v5, v6

    goto/16 :goto_1
.end method

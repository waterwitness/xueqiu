.class public Lcom/xueqiu/android/stockchart/view/PankouView;
.super Lcom/xueqiu/android/stockchart/view/BaseView;
.source "PankouView.java"


# instance fields
.field private b:Lcom/xueqiu/android/stockchart/a/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/xueqiu/android/stockchart/e/h;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/text/DecimalFormat;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "wudang"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    .line 34
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->h:Ljava/text/DecimalFormat;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "wudang"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    .line 34
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->h:Ljava/text/DecimalFormat;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "wudang"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    .line 34
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->h:Ljava/text/DecimalFormat;

    .line 85
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewHeight()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float v9, v2, v3

    .line 129
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getFontSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v4, v2, v3

    .line 131
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float v10, v2, v3

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v11, v10, v2

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v12

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewWidth()F

    move-result v2

    sub-float/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    sub-float v13, v2, v3

    .line 136
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    if-nez v2, :cond_2

    const/16 v2, 0xa

    move v3, v2

    .line 141
    :goto_0
    const/4 v2, 0x0

    move v7, v2

    move v8, v4

    :goto_1
    if-ge v7, v3, :cond_3

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    const-string v4, "-"

    .line 145
    const/4 v2, 0x0

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    if-eqz v15, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/b;

    .line 8016
    iget v6, v2, Lcom/xueqiu/android/stockchart/e/b;->b:F

    .line 8024
    iget v5, v2, Lcom/xueqiu/android/stockchart/e/b;->c:F

    .line 9008
    iget-object v4, v2, Lcom/xueqiu/android/stockchart/e/b;->a:Ljava/lang/String;

    .line 151
    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 9032
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/b;->d:I

    .line 155
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    sget-object v15, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 9087
    iget-wide v0, v4, Lcom/xueqiu/android/stockchart/e/h;->i:D

    move-wide/from16 v16, v0

    .line 160
    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    int-to-float v4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/PankouView;->a(F)I

    move-result v4

    .line 166
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    const-string v4, ""

    .line 169
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 170
    const-string v4, "S"

    .line 172
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 173
    const-string v2, "B"

    .line 176
    :goto_2
    add-float v4, v13, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    add-float v4, v8, v9

    .line 141
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v4

    goto/16 :goto_1

    .line 140
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v2

    goto/16 :goto_0

    .line 179
    :cond_3
    return-void

    :cond_4
    move-object v2, v4

    goto :goto_2
.end method


# virtual methods
.method public getChartSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    return-object v0
.end method

.method public getPankouWidth()F
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    .line 113
    invoke-super/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    const-string v3, "wudang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 3188
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewHeight()F

    move-result v2

    const/high16 v3, 0x41300000    # 11.0f

    div-float v11, v2, v3

    .line 3189
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getFontSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 3190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move v8, v2

    .line 3192
    :goto_1
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    add-float v12, v2, v4

    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v13, v12, v2

    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    sub-float v14, v2, v4

    .line 3196
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3197
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3198
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    .line 3201
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 3202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/g;

    .line 5030
    iget v4, v2, Lcom/xueqiu/android/stockchart/e/g;->b:F

    .line 5038
    iget v5, v2, Lcom/xueqiu/android/stockchart/e/g;->c:F

    .line 6012
    iget v6, v2, Lcom/xueqiu/android/stockchart/e/g;->d:F

    .line 6022
    iget-object v2, v2, Lcom/xueqiu/android/stockchart/e/g;->a:Ljava/lang/String;

    .line 3209
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3211
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3213
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    .line 3214
    sub-float v2, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/PankouView;->a(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3216
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 6087
    iget-wide v0, v2, Lcom/xueqiu/android/stockchart/e/h;->i:D

    move-wide/from16 v18, v0

    .line 3216
    float-to-double v0, v4

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3218
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3219
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3220
    float-to-int v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3222
    add-float v9, v3, v11

    .line 3223
    const/4 v2, 0x4

    if-ne v10, v2, :cond_6

    .line 3224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    const-string v3, "big"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3225
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3226
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->a:Landroid/content/res/TypedArray;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3227
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3228
    const-string v2, "\u73b0\u4ef7"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3230
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3231
    sub-float v2, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/PankouView;->a(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 7087
    iget-wide v2, v2, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 3232
    float-to-double v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3233
    add-float v2, v9, v11

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3201
    :goto_3
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v3, v2

    goto/16 :goto_2

    .line 3190
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 4038
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/h;->d:F

    move v8, v2

    goto/16 :goto_1

    .line 3237
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 3238
    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v11, v2

    sub-float v4, v9, v2

    .line 3239
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    sub-float v5, v2, v5

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3240
    add-float v2, v9, v11

    goto :goto_3

    .line 122
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/PankouView;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_6
    move v2, v9

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    const-string v1, "wudang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->b:Lcom/xueqiu/android/stockchart/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v4

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->getViewHeight()F

    move-result v0

    const/high16 v1, 0x41300000    # 11.0f

    div-float/2addr v0, v1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 260
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 261
    add-int/lit8 v0, v0, -0x1

    .line 264
    :cond_2
    if-gez v0, :cond_3

    .line 265
    const/4 v0, 0x0

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/g;

    .line 270
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 10087
    iget-wide v2, v1, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 11030
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/g;->b:F

    .line 270
    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->b:Lcom/xueqiu/android/stockchart/a/b;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/stockchart/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChartSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDetailList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->i:Ljava/util/List;

    .line 1248
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->invalidate()V

    .line 73
    return-void
.end method

.method public setOnPankouClickListener(Lcom/xueqiu/android/stockchart/a/b;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->b:Lcom/xueqiu/android/stockchart/a/b;

    .line 48
    return-void
.end method

.method public setPanKouList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->g:Ljava/util/List;

    .line 2248
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PankouView;->invalidate()V

    .line 91
    return-void
.end method

.method public setStock(Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->e:Lcom/xueqiu/android/stockchart/e/h;

    .line 99
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->f:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/xueqiu/android/stockchart/f/a;->b(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->h:Ljava/text/DecimalFormat;

    .line 108
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PankouView;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

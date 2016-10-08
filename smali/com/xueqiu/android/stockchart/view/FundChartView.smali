.class public Lcom/xueqiu/android/stockchart/view/FundChartView;
.super Lcom/xueqiu/android/stockchart/view/ChartView;
.source "FundChartView.java"


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getTopChartHeight()F

    move-result v4

    .line 163
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartStartX()F

    move-result v7

    .line 164
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartWidth()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v8, v0, v1

    .line 166
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getFontSize()F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 172
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    add-float v10, v4, v0

    .line 174
    const-string v11, "MM-DD"

    .line 176
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 177
    int-to-float v0, v6

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->b(F)I

    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->a(I)Lcom/xueqiu/android/stockchart/e/d;

    move-result-object v1

    .line 2019
    iget-object v1, v1, Lcom/xueqiu/android/stockchart/e/d;->b:Ljava/lang/String;

    .line 179
    invoke-static {v1, v11}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float v1, v7, v0

    .line 183
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 184
    invoke-virtual {p1, v2, v1, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/xueqiu/android/stockchart/e/d;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/d;

    return-object v0
.end method

.method public final b(F)I
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartStartX()F

    move-result v0

    sub-float v0, p1, v0

    .line 197
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 198
    if-gez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 205
    :cond_1
    return v0
.end method

.method public getFundDataArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPerWidth()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/ChartView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->a()V

    .line 58
    invoke-virtual/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->a(Landroid/graphics/Canvas;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getTopChartHeight()F

    move-result v18

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v4

    .line 1076
    const/4 v5, 0x0

    aget v19, v4, v5

    .line 1077
    const/4 v5, 0x1

    aget v20, v4, v5

    .line 1078
    sub-float v4, v19, v20

    .line 1079
    const v5, 0x3d75c28f    # 0.06f

    mul-float/2addr v5, v4

    add-float v5, v5, v19

    .line 1080
    const v6, 0x3d75c28f    # 0.06f

    mul-float/2addr v4, v6

    sub-float v21, v20, v4

    .line 1081
    sub-float v4, v5, v21

    .line 1082
    div-float v22, v18, v4

    .line 1084
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xueqiu/android/stockchart/view/FundChartView;->c:F

    .line 1085
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xueqiu/android/stockchart/view/FundChartView;->d:F

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartStartX()F

    move-result v17

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xueqiu/android/stockchart/c;->chart_line_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 1090
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 1091
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1092
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1093
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1095
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartWidth()F

    move-result v4

    add-int/lit8 v5, v26, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getTopChartHeight()F

    move-result v8

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartStartX()F

    move-result v5

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getChartWidth()F

    move-result v4

    add-float v7, v5, v4

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "big"

    if-ne v4, v6, :cond_6

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    sub-float v4, v5, v4

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move/from16 v16, v4

    .line 1137
    :goto_0
    sub-float v4, v19, v21

    mul-float v4, v4, v22

    sub-float v6, v8, v4

    .line 1138
    sub-float v4, v20, v21

    mul-float v4, v4, v22

    sub-float v12, v8, v4

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    move v8, v6

    .line 1141
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v10, p1

    move v11, v5

    move v13, v7

    move v14, v12

    move-object v15, v9

    .line 1142
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1144
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1145
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1146
    const/high16 v4, -0x10000

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getFontSize()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v7

    .line 1151
    move/from16 v0, v19

    float-to-double v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 1152
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/FundChartView;->a(F)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v9, "big"

    if-ne v4, v9, :cond_0

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getFontSize()F

    move-result v4

    add-float/2addr v4, v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1156
    move/from16 v0, v20

    float-to-double v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "big"

    if-ne v4, v7, :cond_1

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1158
    const/high16 v4, 0x40400000    # 3.0f

    sub-float v4, v12, v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1101
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->b(Landroid/graphics/Canvas;)V

    .line 1103
    const/4 v4, 0x0

    move/from16 v5, v17

    move v6, v4

    :goto_3
    move/from16 v0, v26

    if-ge v6, v0, :cond_3

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/stockchart/e/d;

    .line 1106
    if-eqz v4, :cond_5

    .line 2011
    iget v4, v4, Lcom/xueqiu/android/stockchart/e/d;->a:F

    .line 1108
    sub-float v4, v4, v21

    mul-float v4, v4, v22

    sub-float v4, v18, v4

    .line 1110
    if-lez v6, :cond_2

    .line 1111
    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1115
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/FundChartView;->e:F

    add-float/2addr v4, v5

    .line 1103
    :goto_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_3

    .line 1153
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_1

    .line 1157
    :cond_1
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 1113
    :cond_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    .line 1120
    :cond_3
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1121
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    :cond_4
    return-void

    :cond_5
    move v4, v5

    goto :goto_5

    :cond_6
    move/from16 v16, v5

    goto/16 :goto_0
.end method

.method public setFundDataArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/FundChartView;->b:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

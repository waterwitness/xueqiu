.class public final Lcom/xueqiu/android/cube/a/h;
.super Lcom/xueqiu/android/common/a/d;
.source "CubeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/xueqiu/android/cube/a/i;

.field public f:Z

.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/xueqiu/android/cube/model/CubeCalGainType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/h;->h:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/a/h;->f:Z

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/h;->g:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/h;->g:Landroid/view/LayoutInflater;

    const v3, 0x7f030102

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1073
    new-instance v3, Lcom/xueqiu/android/cube/a/j;

    invoke-direct {v3}, Lcom/xueqiu/android/cube/a/j;-><init>()V

    iget-object v4, p0, Lcom/xueqiu/android/cube/a/h;->g:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/xueqiu/android/cube/a/h;->e:Lcom/xueqiu/android/cube/a/i;

    .line 1093
    const v2, 0x7f0e027d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->a:Landroid/view/View;

    .line 1094
    const v2, 0x7f0e00a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->b:Landroid/widget/TextView;

    .line 1095
    const v2, 0x7f0e03ed

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->d:Landroid/widget/TextView;

    .line 1096
    const v2, 0x7f0e0396

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->e:Landroid/widget/TextView;

    .line 1097
    const v2, 0x7f0e01eb

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    .line 1098
    const v2, 0x7f0e03f1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->f:Landroid/widget/TextView;

    .line 1099
    const v2, 0x7f0e03bc

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->g:Landroid/widget/LinearLayout;

    .line 1100
    const v2, 0x7f0e03ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->h:Landroid/widget/TextView;

    .line 1101
    iput-object v5, v3, Lcom/xueqiu/android/cube/a/j;->i:Lcom/xueqiu/android/cube/a/i;

    .line 1102
    iput-object v4, v3, Lcom/xueqiu/android/cube/a/j;->j:Landroid/view/LayoutInflater;

    .line 1103
    const v2, 0x7f0e0405

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->k:Landroid/widget/RelativeLayout;

    .line 1104
    const v2, 0x7f0e0407

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->l:Landroid/widget/TextView;

    .line 1105
    const v2, 0x7f0e0406

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/cube/a/j;->m:Landroid/widget/TextView;

    .line 1073
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/h;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/Cube;

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/cube/a/j;

    .line 63
    :try_start_0
    iget-object v7, p0, Lcom/xueqiu/android/cube/a/h;->h:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    iget-boolean v8, p0, Lcom/xueqiu/android/cube/a/h;->f:Z

    .line 1117
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1118
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1119
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Style;->getColor0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Style;->getColor1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 1120
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1121
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1122
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v9, 0x0

    aget v4, v4, v9

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1123
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->a:Landroid/view/View;

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1128
    :goto_0
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1129
    const/4 v4, 0x0

    move v6, v4

    :goto_1
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_3

    .line 1130
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1131
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v10, -0x2

    invoke-direct {v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1133
    if-nez v6, :cond_2

    const/4 v4, 0x0

    .line 1134
    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1135
    iget-object v10, v3, Lcom/xueqiu/android/cube/a/j;->g:Landroid/widget/LinearLayout;

    .line 2110
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->j:Landroid/view/LayoutInflater;

    const v11, 0x7f030117

    iget-object v12, v3, Lcom/xueqiu/android/cube/a/j;->g:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2111
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {v10, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 1125
    :cond_1
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->a:Landroid/view/View;

    const v5, 0x7f020181

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 67
    :goto_3
    return-object p2

    .line 1133
    :cond_2
    :try_start_1
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v4, v10}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    .line 1140
    :cond_3
    if-eqz v8, :cond_5

    .line 1141
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1159
    :goto_4
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->k:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/xueqiu/android/cube/a/j$2;

    invoke-direct {v5, v3, v2}, Lcom/xueqiu/android/cube/a/j$2;-><init>(Lcom/xueqiu/android/cube/a/j;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1169
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    :goto_5
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1175
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->m:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    :goto_6
    sget-object v4, Lcom/xueqiu/android/cube/model/CubeCalGainType;->DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    if-ne v7, v4, :cond_9

    .line 1183
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getDailyGain()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1184
    const v6, 0x7f0700d3

    .line 1192
    :goto_7
    iget-object v7, v3, Lcom/xueqiu/android/cube/a/j;->d:Landroid/widget/TextView;

    .line 2203
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2204
    const-string v9, "%.2f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2206
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_4

    .line 2207
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x18

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 2208
    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    const/16 v10, 0x11

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1192
    :cond_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1194
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2215
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2216
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#666666"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2217
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 2218
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\u4eba"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2219
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v9, 0x11

    invoke-virtual {v6, v7, v8, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2220
    const-string v5, "\u5173\u6ce8"

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1194
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v2

    .line 1197
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Market;->description()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v3, v3, Lcom/xueqiu/android/cube/a/j;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Market;->bgResId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 1143
    :cond_5
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1145
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    const v5, 0x7f020146

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1149
    :goto_8
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    new-instance v5, Lcom/xueqiu/android/cube/a/j$1;

    invoke-direct {v5, v3, v2}, Lcom/xueqiu/android/cube/a/j$1;-><init>(Lcom/xueqiu/android/cube/a/j;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1147
    :cond_6
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->c:Landroid/widget/ImageView;

    const v5, 0x7f020145

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1171
    :cond_7
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->l:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1177
    :cond_8
    iget-object v4, v3, Lcom/xueqiu/android/cube/a/j;->m:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1185
    :cond_9
    sget-object v4, Lcom/xueqiu/android/cube/model/CubeCalGainType;->MONTHLY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    if-ne v7, v4, :cond_a

    .line 1186
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getMonthlyGain()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1187
    const v6, 0x7f0700e7

    goto/16 :goto_7

    .line 1189
    :cond_a
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 1190
    const v6, 0x7f070106

    goto/16 :goto_7
.end method

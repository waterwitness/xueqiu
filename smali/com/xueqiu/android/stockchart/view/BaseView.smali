.class public Lcom/xueqiu/android/stockchart/view/BaseView;
.super Landroid/view/View;
.source "BaseView.java"


# instance fields
.field public a:Landroid/content/res/TypedArray;

.field private b:I

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stock_color"

    const-string v2, "1"

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_border_color:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_split_color:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_text_color:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_period_container_bg_color:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_red_color:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_green_color:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_bg_color:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stock_color"

    const-string v2, "1"

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_border_color:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_split_color:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_text_color:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_period_container_bg_color:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_red_color:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_green_color:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_bg_color:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stock_color"

    const-string v2, "1"

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_border_color:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_split_color:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_text_color:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_period_container_bg_color:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_red_color:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_chart_green_color:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/xueqiu/android/stockchart/b;->attr_bg_color:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    .line 59
    return-void
.end method

.method private a(I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public final a(F)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 78
    cmpl-float v3, p1, v6

    if-lez v3, :cond_2

    .line 79
    iget v2, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    cmpg-float v3, p1, v6

    if-gez v3, :cond_3

    .line 85
    iget v2, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    if-nez v2, :cond_0

    move v0, v1

    .line 86
    goto :goto_0

    :cond_3
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method public final a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    return-object v0
.end method

.method public final a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 140
    return-object v0
.end method

.method public getBorderLinePaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stockchart/view/BaseView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    return-object v0
.end method

.method public getSplitLinePaint()Landroid/graphics/Paint;
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stockchart/view/BaseView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    return-object v0
.end method

.method public getViewHeight()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->d:F

    return v0
.end method

.method public getViewWidth()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->c:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1069
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->d:F

    .line 1070
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->c:F

    .line 66
    return-void
.end method

.method public setStockColor(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/BaseView;->b:I

    .line 34
    return-void
.end method

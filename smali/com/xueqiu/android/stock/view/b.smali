.class public final Lcom/xueqiu/android/stock/view/b;
.super Landroid/view/View;
.source "QuoteInfoView.java"


# instance fields
.field public a:Landroid/content/res/TypedArray;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Canvas;

.field private i:Landroid/text/TextPaint;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->d:I

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->e:I

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->f:I

    .line 32
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/b;->f:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->g:I

    .line 33
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    .line 34
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    .line 45
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x7f010120
        0x7f010121
        0x7f010022
        0x7f01001f
    .end array-data
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v13, 0x41a00000    # 20.0f

    .line 115
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    iget v2, p0, Lcom/xueqiu/android/stock/view/b;->d:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 117
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 119
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 120
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v7, v1

    .line 126
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v7, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    .line 129
    iget v1, p0, Lcom/xueqiu/android/stock/view/b;->g:I

    .line 131
    iget v2, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 133
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move v9, v0

    move v2, v7

    .line 135
    :goto_0
    if-ge v9, v10, :cond_4

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 137
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v6, v2

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    add-int/lit8 v2, v9, 0x1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 140
    invoke-direct {p0, v0, v6, v1}, Lcom/xueqiu/android/stock/view/b;->a(Ljava/util/Map$Entry;II)V

    .line 141
    iget v0, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_1

    .line 143
    :cond_0
    invoke-direct {p0, v0, v6, v1}, Lcom/xueqiu/android/stock/view/b;->a(Ljava/util/Map$Entry;II)V

    .line 145
    add-int/lit8 v0, v9, 0x1

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 146
    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 148
    add-int/lit8 v0, v10, -0x1

    if-eq v9, v0, :cond_1

    .line 149
    iget v0, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    sub-int v0, v6, v0

    sub-int v3, v0, v7

    .line 150
    iget v0, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/b;->d:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v12, v0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    int-to-float v1, v3

    int-to-float v2, v12

    iget v4, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v12

    iget v3, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    move v1, v8

    .line 158
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    add-int/2addr v0, v1

    move v1, v0

    move v6, v7

    .line 161
    goto :goto_1

    .line 135
    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v2, v6

    goto/16 :goto_0

    .line 163
    :cond_4
    return-void
.end method

.method private a(Ljava/util/Map$Entry;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 169
    if-eqz v2, :cond_0

    .line 170
    const-string v1, "--"

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 175
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    int-to-float v3, p2

    int-to-float v4, p3

    iget-object v5, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/xueqiu/android/stock/view/b;->j:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    int-to-float v3, p3

    iget-object v4, p0, Lcom/xueqiu/android/stock/view/b;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    return-void
.end method

.method private getViewHeight()I
    .locals 6

    .prologue
    .line 60
    iget v0, p0, Lcom/xueqiu/android/stock/view/b;->g:I

    .line 61
    iget v1, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 65
    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_1

    .line 66
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 67
    iget v3, p0, Lcom/xueqiu/android/stock/view/b;->c:I

    add-int/2addr v0, v3

    .line 69
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    .line 70
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getWidth()I

    move-result v2

    .line 1094
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/b;->getViewHeight()I

    move-result v4

    .line 1096
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1097
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    int-to-float v3, v2

    int-to-float v4, v4

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1105
    iget v1, p0, Lcom/xueqiu/android/stock/view/b;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1106
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/b;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1107
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1109
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1110
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    iget v3, p0, Lcom/xueqiu/android/stock/view/b;->f:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1111
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/b;->h:Landroid/graphics/Canvas;

    const-string v4, "\u884c\u60c5\u6570\u636e"

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/b;->a()V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/b;->getViewHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/view/b;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/b;->b:Ljava/util/List;

    .line 41
    return-void
.end method

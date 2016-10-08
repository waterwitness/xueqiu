.class public final Lcom/xueqiu/android/stock/view/a;
.super Landroid/view/View;
.source "QuoteInfoLiteView.java"


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

.field private e:Landroid/graphics/Canvas;

.field private f:Landroid/graphics/Paint;

.field private g:[I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/a;->b:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/a;->c:I

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/a;->d:I

    .line 30
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/a;->e:Landroid/graphics/Canvas;

    .line 31
    iput-object v2, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/a;->g:[I

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/a;->a:Landroid/content/res/TypedArray;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/a;->h:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/a;->i:Ljava/util/ArrayList;

    .line 44
    return-void

    .line 33
    :array_0
    .array-data 4
        0x7f010120
        0x7f010121
    .end array-data
.end method

.method private a(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 148
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 151
    if-eqz v2, :cond_0

    .line 152
    const-string v1, "--"

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 157
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 158
    int-to-float v0, v0

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 160
    return v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 62
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/xueqiu/android/stock/view/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/xueqiu/android/stock/view/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    move v2, v3

    move v4, v3

    .line 132
    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->g:[I

    aget v5, v0, v2

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 135
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1167
    if-eqz v6, :cond_0

    .line 1168
    const-string v0, "--"

    .line 1171
    :cond_0
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/xueqiu/android/stock/view/a;->a:Landroid/content/res/TypedArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1172
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/a;->e:Landroid/graphics/Canvas;

    int-to-float v7, v4

    int-to-float v8, p2

    iget-object v9, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1173
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v4

    .line 1174
    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 1176
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/xueqiu/android/stock/view/a;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1177
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/a;->e:Landroid/graphics/Canvas;

    int-to-float v1, v1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_1
    add-int v1, v4, v5

    .line 132
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 84
    .line 85
    new-array v5, v6, [I

    move v3, v2

    move v4, v2

    .line 86
    :goto_0
    if-ge v3, v6, :cond_1

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/view/a;->a(Ljava/util/Map$Entry;)I

    move-result v0

    move v1, v0

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/view/a;->a(Ljava/util/Map$Entry;)I

    move-result v0

    .line 99
    :goto_2
    if-ge v1, v0, :cond_0

    move v1, v0

    .line 102
    :cond_0
    add-int/2addr v4, v1

    .line 103
    aput v1, v5, v3

    .line 86
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/a;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x3

    .line 108
    :goto_3
    if-ge v2, v6, :cond_2

    .line 109
    aget v1, v5, v2

    add-int/2addr v1, v0

    aput v1, v5, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 112
    :cond_2
    iput-object v5, p0, Lcom/xueqiu/android/stock/view/a;->g:[I

    .line 113
    return-void

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/a;->e:Landroid/graphics/Canvas;

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 1116
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    .line 1117
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/stock/view/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/a;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1120
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/a;->a()V

    .line 1121
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/a;->b()V

    .line 1123
    iget v0, p0, Lcom/xueqiu/android/stock/view/a;->c:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xueqiu/android/stock/view/a;->c:I

    iget v2, p0, Lcom/xueqiu/android/stock/view/a;->d:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1124
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/a;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/stock/view/a;->a(Ljava/util/ArrayList;I)V

    .line 1126
    iget v1, p0, Lcom/xueqiu/android/stock/view/a;->c:I

    add-int/2addr v0, v1

    .line 1127
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/a;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/stock/view/a;->a(Ljava/util/ArrayList;I)V

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
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/a;->b:Ljava/util/List;

    .line 40
    return-void
.end method

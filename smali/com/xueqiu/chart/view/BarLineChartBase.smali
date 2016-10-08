.class public abstract Lcom/xueqiu/chart/view/BarLineChartBase;
.super Lcom/xueqiu/chart/view/Chart;
.source "BarLineChartBase.java"


# instance fields
.field protected a:Lcom/xueqiu/chart/b/d;

.field protected b:Lcom/xueqiu/chart/b/d;

.field protected c:Lcom/xueqiu/chart/a/c;

.field protected d:Lcom/xueqiu/chart/a/c;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 41
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->h:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 41
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->h:Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 41
    new-instance v0, Lcom/xueqiu/chart/b/d;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/d;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->e:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->h:Landroid/graphics/Paint;

    .line 37
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->m:Lcom/xueqiu/chart/b/g;

    .line 15037
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 110
    const-string v1, "AQJ"

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->m:Lcom/xueqiu/chart/b/g;

    .line 15077
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 16032
    iget v2, v2, Lcom/xueqiu/chart/b/j;->g:I

    .line 111
    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 112
    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 113
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    .line 114
    sget-object v2, Lcom/xueqiu/chart/view/BarLineChartBase$1;->a:[I

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->m:Lcom/xueqiu/chart/b/g;

    .line 16061
    iget v3, v3, Lcom/xueqiu/chart/b/g;->k:I

    .line 114
    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    float-to-int v0, v0

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/e;->e()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v6}, Lcom/xueqiu/chart/b/e;->e()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->u:Landroid/graphics/Rect;

    .line 126
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->u:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 127
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v4}, Lcom/xueqiu/chart/b/e;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 128
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v4}, Lcom/xueqiu/chart/b/e;->e()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 17034
    iget-object v3, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 131
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/xueqiu/chart/c/c;->b(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 116
    :pswitch_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v5}, Lcom/xueqiu/chart/b/g;->a()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->s:Landroid/graphics/Rect;

    .line 119
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v5}, Lcom/xueqiu/chart/b/g;->e()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcom/xueqiu/chart/view/BarLineChartBase$1;->b:[I

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 17050
    iget v1, v1, Lcom/xueqiu/chart/b/e;->g:I

    .line 134
    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 142
    :goto_2
    return-void

    .line 136
    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 137
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/e;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 139
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v5}, Lcom/xueqiu/chart/b/e;->c()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->v:Landroid/graphics/Rect;

    goto :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 134
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/xueqiu/chart/a/a;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 57
    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    .line 58
    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->d:Lcom/xueqiu/chart/a/c;

    .line 1020
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 1039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 61
    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    .line 2027
    iget v5, v5, Lcom/xueqiu/chart/a/c;->a:F

    .line 3027
    iget v6, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 61
    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 62
    :cond_2
    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    .line 64
    :cond_3
    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->d:Lcom/xueqiu/chart/a/c;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->d:Lcom/xueqiu/chart/a/c;

    .line 4027
    iget v5, v5, Lcom/xueqiu/chart/a/c;->a:F

    .line 5027
    iget v6, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 64
    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 65
    :cond_4
    iput-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->d:Lcom/xueqiu/chart/a/c;

    goto :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    if-nez v0, :cond_7

    .line 106
    :cond_6
    return-void

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->c:Lcom/xueqiu/chart/a/c;

    .line 6027
    iget v2, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 74
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->d:Lcom/xueqiu/chart/a/c;

    .line 7027
    iget v0, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 75
    cmpl-float v4, v2, v1

    if-lez v4, :cond_8

    move v2, v1

    .line 78
    :cond_8
    cmpg-float v4, v0, v1

    if-gez v4, :cond_9

    move v0, v1

    .line 81
    :cond_9
    sub-float v1, v0, v2

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 7043
    iget v4, v4, Lcom/xueqiu/chart/b/d;->c:I

    .line 81
    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 82
    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 7051
    iget-object v4, v4, Lcom/xueqiu/chart/b/d;->f:Lcom/xueqiu/chart/c/a;

    .line 82
    invoke-interface {v4, v1}, Lcom/xueqiu/chart/c/a;->a(F)F

    move-result v4

    .line 83
    div-float v1, v2, v4

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 84
    div-float/2addr v0, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-float v2, v6

    .line 85
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 87
    :goto_1
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_a

    .line 88
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 8042
    iget-object v5, v5, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 89
    invoke-interface {v5, v0}, Lcom/xueqiu/chart/c/d;->a(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-float/2addr v0, v4

    goto :goto_1

    .line 91
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    const/4 v1, 0x1

    .line 9020
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 9039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 94
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 9043
    iget v0, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 94
    if-le v4, v0, :cond_b

    .line 95
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 10043
    iget v0, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 95
    div-int v0, v4, v0

    move v1, v0

    :cond_b
    move v2, v3

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 11043
    iget v0, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 97
    if-gt v2, v0, :cond_6

    if-ge v2, v4, :cond_6

    .line 99
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 12043
    iget v0, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 99
    if-ne v2, v0, :cond_c

    .line 13020
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 13039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 100
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 104
    :goto_3
    iget-object v5, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    .line 15035
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 104
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 14020
    :cond_c
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 14039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 102
    mul-int v5, v1, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    goto :goto_3
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 174
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 22059
    iget v2, v2, Lcom/xueqiu/chart/b/d;->d:F

    .line 174
    mul-float/2addr v1, v2

    add-float v2, v0, v1

    .line 175
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    .line 176
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 23059
    iget v4, v4, Lcom/xueqiu/chart/b/d;->d:F

    .line 176
    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    .line 23067
    iget v4, v4, Lcom/xueqiu/chart/b/d;->e:F

    .line 176
    sub-float/2addr v1, v4

    mul-float v4, v0, v1

    .line 177
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 178
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    .line 24034
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 178
    const-string v1, "A"

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v5

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    .line 25034
    iget-object v6, v6, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 181
    invoke-static {v6, v0}, Lcom/xueqiu/chart/c/c;->b(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    .line 182
    iget v7, p2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    iget v8, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->g:Ljava/util/List;

    .line 183
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float v9, v4, v9

    int-to-float v10, v1

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float v6, v9, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v7, v3, v5

    iget-object v8, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->n:Lcom/xueqiu/chart/b/e;

    .line 26034
    iget-object v8, v8, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method protected final c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 18034
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 146
    const-string v1, "A"

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    .line 147
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 149
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float v1, v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 19027
    iget-boolean v0, v0, Lcom/xueqiu/chart/b/d;->a:Z

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 19035
    iget-object v5, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 154
    sget-object v1, Lcom/xueqiu/chart/view/BarLineChartBase$1;->c:[I

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/e;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_1
    int-to-float v0, v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    .line 21035
    iget-object v1, v1, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v2, v1

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarLineChartBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/e;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 22034
    iget-object v2, v2, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 165
    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 156
    :pswitch_0
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 20034
    iget-object v1, v1, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 156
    invoke-static {v1, v6}, Lcom/xueqiu/chart/c/c;->b(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 157
    goto :goto_1

    .line 159
    :pswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 162
    :pswitch_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->o:Lcom/xueqiu/chart/b/e;

    .line 21034
    iget-object v1, v1, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 162
    invoke-static {v1, v6}, Lcom/xueqiu/chart/c/c;->b(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 169
    :cond_1
    return-void

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getXGrid()Lcom/xueqiu/chart/b/d;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->a:Lcom/xueqiu/chart/b/d;

    return-object v0
.end method

.method public getYGrid()Lcom/xueqiu/chart/b/d;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarLineChartBase;->b:Lcom/xueqiu/chart/b/d;

    return-object v0
.end method

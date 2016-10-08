.class public Lcom/xueqiu/android/common/widget/RadarChart;
.super Landroid/view/ViewGroup;
.source "RadarChart.java"


# instance fields
.field a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/xueqiu/android/common/widget/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 71
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "#ffaa00"

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    .line 46
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    .line 47
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    .line 48
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    .line 49
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    .line 50
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->n:F

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    .line 53
    const v0, 0x7f0d00c8

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    .line 54
    const v0, 0x7f0d00ca

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    .line 55
    const v0, 0x7f0d00cc

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->r:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->s:I

    .line 59
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    .line 62
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->w:Z

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string v0, "#ffaa00"

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    .line 46
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    .line 47
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    .line 48
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    .line 49
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    .line 50
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->n:F

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    .line 53
    const v0, 0x7f0d00c8

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    .line 54
    const v0, 0x7f0d00ca

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    .line 55
    const v0, 0x7f0d00cc

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->r:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->s:I

    .line 59
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    .line 62
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->w:Z

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string v0, "#ffaa00"

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    .line 46
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    .line 47
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    .line 48
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    .line 49
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    .line 50
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->n:F

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    .line 53
    const v0, 0x7f0d00c8

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    .line 54
    const v0, 0x7f0d00ca

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    .line 55
    const v0, 0x7f0d00cc

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->r:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->s:I

    .line 59
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    .line 62
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->w:Z

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    .line 82
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->a()V

    .line 83
    return-void
.end method

.method private static a(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p1

    float-to-double v6, p2

    .line 202
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 203
    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 87
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/common/widget/RadarChart;->setWillNotDraw(Z)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    .line 93
    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    aput v3, v2, v6

    iget v3, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    aput v3, v2, v5

    iget v3, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->f:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    const/16 v1, 0x168

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v4, v1

    .line 219
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    .line 220
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v6

    .line 221
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v7

    .line 224
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 225
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 226
    iget v2, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    iget v8, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    iget v9, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    sub-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    iget v8, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    div-float/2addr v1, v8

    add-float/2addr v1, v2

    .line 227
    int-to-float v2, v3

    mul-float/2addr v2, v4

    iget v8, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    add-float/2addr v2, v8

    invoke-static {v5, v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->a(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v8

    .line 229
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 230
    iget-object v10, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v10, v1, v11, v2, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 231
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 232
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 234
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v8, Landroid/graphics/PointF;->x:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 236
    iget-object v10, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v8, Landroid/graphics/PointF;->x:F

    sub-float v1, v12, v1

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iget v12, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v6

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v6

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v14

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-direct {v11, v1, v12, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    sub-float/2addr v2, v7

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    iget-object v9, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 239
    :cond_0
    iget-object v9, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v6

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v6

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v13

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget v13, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v13

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-direct {v10, v11, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v7

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    iget-object v9, p0, Lcom/xueqiu/android/common/widget/RadarChart;->e:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 243
    :cond_1
    return-void
.end method

.method private getCenter()Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public getCircleWidth()F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    return-object v0
.end method

.method public getOutRadius()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    return v0
.end method

.method public getRectListener()Lcom/xueqiu/android/common/widget/ad;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->x:Lcom/xueqiu/android/common/widget/ad;

    return-object v0
.end method

.method public getScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    return-object v0
.end method

.method public getSpacing()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1137
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getCenter()Landroid/graphics/PointF;

    move-result-object v3

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1140
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v0, v2

    .line 1141
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1143
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    iget v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    invoke-static {v5}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1144
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    int-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1149
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getCenter()Landroid/graphics/PointF;

    move-result-object v3

    .line 1151
    const/16 v0, 0x168

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v4, v0

    .line 1152
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move v1, v2

    .line 1154
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1156
    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    iget v8, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    sub-float/2addr v7, v8

    int-to-float v0, v0

    mul-float/2addr v0, v7

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    div-float/2addr v0, v7

    add-float/2addr v0, v6

    .line 1157
    int-to-float v6, v1

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    add-float/2addr v6, v7

    invoke-static {v3, v0, v6}, Lcom/xueqiu/android/common/widget/RadarChart;->a(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1158
    if-nez v1, :cond_3

    .line 1159
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1154
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1161
    :cond_3
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 1164
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 1165
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1166
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1167
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1169
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1171
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1172
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1173
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move v1, v2

    .line 1179
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1180
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1181
    iget v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    sub-float/2addr v6, v7

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    div-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 1182
    int-to-float v5, v1

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->u:F

    add-float/2addr v5, v6

    invoke-static {v3, v0, v5}, Lcom/xueqiu/android/common/widget/RadarChart;->a(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1183
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1184
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1186
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1187
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->r:I

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1188
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1189
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1191
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    div-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1193
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    const/high16 v7, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/RadarChart;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1208
    :cond_5
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/RadarChart;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 1209
    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->s:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1210
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1211
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1212
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    sub-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1334
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->w:Z

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/RadarChart;->a(Landroid/graphics/Canvas;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->x:Lcom/xueqiu/android/common/widget/ad;

    if-eqz v0, :cond_1

    .line 274
    const/4 v2, 0x1

    .line 276
    :cond_1
    return v2

    :pswitch_1
    move v1, v2

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iput v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    goto :goto_0

    .line 258
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 266
    :pswitch_2
    iget v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->x:Lcom/xueqiu/android/common/widget/ad;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->x:Lcom/xueqiu/android/common/widget/ad;

    iget v1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/ad;->a(I)V

    .line 269
    :cond_3
    iput v5, p0, Lcom/xueqiu/android/common/widget/RadarChart;->a:I

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCircleWidth(F)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->o:F

    .line 359
    return-void
.end method

.method public setDrawLabel(Z)V
    .locals 0

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->w:Z

    .line 339
    return-void
.end method

.method public setInRadius(F)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->k:F

    .line 314
    return-void
.end method

.method public setItemRadius(F)V
    .locals 0

    .prologue
    .line 325
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->m:F

    .line 326
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->h:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setOutRadius(F)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->j:F

    .line 310
    return-void
.end method

.method public setPaintColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->i:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setRadarBg(I)V
    .locals 0

    .prologue
    .line 362
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->p:I

    .line 363
    return-void
.end method

.method public setRadarCircle(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->q:I

    .line 367
    return-void
.end method

.method public setRadarPoint(I)V
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->r:I

    .line 371
    return-void
.end method

.method public setRectListener(Lcom/xueqiu/android/common/widget/ad;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->x:Lcom/xueqiu/android/common/widget/ad;

    .line 302
    return-void
.end method

.method public setScores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->g:Ljava/util/List;

    .line 286
    return-void
.end method

.method public setSpacing(F)V
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->l:F

    .line 322
    return-void
.end method

.method public setSubMaxScore(F)V
    .locals 0

    .prologue
    .line 346
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->t:F

    .line 347
    return-void
.end method

.method public setTotalScore(I)V
    .locals 0

    .prologue
    .line 342
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->s:I

    .line 343
    return-void
.end method

.method public setValueSize(F)V
    .locals 1

    .prologue
    .line 329
    iput p1, p0, Lcom/xueqiu/android/common/widget/RadarChart;->n:F

    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/RadarChart;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    return-void
.end method

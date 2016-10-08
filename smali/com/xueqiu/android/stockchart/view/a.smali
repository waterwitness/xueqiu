.class final Lcom/xueqiu/android/stockchart/view/a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "EventView.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/view/EventView;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/stockchart/view/EventView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/stockchart/view/EventView;B)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/a;-><init>(Lcom/xueqiu/android/stockchart/view/EventView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->f(Lcom/xueqiu/android/stockchart/view/EventView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->b(Lcom/xueqiu/android/stockchart/view/EventView;)Z

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v1}, Lcom/xueqiu/android/stockchart/view/EventView;->g(Lcom/xueqiu/android/stockchart/view/EventView;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->a(Lcom/xueqiu/android/stockchart/view/EventView;F)F

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    const v1, 0x3dcccccd    # 0.1f

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/view/EventView;->g(Lcom/xueqiu/android/stockchart/view/EventView;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->a(Lcom/xueqiu/android/stockchart/view/EventView;F)F

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->h(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->h(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/view/EventView;->g(Lcom/xueqiu/android/stockchart/view/EventView;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/d;->a(FF)V

    .line 242
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->f(Lcom/xueqiu/android/stockchart/view/EventView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->f(Lcom/xueqiu/android/stockchart/view/EventView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->h(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/a;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->h(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/stockchart/a/d;->a()V

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/community/widget/a;
.super Ljava/lang/Object;
.source "PullToZoomListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:Z

.field c:F

.field d:J

.field final synthetic e:Lcom/xueqiu/android/community/widget/PullToZoomListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/PullToZoomListView;)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 247
    iget-boolean v0, p0, Lcom/xueqiu/android/community/widget/a;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/widget/a;->c:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/widget/a;->d:J

    long-to-float v1, v2

    sub-float/2addr v0, v1

    iget-wide v2, p0, Lcom/xueqiu/android/community/widget/a;->a:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 250
    iget v1, p0, Lcom/xueqiu/android/community/widget/a;->c:F

    iget v2, p0, Lcom/xueqiu/android/community/widget/a;->c:F

    sub-float/2addr v2, v4

    .line 251
    invoke-static {}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 252
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Lcom/xueqiu/android/community/widget/PullToZoomListView;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 254
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b(Lcom/xueqiu/android/community/widget/PullToZoomListView;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->b(Lcom/xueqiu/android/community/widget/PullToZoomListView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Lcom/xueqiu/android/community/widget/PullToZoomListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/a;->e:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/a;->b:Z

    goto :goto_0
.end method

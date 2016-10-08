.class final Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(FF)V
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:D

.field final synthetic d:J

.field final synthetic e:D

.field final synthetic f:D

.field final synthetic g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;JDD)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 910
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    const-wide v0, 0x4072c00000000000L    # 300.0

    iput-wide v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:D

    iput-wide p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->d:J

    iput-wide p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->e:D

    iput-wide p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:D

    .line 913
    iput-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 918
    iget-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:D

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->d:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 919
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Lit/sephiroth/android/library/a/b;

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->e:D

    iget-wide v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:D

    invoke-interface/range {v1 .. v7}, Lit/sephiroth/android/library/a/b;->a(DDD)D

    move-result-wide v8

    .line 920
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Lit/sephiroth/android/library/a/b;

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->f:D

    iget-wide v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:D

    invoke-interface/range {v1 .. v7}, Lit/sephiroth/android/library/a/b;->a(DDD)D

    move-result-wide v0

    .line 921
    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-wide v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:D

    sub-double v6, v8, v6

    iget-wide v10, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:D

    sub-double v10, v0, v10

    invoke-virtual {v4, v6, v7, v10, v11}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(DD)V

    .line 922
    iput-wide v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->a:D

    .line 923
    iput-wide v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->b:D

    .line 924
    iget-wide v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->c:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_1

    .line 925
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 928
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v12

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(FF)V

    goto :goto_0
.end method

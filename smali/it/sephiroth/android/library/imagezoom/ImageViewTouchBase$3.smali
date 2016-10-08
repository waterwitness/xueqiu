.class final Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFFF)V
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 1

    .prologue
    .line 949
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->a:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->b:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->c:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->d:F

    iput p7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->e:F

    iput p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 954
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->a:F

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 955
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Lit/sephiroth/android/library/a/b;

    float-to-double v2, v0

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->c:F

    float-to-double v4, v4

    iget v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->a:F

    float-to-double v6, v6

    invoke-interface/range {v1 .. v7}, Lit/sephiroth/android/library/a/b;->b(DDD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 956
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->d:F

    add-float/2addr v1, v3

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->e:F

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 957
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 958
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(F)V

    .line 961
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;->g:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    goto :goto_0
.end method

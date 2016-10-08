.class final Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->b:Landroid/graphics/Matrix;

    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->c:F

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 426
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->b:Landroid/graphics/Matrix;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->c:F

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->d:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 427
    return-void
.end method

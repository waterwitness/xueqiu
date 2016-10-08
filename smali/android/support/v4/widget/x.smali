.class final Landroid/support/v4/widget/x;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Z

.field l:Landroid/graphics/Path;

.field m:F

.field n:D

.field o:I

.field p:I

.field q:I

.field final r:Landroid/graphics/Paint;

.field s:I

.field t:I

.field private final u:Landroid/graphics/drawable/Drawable$Callback;

.field private v:[I

.field private w:I


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 610
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/x;->w:I

    .line 611
    iget-object v0, p0, Landroid/support/v4/widget/x;->v:[I

    iget v1, p0, Landroid/support/v4/widget/x;->w:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/x;->t:I

    .line 612
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 780
    iput v0, p0, Landroid/support/v4/widget/x;->h:F

    .line 781
    iput v0, p0, Landroid/support/v4/widget/x;->i:F

    .line 782
    iput v0, p0, Landroid/support/v4/widget/x;->j:F

    .line 1668
    iput v0, p0, Landroid/support/v4/widget/x;->d:F

    .line 1669
    invoke-virtual {p0}, Landroid/support/v4/widget/x;->c()V

    .line 1691
    iput v0, p0, Landroid/support/v4/widget/x;->e:F

    .line 1692
    invoke-virtual {p0}, Landroid/support/v4/widget/x;->c()V

    .line 1702
    iput v0, p0, Landroid/support/v4/widget/x;->f:F

    .line 1703
    invoke-virtual {p0}, Landroid/support/v4/widget/x;->c()V

    .line 786
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v4/widget/x;->u:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    return-void
.end method

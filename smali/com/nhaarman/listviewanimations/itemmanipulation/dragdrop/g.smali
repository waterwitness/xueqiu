.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field static final synthetic b:Z


# instance fields
.field public a:F

.field final synthetic c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 602
    const-class v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 636
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->a:F

    .line 619
    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    .line 624
    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    .line 637
    invoke-static {p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->d:I

    .line 639
    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 654
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->e(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a()I

    move-result v1

    .line 660
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 661
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->b()I

    move-result v3

    .line 662
    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->c()I

    move-result v4

    .line 663
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 664
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 666
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->d:I

    int-to-float v7, v7

    iget v8, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->a:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 667
    if-gtz v5, :cond_2

    if-lez v1, :cond_2

    .line 668
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    neg-int v1, v6

    invoke-interface {v0, v1, v9}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->b(II)V

    goto :goto_0

    .line 669
    :cond_2
    add-int/2addr v0, v5

    if-lt v0, v2, :cond_0

    add-int v0, v1, v3

    if-ge v0, v4, :cond_0

    .line 670
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v0

    invoke-interface {v0, v6, v9}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->b(II)V

    goto :goto_0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, -0x1

    const/4 v7, -0x1

    .line 676
    iput p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->g:I

    .line 677
    add-int v0, p2, p3

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->h:I

    .line 679
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->g:I

    :goto_0
    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    .line 680
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->h:I

    :goto_1
    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    .line 682
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 683
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 679
    :cond_0
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    goto :goto_0

    .line 680
    :cond_1
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    goto :goto_1

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v1

    .line 1085
    iget v4, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->c:F

    iget v5, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    sub-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->c:F

    .line 1086
    iput v0, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->e(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1709
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->g:I

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    if-lt v0, v1, :cond_6

    .line 1730
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->h:I

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    if-gt v0, v1, :cond_8

    .line 693
    :cond_5
    :goto_3
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->g:I

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->e:I

    .line 694
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->h:I

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->f:I

    .line 695
    return-void

    .line 1713
    :cond_6
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)I

    move-result v0

    .line 1714
    if-eq v0, v7, :cond_4

    .line 1718
    add-int/lit8 v1, v0, -0x1

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v4

    sub-int/2addr v1, v4

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1719
    :goto_4
    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4, v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v4

    .line 1720
    if-eqz v4, :cond_4

    .line 1721
    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v4, v0, v1, v6}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;JF)V

    goto :goto_2

    :cond_7
    move-wide v0, v2

    .line 1718
    goto :goto_4

    .line 1734
    :cond_8
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)I

    move-result v0

    .line 1735
    if-eq v0, v7, :cond_5

    .line 1739
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1742
    :cond_9
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;

    move-result-object v0

    .line 1743
    if-eqz v0, :cond_5

    .line 1744
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;JF)V

    goto/16 :goto_3
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 699
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->a()V

    .line 702
    :cond_0
    return-void
.end method

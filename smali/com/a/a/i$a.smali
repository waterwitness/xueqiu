.class final Lcom/a/a/i$a;
.super Ljava/lang/Object;
.source "PDFView.java"

# interfaces
.implements Lcom/a/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/i;->a(II)I
.end annotation


# instance fields
.field a:I

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/a/a/i;


# direct methods
.method constructor <init>(Lcom/a/a/i;FFIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 644
    iput-object p1, p0, Lcom/a/a/i$a;->g:Lcom/a/a/i;

    iput p2, p0, Lcom/a/a/i$a;->b:F

    iput p3, p0, Lcom/a/a/i$a;->c:F

    iput p4, p0, Lcom/a/a/i$a;->d:I

    iput p5, p0, Lcom/a/a/i$a;->e:I

    iput p6, p0, Lcom/a/a/i$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/i$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 13

    .prologue
    .line 651
    iget v0, p0, Lcom/a/a/i$a;->b:F

    int-to-float v1, p2

    mul-float v2, v0, v1

    .line 652
    iget v0, p0, Lcom/a/a/i$a;->c:F

    int-to-float v1, p1

    mul-float v3, v0, v1

    .line 653
    iget v1, p0, Lcom/a/a/i$a;->b:F

    .line 654
    iget v0, p0, Lcom/a/a/i$a;->c:F

    .line 658
    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v4, v1

    .line 659
    const/high16 v5, 0x43800000    # 256.0f

    div-float/2addr v5, v0

    .line 660
    add-float v6, v2, v1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 661
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 663
    :cond_0
    add-float v6, v3, v0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 664
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    .line 666
    :cond_1
    mul-float v8, v4, v1

    .line 667
    mul-float v9, v5, v0

    .line 668
    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v1, v2

    add-float/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/a/a/i$a;->g:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/e;

    move-result-object v7

    iget v1, p0, Lcom/a/a/i$a;->d:I

    iget v2, p0, Lcom/a/a/i$a;->e:I

    iget v10, p0, Lcom/a/a/i$a;->a:I

    .line 1085
    new-instance v0, Lcom/a/a/c/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    .line 1088
    iget-object v1, v7, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v1, v0}, Lcom/a/a/e;->find(Ljava/util/PriorityQueue;Lcom/a/a/c/a;)Lcom/a/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1089
    iget-object v0, v7, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 2083
    iput v10, v1, Lcom/a/a/c/a;->e:I

    .line 1091
    iget-object v0, v7, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 1092
    const/4 v0, 0x1

    .line 675
    :goto_0
    if-nez v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/a/a/i$a;->g:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->b(Lcom/a/a/i;)Lcom/a/a/l;

    move-result-object v5

    iget v6, p0, Lcom/a/a/i$a;->d:I

    iget v7, p0, Lcom/a/a/i$a;->e:I

    const/4 v11, 0x0

    iget v12, p0, Lcom/a/a/i$a;->a:I

    move-object v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/a/a/l;->a(IIFFLandroid/graphics/RectF;ZI)V

    .line 686
    :cond_2
    iget v0, p0, Lcom/a/a/i$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/i$a;->a:I

    .line 687
    iget v0, p0, Lcom/a/a/i$a;->a:I

    iget v1, p0, Lcom/a/a/i$a;->f:I

    if-lt v0, v1, :cond_5

    .line 689
    const/4 v0, 0x0

    .line 691
    :goto_1
    return v0

    .line 1095
    :cond_3
    iget-object v1, v7, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v1, v0}, Lcom/a/a/e;->find(Ljava/util/PriorityQueue;Lcom/a/a/c/a;)Lcom/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 691
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

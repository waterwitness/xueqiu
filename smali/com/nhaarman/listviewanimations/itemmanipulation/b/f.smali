.class public abstract Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;
.super Ljava/lang/Object;
.source "SwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/b;


# instance fields
.field private final a:I

.field final b:Lcom/nhaarman/listviewanimations/a/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public c:F

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field private final i:I

.field private final j:I

.field private final k:J

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/view/VelocityTracker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;)I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    return v0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 676
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 677
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    move-object p1, v0

    .line 682
    goto :goto_0

    .line 685
    :cond_0
    return-object v1
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    if-ge v0, v6, :cond_0

    .line 540
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    .line 544
    :cond_0
    const-string v1, "translationX"

    new-array v2, v5, [F

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    int-to-float v0, v0

    :goto_0
    aput v0, v2, v4

    invoke-static {p1, v1, v2}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v0

    .line 545
    const-string v1, "alpha"

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v1

    .line 547
    new-instance v2, Lcom/c/a/d;

    invoke-direct {v2}, Lcom/c/a/d;-><init>()V

    .line 548
    new-array v3, v6, [Lcom/c/a/a;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/c/a/d;->a([Lcom/c/a/a;)V

    .line 549
    iget-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->k:J

    invoke-virtual {v2, v0, v1}, Lcom/c/a/d;->b(J)Lcom/c/a/d;

    .line 550
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/g;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;IB)V

    invoke-virtual {v2, v0}, Lcom/c/a/d;->a(Lcom/c/a/b;)V

    .line 551
    invoke-virtual {v2}, Lcom/c/a/d;->a()V

    .line 552
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 558
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    const-string v1, "translationX"

    new-array v2, v6, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v1

    .line 565
    new-instance v2, Lcom/c/a/d;

    invoke-direct {v2}, Lcom/c/a/d;-><init>()V

    .line 566
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/c/a/a;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/c/a/d;->a([Lcom/c/a/a;)V

    .line 567
    iget-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->k:J

    invoke-virtual {v2, v0, v1}, Lcom/c/a/d;->b(J)Lcom/c/a/d;

    .line 568
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    iget v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/h;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;Landroid/view/View;IB)V

    invoke-virtual {v2, v0}, Lcom/c/a/d;->a(Lcom/c/a/b;)V

    .line 569
    invoke-virtual {v2}, Lcom/c/a/d;->a()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 580
    :cond_0
    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    .line 581
    iput v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->m:F

    .line 582
    iput v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->n:F

    .line 583
    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    .line 584
    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    .line 586
    iput-boolean v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    .line 587
    iput-boolean v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->o:Z

    .line 588
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->d()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->e()I

    move-result v1

    .line 267
    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View for position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not visible!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-static {v0, p1}, Lcom/nhaarman/listviewanimations/a/b;->a(Lcom/nhaarman/listviewanimations/a/d;I)Landroid/view/View;

    move-result-object v0

    .line 272
    if-nez v0, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view found for position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Landroid/view/View;IZ)V

    .line 277
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    .line 278
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    .line 279
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 653
    .line 654
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/c/c/a;->a(Landroid/view/View;F)V

    .line 655
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/c/c/a;->b(Landroid/view/View;F)V

    .line 656
    return-void
.end method

.method public abstract a(Landroid/view/View;I)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public abstract c(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->i()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    if-nez v0, :cond_3

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->f()I

    move-result v0

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->h()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    .line 301
    :cond_3
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 302
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    .line 306
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1327
    :pswitch_0
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->u:Z

    if-eqz v0, :cond_0

    .line 1371
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1372
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->g()I

    move-result v6

    .line 1373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v7, v0

    .line 1374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    .line 1375
    const/4 v1, 0x0

    move v4, v2

    .line 1376
    :goto_1
    if-ge v4, v6, :cond_5

    if-nez v1, :cond_5

    .line 1377
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0, v4}, Lcom/nhaarman/listviewanimations/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_16

    .line 1379
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1380
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1376
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_1

    .line 1332
    :cond_5
    if-eqz v1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/a/b;->a(Lcom/nhaarman/listviewanimations/a/d;Landroid/view/View;)I

    move-result v4

    .line 1396
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->i()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v2

    .line 1337
    :goto_3
    iput-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->o:Z

    .line 1340
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    if-ge v4, v0, :cond_0

    .line 1344
    if-eqz p1, :cond_6

    .line 1345
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1408
    :cond_6
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->e:Z

    if-eqz v0, :cond_a

    .line 1409
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1350
    :cond_7
    :goto_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->m:F

    .line 1351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->n:F

    .line 1353
    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    .line 1354
    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    .line 1355
    iput v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    .line 1357
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    .line 1358
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v2, v3

    .line 1359
    goto/16 :goto_0

    .line 1400
    :cond_8
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;

    if-eqz v0, :cond_9

    .line 1401
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->i()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    .line 1402
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a;->a()Z

    move-result v0

    goto :goto_3

    :cond_9
    move v0, v3

    .line 1404
    goto :goto_3

    .line 1410
    :cond_a
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->f:I

    if-eqz v0, :cond_7

    .line 1411
    iput-boolean v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->e:Z

    .line 1413
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_7

    .line 1415
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v2}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1417
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 2424
    :pswitch_1
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->m:F

    sub-float/2addr v0, v1

    .line 2431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->n:F

    sub-float/2addr v1, v4

    .line 2433
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v4, v1

    if-lez v1, :cond_c

    .line 2434
    iget-boolean v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    if-nez v1, :cond_b

    .line 2435
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    .line 2438
    :cond_b
    iput-boolean v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    .line 2439
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2442
    if-eqz p1, :cond_c

    .line 2443
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2445
    invoke-virtual {p1, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2446
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2450
    :cond_c
    iget-boolean v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    if-eqz v1, :cond_0

    .line 2451
    iget-boolean v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->o:Z

    if-eqz v1, :cond_d

    .line 2452
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/c/c/a;->b(Landroid/view/View;F)V

    .line 2453
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->c:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float v0, v6, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Lcom/c/c/a;->a(Landroid/view/View;F)V

    :goto_5
    move v2, v3

    .line 2457
    goto/16 :goto_0

    .line 2455
    :cond_d
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->r:Landroid/view/View;

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/c/c/a;->b(Landroid/view/View;F)V

    goto :goto_5

    .line 2463
    :pswitch_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2467
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    if-eq v0, v4, :cond_e

    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    if-eqz v0, :cond_e

    .line 2469
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b()V

    .line 2472
    :cond_e
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->c()V

    goto/16 :goto_0

    .line 2477
    :pswitch_3
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2481
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->d:Z

    if-eqz v0, :cond_10

    .line 2485
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->o:Z

    if-eqz v0, :cond_15

    .line 2486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->m:F

    sub-float/2addr v0, v1

    .line 2488
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2489
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2491
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2492
    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2494
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->l:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    .line 2496
    cmpl-float v0, v0, v7

    if-lez v0, :cond_11

    move v0, v3

    .line 2504
    :goto_6
    if-eqz v3, :cond_14

    .line 2506
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    invoke-virtual {p0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->c(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2507
    iget v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->t:I

    .line 2526
    :cond_f
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 2527
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->q:Landroid/view/View;

    iget v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->s:I

    invoke-direct {p0, v1, v3, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Landroid/view/View;IZ)V

    .line 2516
    :cond_10
    :goto_7
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->c()V

    goto/16 :goto_0

    :cond_11
    move v0, v2

    .line 2496
    goto :goto_6

    .line 2497
    :cond_12
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->i:I

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_15

    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->j:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_15

    cmpg-float v0, v4, v1

    if-gez v0, :cond_15

    .line 2499
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_13

    move v0, v3

    goto :goto_6

    :cond_13
    move v0, v2

    goto :goto_6

    .line 2512
    :cond_14
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b()V

    goto :goto_7

    :cond_15
    move v0, v2

    move v3, v2

    goto :goto_6

    :cond_16
    move-object v0, v1

    goto/16 :goto_2

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

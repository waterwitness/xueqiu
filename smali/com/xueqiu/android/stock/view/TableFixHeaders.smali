.class public Lcom/xueqiu/android/stock/view/TableFixHeaders;
.super Landroid/view/ViewGroup;
.source "TableFixHeaders.java"


# instance fields
.field private A:Landroid/view/VelocityTracker;

.field private B:I

.field private C:Z

.field private D:Lcom/xueqiu/android/stock/q;

.field public a:Lcom/xueqiu/android/stock/a/ai;

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:[I

.field private n:Landroid/view/View;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/xueqiu/android/stock/view/c;

.field private t:Lcom/xueqiu/android/stock/view/e;

.field private u:Z

.field private final v:[Landroid/widget/ImageView;

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:Lcom/xueqiu/android/stock/view/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->C:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->n:Landroid/view/View;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const v1, 0x7f0203c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->w:I

    .line 129
    new-instance v0, Lcom/xueqiu/android/stock/view/d;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/stock/view/d;-><init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->z:Lcom/xueqiu/android/stock/view/d;

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->B:I

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->x:I

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->y:I

    .line 134
    return-void
.end method

.method private static a(II[II)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    if-eqz p0, :cond_0

    .line 682
    if-gez p0, :cond_1

    .line 683
    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    neg-int v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 687
    :cond_0
    :goto_0
    return p0

    .line 685
    :cond_1
    add-int/lit8 v0, p1, 0x1

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    aget v1, p2, v2

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0
.end method

.method private static a([III)I
    .locals 3

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 606
    add-int v1, p2, p1

    .line 607
    :goto_0
    if-ge p1, v1, :cond_0

    .line 608
    aget v2, p0, p1

    add-int/2addr v0, v2

    .line 607
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 610
    :cond_0
    return v0
.end method

.method private a(IIII)Landroid/view/View;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x1

    .line 792
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/stock/a/ai;->b(I)I

    move-result v0

    .line 794
    if-eq v0, v3, :cond_0

    .line 797
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->s:Lcom/xueqiu/android/stock/view/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/view/c;->a(I)Landroid/view/View;

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v1, p1, p2, p0}, Lcom/xueqiu/android/stock/a/ai;->a(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 800
    const v2, 0x7f0e0068

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 801
    const v0, 0x7f0e0067

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 802
    const v0, 0x7f0e0066

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 803
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 14809
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 14810
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->addView(Landroid/view/View;I)V

    .line 805
    :goto_0
    return-object v1

    .line 14811
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p2, v3, :cond_3

    .line 14812
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 14814
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private a(IIIIII)Landroid/view/View;
    .locals 2

    .prologue
    .line 761
    sub-int v0, p5, p3

    sub-int v1, p6, p4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIII)Landroid/view/View;

    move-result-object v0

    .line 762
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 763
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 397
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II)V

    .line 398
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 449
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 406
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIII)Landroid/view/View;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 409
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 410
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIII)Landroid/view/View;

    move-result-object v3

    .line 412
    invoke-interface {v0, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 413
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 414
    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/view/TableFixHeaders;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    return v0
.end method

.method private static a(II[I)[I
    .locals 2

    .prologue
    .line 703
    if-eqz p0, :cond_1

    .line 705
    if-lez p0, :cond_0

    .line 706
    :goto_0
    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    if-ge v0, p0, :cond_1

    .line 707
    add-int/lit8 p1, p1, 0x1

    .line 708
    aget v0, p2, p1

    sub-int/2addr p0, v0

    goto :goto_0

    .line 711
    :cond_0
    :goto_1
    if-gez p0, :cond_1

    .line 712
    aget v0, p2, p1

    add-int/2addr p0, v0

    .line 713
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 716
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b(II)V

    .line 403
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->removeView(Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 456
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 457
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 6

    .prologue
    .line 418
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIII)Landroid/view/View;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/2addr v2, v0

    .line 423
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    :goto_0
    if-ge v0, v2, :cond_0

    .line 424
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIII)Landroid/view/View;

    move-result-object v3

    .line 425
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 428
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 675
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II[II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 676
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II[II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 677
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollX()I

    move-result v1

    .line 721
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollY()I

    move-result v2

    .line 722
    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v1, v3, v0

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    .line 725
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollX()I

    move-result v5

    sub-int v1, v5, v1

    aput v1, v3, v4

    const/4 v1, 0x3

    .line 726
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollY()I

    move-result v4

    sub-int v2, v4, v2

    aput v2, v3, v1

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 730
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    aget v2, v3, v0

    int-to-float v2, v2

    iget v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->w:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 14739
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 14740
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 729
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14742
    :cond_1
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_1

    .line 734
    :cond_2
    return-void
.end method

.method private getFilledHeight()I
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getFilledWidth()I
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getMaxScrollX()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 5601
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    .line 372
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMaxScrollY()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    .line 6601
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    .line 376
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 770
    const v0, 0x7f0e0067

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 771
    const v1, 0x7f0e0066

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 773
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 774
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 788
    :goto_0
    return v0

    .line 776
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 777
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 778
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 785
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 779
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 780
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1
.end method

.method public getActualScrollX()I
    .locals 4

    .prologue
    .line 364
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getActualScrollY()I
    .locals 4

    .prologue
    .line 368
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAdapter()Lcom/xueqiu/android/stock/a/ai;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 177
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->h:I

    goto :goto_0

    .line 182
    :pswitch_2
    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 183
    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 185
    const-string v4, "action move"

    const-string v5, "x2-%d, y2-%d, %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget v8, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->B:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->B:I

    if-gt v2, v4, :cond_1

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->B:I

    if-le v3, v2, :cond_0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_5

    .line 617
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    .line 11752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->n:Landroid/view/View;

    .line 11753
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11754
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11755
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11757
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->removeAllViews()V

    .line 620
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    if-eqz v0, :cond_5

    .line 621
    sub-int v0, p4, p2

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    .line 622
    sub-int v0, p5, p3

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    .line 626
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 12601
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 627
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    .line 13601
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v2

    .line 627
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 630
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->v:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->w:I

    sub-int v3, v0, v3

    .line 13747
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 13748
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->addView(Landroid/view/View;)V

    .line 633
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v6, 0x0

    aget v6, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIIIII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->n:Landroid/view/View;

    .line 635
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c()V

    .line 14693
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II[I)[I

    move-result-object v0

    .line 14694
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 14695
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 14697
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II[I)[I

    move-result-object v0

    .line 14698
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 14699
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int v3, v0, v1

    .line 639
    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    if-ge v3, v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    add-int v5, v3, v0

    .line 641
    const/4 v1, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v6, 0x0

    aget v6, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIIIII)Landroid/view/View;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int v4, v0, v1

    .line 647
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    :goto_1
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    if-ge v4, v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    add-int v6, v4, v0

    .line 649
    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIIIII)Landroid/view/View;

    move-result-object v0

    .line 650
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_1

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int v4, v0, v1

    .line 655
    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    :goto_2
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    if-ge v1, v0, :cond_4

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    if-ge v4, v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    add-int v6, v4, v0

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int v3, v0, v2

    .line 658
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 659
    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    :goto_3
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    if-ge v2, v0, :cond_3

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    if-ge v3, v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v5

    add-int v5, v3, v0

    move-object v0, p0

    .line 661
    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(IIIIII)Landroid/view/View;

    move-result-object v0

    .line 662
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_3

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_2

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d()V

    .line 672
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    .line 534
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 535
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 536
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 537
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 542
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    if-eqz v0, :cond_c

    .line 543
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/a/ai;->a()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    .line 544
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/a/ai;->b()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    .line 546
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 547
    const/4 v0, -0x1

    :goto_0
    iget v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    if-ge v0, v5, :cond_0

    .line 548
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v6, v0, 0x1

    aget v7, v5, v6

    iget-object v8, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v8, v0}, Lcom/xueqiu/android/stock/a/ai;->a(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    .line 551
    const/4 v0, -0x1

    :goto_1
    iget v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    if-ge v0, v5, :cond_1

    .line 552
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v6, v0, 0x1

    aget v7, v5, v6

    iget-object v8, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v8}, Lcom/xueqiu/android/stock/a/ai;->c()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_1
    const/high16 v0, -0x80000000

    if-ne v3, v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 7601
    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v5}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    .line 556
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    .line 571
    :goto_2
    const/high16 v1, -0x80000000

    if-ne v4, v1, :cond_a

    .line 572
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    .line 10601
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    .line 572
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    :goto_3
    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->o:I

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 589
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 590
    const v2, 0x7fffffff

    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 592
    :cond_3
    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->p:I

    if-ge v2, v3, :cond_4

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 593
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 594
    const v2, 0x7fffffff

    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 597
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setMeasuredDimension(II)V

    .line 598
    return-void

    .line 557
    :cond_6
    if-nez v3, :cond_7

    .line 558
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 8601
    const/4 v1, 0x0

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    move v0, v1

    .line 558
    goto :goto_2

    .line 561
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    .line 9601
    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v5}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    .line 562
    if-ge v0, v1, :cond_9

    .line 563
    int-to-float v3, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 564
    const/4 v0, 0x1

    :goto_4
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    array-length v5, v5

    if-ge v0, v5, :cond_8

    .line 565
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget-object v6, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v6, v6, v0

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v5, v0

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 567
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v5

    sub-int v5, v1, v5

    aput v5, v0, v3

    :cond_9
    move v0, v1

    goto/16 :goto_2

    .line 573
    :cond_a
    if-nez v4, :cond_b

    .line 574
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    .line 11601
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    move v1, v2

    .line 576
    goto/16 :goto_3

    .line 579
    :cond_c
    const/high16 v0, -0x80000000

    if-eq v4, v0, :cond_d

    if-nez v3, :cond_e

    .line 580
    :cond_d
    const/4 v0, 0x0

    .line 581
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_e
    move v0, v1

    move v1, v2

    .line 584
    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_1
    :goto_0
    return v10

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->z:Lcom/xueqiu/android/stock/view/d;

    .line 1873
    iget-object v0, v0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 204
    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->z:Lcom/xueqiu/android/stock/view/d;

    .line 1877
    iget-object v1, v0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1878
    iget-object v0, v0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v0, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->h:I

    .line 209
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->i:I

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->i:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_1

    .line 212
    iput-boolean v10, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->C:Z

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->D:Lcom/xueqiu/android/stock/q;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->D:Lcom/xueqiu/android/stock/q;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/q;->j()V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v1, v0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v2, v0

    .line 222
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    sub-int/2addr v0, v1

    .line 223
    iget v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->h:I

    sub-int/2addr v3, v2

    .line 224
    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->g:I

    .line 225
    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->h:I

    .line 227
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->i:I

    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v2, v2, v5

    if-ge v1, v2, :cond_6

    .line 231
    :goto_1
    invoke-virtual {p0, v5, v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->scrollBy(II)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->i:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v1, v1, v5

    if-le v0, v1, :cond_3

    .line 236
    iput-boolean v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->C:Z

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->D:Lcom/xueqiu/android/stock/q;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->D:Lcom/xueqiu/android/stock/q;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/q;->k()V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    .line 242
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 243
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v3, v1

    .line 244
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v4, v0

    .line 246
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->x:I

    if-gt v0, v1, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->x:I

    if-le v0, v1, :cond_5

    .line 247
    :cond_4
    iget-object v9, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->z:Lcom/xueqiu/android/stock/view/d;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getActualScrollY()I

    move-result v2

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getMaxScrollY()I

    move-result v8

    .line 2844
    iget-object v0, v9, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2846
    iput v1, v9, Lcom/xueqiu/android/stock/view/d;->b:I

    .line 2847
    iput v2, v9, Lcom/xueqiu/android/stock/view/d;->c:I

    .line 2848
    iget-object v0, v9, Lcom/xueqiu/android/stock/view/d;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->A:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_6
    move v5, v0

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 465
    const v0, 0x7f0e0068

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->s:Lcom/xueqiu/android/stock/view/c;

    .line 7037
    iget-object v1, v1, Lcom/xueqiu/android/stock/view/c;->a:[Ljava/util/Stack;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 275
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 276
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 278
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c()V

    .line 290
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    if-eqz v0, :cond_7

    .line 292
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    if-lez v0, :cond_3

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    if-ge v0, v1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3431
    invoke-direct {p0, v9}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(I)V

    .line 297
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 298
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    goto :goto_1

    .line 300
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledWidth()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    if-ge v0, v1, :cond_7

    .line 301
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a()V

    goto :goto_2

    .line 304
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    if-lt v0, v1, :cond_4

    .line 3439
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(I)V

    goto :goto_3

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    :goto_4
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    if-gez v0, :cond_5

    .line 309
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 310
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    goto :goto_4

    .line 312
    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledWidth()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->q:I

    if-ge v0, v1, :cond_7

    .line 313
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a()V

    goto :goto_5

    .line 316
    :cond_6
    :goto_6
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    if-gez v0, :cond_7

    .line 4388
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v9}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(II)V

    .line 318
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 319
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    goto :goto_6

    .line 324
    :cond_7
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    if-eqz v0, :cond_e

    .line 326
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    if-lez v0, :cond_a

    .line 327
    :goto_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    if-ge v0, v1, :cond_9

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4435
    invoke-direct {p0, v9}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b(I)V

    .line 331
    :cond_8
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 332
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    goto :goto_7

    .line 334
    :cond_9
    :goto_8
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledHeight()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    if-ge v0, v1, :cond_e

    .line 335
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b()V

    goto :goto_8

    .line 338
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    if-lt v0, v1, :cond_b

    .line 4443
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b(I)V

    goto :goto_9

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 342
    :goto_a
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    if-gez v0, :cond_c

    .line 343
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 344
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    goto :goto_a

    .line 346
    :cond_c
    :goto_b
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->getFilledHeight()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->r:I

    if-ge v0, v1, :cond_e

    .line 347
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b()V

    goto :goto_b

    .line 350
    :cond_d
    :goto_c
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    if-gez v0, :cond_e

    .line 5392
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v9}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b(II)V

    .line 352
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 353
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    goto :goto_c

    .line 5474
    :cond_e
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v0, v0, v9

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int v1, v0, v1

    .line 5475
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 5476
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5477
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    add-int/2addr v3, v2

    .line 5478
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    aget v5, v5, v9

    invoke-virtual {v0, v2, v9, v3, v5}, Landroid/view/View;->layout(IIII)V

    move v2, v3

    .line 5480
    goto :goto_d

    .line 5482
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    aget v0, v0, v9

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int v1, v0, v1

    .line 5483
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 5484
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5485
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    add-int/2addr v3, v2

    .line 5486
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v5, v5, v9

    invoke-virtual {v0, v9, v2, v5, v3}, Landroid/view/View;->layout(IIII)V

    move v2, v3

    .line 5488
    goto :goto_e

    .line 5490
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    aget v0, v0, v9

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int v1, v0, v1

    .line 5491
    iget v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 5492
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    move v1, v0

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5493
    iget-object v3, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    add-int/2addr v3, v2

    .line 5494
    iget-object v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int v5, v4, v5

    .line 5495
    iget v4, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 5496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5497
    iget-object v6, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    add-int/lit8 v4, v4, 0x1

    aget v6, v6, v4

    add-int/2addr v6, v5

    .line 5498
    invoke-virtual {v0, v5, v2, v6, v3}, Landroid/view/View;->layout(IIII)V

    move v5, v6

    .line 5500
    goto :goto_10

    :cond_11
    move v2, v3

    .line 5502
    goto :goto_f

    .line 5503
    :cond_12
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->invalidate()V

    .line 360
    invoke-direct {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d()V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    if-eqz v0, :cond_0

    .line 263
    iput p1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 264
    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 266
    iput p2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 267
    iput v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->l:[I

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    invoke-static {v0, v3, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->m:[I

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    invoke-static {v1, v3, v2}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a([III)I

    move-result v1

    sub-int v1, p2, v1

    iget v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->scrollBy(II)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/xueqiu/android/stock/a/ai;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->t:Lcom/xueqiu/android/stock/view/e;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/a/ai;->b(Landroid/database/DataSetObserver;)V

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    .line 158
    new-instance v0, Lcom/xueqiu/android/stock/view/e;

    invoke-direct {v0, p0, v2}, Lcom/xueqiu/android/stock/view/e;-><init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->t:Lcom/xueqiu/android/stock/view/e;

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    iget-object v1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->t:Lcom/xueqiu/android/stock/view/e;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/a/ai;->a(Landroid/database/DataSetObserver;)V

    .line 161
    new-instance v0, Lcom/xueqiu/android/stock/view/c;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/view/c;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->s:Lcom/xueqiu/android/stock/view/c;

    .line 163
    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->j:I

    .line 164
    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->k:I

    .line 165
    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 166
    iput v2, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->u:Z

    .line 169
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->requestLayout()V

    .line 170
    return-void
.end method

.method public setTouchListener(Lcom/xueqiu/android/stock/q;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/TableFixHeaders;->D:Lcom/xueqiu/android/stock/q;

    .line 81
    return-void
.end method

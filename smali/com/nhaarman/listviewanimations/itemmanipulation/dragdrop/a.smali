.class public Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;
.super Ljava/lang/Object;
.source "DragAndDropHandler.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static final synthetic f:Z


# instance fields
.field public final a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:J

.field public d:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public e:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final i:I

.field private j:Landroid/widget/ListAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V
    .locals 1
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;

    invoke-direct {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V

    invoke-direct {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;)V

    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;)V
    .locals 3
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->m:I

    .line 141
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    .line 142
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->i()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->i()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Landroid/widget/ListAdapter;)V

    .line 146
    :cond_0
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;

    invoke-direct {v0, p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;

    .line 147
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;

    invoke-interface {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/b;

    invoke-direct {v0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/b;-><init>(B)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    .line 152
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;

    invoke-direct {v0, p0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/c;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;B)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->h:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;

    .line 157
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    .line 159
    invoke-interface {p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->i:I

    .line 161
    return-void

    .line 154
    :cond_1
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;

    invoke-direct {v0, p0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/e;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;B)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->h:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;

    goto :goto_0
.end method

.method private a(J)I
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(J)Landroid/view/View;

    move-result-object v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    const/4 v0, -0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v1, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    return-object p1
.end method

.method private a(Landroid/view/View;JF)V
    .locals 4

    .prologue
    .line 426
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 427
    :cond_0
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 428
    :cond_1
    sget-boolean v0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(Landroid/view/View;)I

    move-result v1

    .line 431
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(Landroid/view/View;)I

    move-result v2

    .line 433
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/nhaarman/listviewanimations/a/f;

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nhaarman/listviewanimations/a/f;->a(II)V

    .line 434
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 436
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 5129
    invoke-virtual {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v0, v0

    .line 5130
    :cond_3
    iget v2, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    .line 5131
    iget v2, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->b:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->b:F

    .line 437
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->h:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;

    invoke-interface {v0, p2, p3, p4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/i;->a(JF)V

    .line 438
    return-void
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Landroid/view/View;JF)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Landroid/view/View;JF)V

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    if-nez v2, :cond_0

    .line 465
    :goto_0
    return v0

    .line 452
    :cond_0
    sget-boolean v2, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 454
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 6112
    invoke-virtual {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 454
    aput v3, v2, v0

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 455
    new-instance v3, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/h;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;Landroid/view/View;B)V

    .line 456
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 457
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 460
    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    invoke-direct {p0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(J)I

    move-result v0

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v2

    sub-int/2addr v0, v2

    .line 461
    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->m:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->e:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;->a()V

    :cond_2
    move v0, v1

    .line 465
    goto :goto_0
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;J)I
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(J)I

    move-result v0

    return v0
.end method

.method private b(J)Landroid/view/View;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    .line 334
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 350
    :cond_1
    return-object v0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->d()I

    move-result v3

    .line 341
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->g()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-nez v0, :cond_1

    .line 342
    add-int v4, v3, v1

    .line 343
    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v5

    sub-int v5, v4, v5

    if-ltz v5, :cond_3

    .line 344
    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 345
    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 346
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(I)Landroid/view/View;

    move-result-object v0

    .line 341
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    return-object v0
.end method

.method static synthetic c(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    return-object v0
.end method

.method static synthetic e(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    return-object v0
.end method

.method static synthetic h(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    return-wide v0
.end method

.method static synthetic i(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;)I
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->m:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    .line 178
    instance-of v0, p1, Landroid/widget/WrapperListAdapter;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Landroid/widget/WrapperListAdapter;

    invoke-interface {p1}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 182
    :cond_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter doesn\'t have stable ids! Make sure your adapter has stable ids, and override hasStableIds() to return true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    instance-of v0, p1, Lcom/nhaarman/listviewanimations/a/f;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter should implement Swappable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    .line 191
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 267
    .line 270
    iget-boolean v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->p:Z

    if-nez v2, :cond_c

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    .line 1307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->n:F

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->o:F

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    .line 1365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->n:F

    sub-float/2addr v2, v3

    .line 1366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->o:F

    sub-float/2addr v3, v7

    .line 1368
    iget-object v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-nez v7, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->i:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    .line 1369
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-interface {v2, v3, v7}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(II)I

    move-result v2

    .line 1370
    if-eq v2, v6, :cond_c

    .line 1371
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    iget-object v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v6}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->d()I

    move-result v6

    sub-int v6, v2, v6

    invoke-interface {v3, v6}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1372
    sget-boolean v6, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->f:Z

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1373
    :cond_1
    iget-object v6, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->d:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;

    iget-object v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v7}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-interface {v6, v3, v7, v8}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;->a(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1374
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v1

    sub-int v1, v2, v1

    .line 2211
    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2216
    iget v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 2217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User must be touching the DynamicListView!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2220
    :cond_2
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    if-nez v2, :cond_3

    .line 2221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DynamicListView has no adapter set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_3
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2230
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->d()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    .line 2231
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2232
    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->m:I

    .line 2233
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    .line 2234
    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    iget v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    invoke-direct {v1, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;-><init>(Landroid/view/View;F)V

    iput-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 2235
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->k:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1378
    :cond_4
    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-eqz v2, :cond_c

    .line 1379
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 3075
    iget v2, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    iget v3, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->b:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->c:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 3076
    invoke-virtual {v1, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a(I)V

    .line 3393
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    if-nez v1, :cond_6

    .line 1382
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 3397
    :cond_6
    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->c:J

    invoke-direct {p0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(J)I

    move-result v1

    .line 3398
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v3

    sub-int/2addr v2, v3

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    add-int/lit8 v3, v1, -0x1

    iget-object v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v7}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3399
    :goto_2
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v8}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->j:Landroid/widget/ListAdapter;

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->h()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3403
    :cond_7
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3404
    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b(J)Landroid/view/View;

    move-result-object v4

    .line 3406
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    .line 4105
    invoke-virtual {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v1, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    sub-float v1, v5, v1

    float-to-int v1, v1

    .line 3407
    if-eqz v4, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v7, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {v7}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getIntrinsicHeight()I

    move-result v7

    if-le v5, v7, :cond_8

    .line 3408
    iget-object v5, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;

    invoke-virtual {v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getIntrinsicHeight()I

    move-result v5

    if-gez v1, :cond_b

    move v1, v6

    :goto_4
    mul-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a(Landroid/view/View;JF)V

    .line 3411
    :cond_8
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;

    invoke-virtual {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/g;->a()V

    .line 3413
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->g:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;

    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_1

    :cond_9
    move-wide v2, v4

    .line 3398
    goto :goto_2

    :cond_a
    move-wide v2, v4

    .line 3403
    goto :goto_3

    :cond_b
    move v1, v0

    .line 3408
    goto :goto_4

    .line 281
    :pswitch_2
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a()Z

    move-result v0

    .line 282
    iput v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    goto/16 :goto_0

    .line 4474
    :pswitch_3
    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->a()Z

    move-result v0

    .line 286
    iput v3, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;->l:F

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

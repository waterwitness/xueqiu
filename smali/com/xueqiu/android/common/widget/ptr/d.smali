.class public abstract Lcom/xueqiu/android/common/widget/ptr/d;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Z

.field protected c:Lcom/xueqiu/android/common/widget/ptr/h;

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/xueqiu/android/common/widget/ptr/b;

.field private o:Lcom/xueqiu/android/common/widget/ptr/b;

.field private p:I

.field private q:I

.field private final r:Landroid/os/Handler;

.field private s:Lcom/xueqiu/android/common/widget/ptr/g;

.field private t:Lcom/xueqiu/android/common/widget/ptr/e;

.field private u:Landroid/animation/ValueAnimator;

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 48
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 49
    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    .line 52
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    .line 55
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->r:Landroid/os/Handler;

    .line 67
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    .line 500
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->v:I

    .line 77
    invoke-direct {p0, p1, v2}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 48
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 49
    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    .line 52
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    .line 55
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->r:Landroid/os/Handler;

    .line 67
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    .line 500
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->v:I

    .line 82
    iput p2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    .line 83
    invoke-direct {p0, p1, v2}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 48
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 49
    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    .line 52
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    .line 55
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->r:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    .line 500
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->v:I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/ptr/d;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->v:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/ptr/d;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->setOrientation(I)V

    .line 533
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->d:I

    .line 536
    sget-object v0, Lcom/xueqiu/android/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 537
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    .line 543
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/d;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->a:Landroid/view/View;

    .line 544
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->a:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 547
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->getMode()I

    move-result v7

    .line 549
    const/4 v0, 0x1

    if-ne v7, v0, :cond_d

    .line 550
    const v0, 0x7f0702a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 554
    :goto_0
    const v0, 0x7f0702a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 555
    const v0, 0x7f0702a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    const/4 v0, 0x1

    if-eq v7, v0, :cond_1

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    .line 559
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/b;

    const/4 v2, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/ptr/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 562
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setId(I)V

    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/common/widget/ptr/d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/d;->b(Landroid/view/View;)V

    .line 566
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    .line 567
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getOriginalHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->q:I

    .line 569
    :cond_2
    const/4 v0, 0x2

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 570
    :cond_3
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/b;

    const/4 v2, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/ptr/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 571
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setId(I)V

    .line 572
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/ptr/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/d;->b(Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    .line 579
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    const/4 v0, 0x2

    const/high16 v1, -0x1000000

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_5

    .line 582
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setTextColor(I)V

    .line 584
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_6

    .line 585
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setTextColor(I)V

    .line 589
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_7

    .line 592
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderImage(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 595
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_8

    .line 596
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderImage(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 603
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_9

    .line 604
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setBackgroundResource(I)V

    .line 606
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_a

    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setBackgroundResource(I)V

    .line 610
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 611
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 614
    :cond_b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 617
    packed-switch v7, :pswitch_data_0

    .line 626
    const/4 v0, 0x0

    iget v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/ptr/d;->setPadding(IIII)V

    .line 632
    :goto_1
    const/4 v0, 0x3

    if-eq v7, v0, :cond_c

    .line 633
    iput v7, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    .line 635
    :cond_c
    return-void

    .line 552
    :cond_d
    const v0, 0x7f0702a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 619
    :pswitch_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/ptr/d;->setPadding(IIII)V

    goto :goto_1

    .line 622
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/ptr/d;->setPadding(IIII)V

    goto :goto_1

    .line 617
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 715
    iget v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    packed-switch v1, :pswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return v0

    .line 717
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->g()Z

    move-result v0

    goto :goto_0

    .line 719
    :pswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->h()Z

    move-result v0

    goto :goto_0

    .line 721
    :pswitch_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 639
    if-nez v0, :cond_0

    .line 640
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 643
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 644
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 646
    if-lez v0, :cond_1

    .line 647
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 651
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 652
    return-void

    .line 649
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->getScrollY()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->v:I

    .line 507
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 510
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    .line 511
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xueqiu/android/common/widget/ptr/d$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/ptr/d$1;-><init>(Lcom/xueqiu/android/common/widget/ptr/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 526
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 527
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_2

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 1128
    if-eqz p1, :cond_1

    .line 1129
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/ptr/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1130
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/ptr/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1131
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/ptr/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/d;->b(Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    .line 264
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v0, v0

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/xueqiu/android/common/widget/ptr/d;->setPadding(IIII)V

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getOriginalHeader()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/d;->b(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->getOriginalHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->q:I

    .line 270
    :goto_2
    return-void

    .line 259
    :cond_0
    iput-boolean v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/ptr/b;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 268
    :cond_2
    iput-boolean v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->b:Z

    goto :goto_2
.end method

.method protected abstract b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public f()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->l()V

    .line 161
    :cond_0
    return-void
.end method

.method protected abstract g()Z
.end method

.method public final getAdapterView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->a:Landroid/view/View;

    return-object v0
.end method

.method protected final getCurrentMode()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    return v0
.end method

.method protected final getFooterLayout()Lcom/xueqiu/android/common/widget/ptr/b;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    return-object v0
.end method

.method protected final getHeaderHeight()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    return v0
.end method

.method protected final getHeaderLayout()Lcom/xueqiu/android/common/widget/ptr/b;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->a:Landroid/view/View;

    return-object v0
.end method

.method protected abstract h()Z
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->c:Lcom/xueqiu/android/common/widget/ptr/h;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/ptr/h;->a()V

    .line 178
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 465
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->a()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->a()V

    .line 474
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/ptr/d;->a(I)V

    .line 475
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x38d1b717    # 1.0E-4f

    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 340
    iget-boolean v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 345
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 350
    if-eq v2, v6, :cond_2

    if-ne v2, v1, :cond_3

    .line 351
    :cond_2
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    goto :goto_0

    .line 355
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    if-eqz v3, :cond_4

    move v0, v1

    .line 356
    goto :goto_0

    .line 359
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 398
    :cond_5
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    goto :goto_0

    .line 361
    :pswitch_1
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 364
    iget v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    sub-float v2, v0, v2

    .line 365
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/xueqiu/android/common/widget/ptr/d;->f:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 368
    iget v5, p0, Lcom/xueqiu/android/common/widget/ptr/d;->d:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 369
    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-eq v3, v1, :cond_6

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-ne v3, v6, :cond_7

    :cond_6
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 371
    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    .line 372
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 373
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-ne v0, v6, :cond_5

    .line 374
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    goto :goto_1

    .line 376
    :cond_7
    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-eq v3, v8, :cond_8

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-ne v3, v6, :cond_5

    :cond_8
    cmpg-float v2, v2, v7

    if-gtz v2, :cond_5

    .line 377
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    .line 379
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 380
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->j:I

    if-ne v0, v6, :cond_5

    .line 381
    iput v8, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    goto :goto_1

    .line 389
    :pswitch_2
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->e:F

    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->f:F

    .line 392
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    goto :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 282
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 287
    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 291
    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move v0, v1

    .line 334
    goto :goto_0

    .line 297
    :pswitch_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    .line 1663
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->getScrollY()I

    .line 1665
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    packed-switch v0, :pswitch_data_1

    .line 1671
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->e:F

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    sub-float/2addr v0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1675
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->setHeaderScroll(I)V

    .line 1680
    if-eqz v0, :cond_4

    .line 1681
    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    if-nez v3, :cond_5

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->q:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1682
    iput v2, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 1684
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    packed-switch v0, :pswitch_data_2

    :cond_4
    :goto_2
    move v0, v2

    .line 300
    goto :goto_0

    .line 1667
    :pswitch_1
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->e:F

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    sub-float/2addr v0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    .line 1686
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->b()V

    goto :goto_2

    .line 1689
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->b()V

    goto :goto_2

    .line 1695
    :cond_5
    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    if-ne v3, v2, :cond_4

    iget v3, p0, Lcom/xueqiu/android/common/widget/ptr/d;->q:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 1696
    iput v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 1698
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    packed-switch v0, :pswitch_data_3

    goto :goto_2

    .line 1703
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->d()V

    goto :goto_2

    .line 1700
    :pswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->d()V

    goto :goto_2

    .line 306
    :pswitch_6
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->e:F

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->g:F

    move v0, v2

    .line 308
    goto/16 :goto_0

    .line 315
    :pswitch_7
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    if-eqz v0, :cond_3

    .line 316
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->h:Z

    .line 318
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->c:Lcom/xueqiu/android/common/widget/ptr/h;

    if-eqz v0, :cond_7

    .line 319
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/ptr/d;->setRefreshingInternal(Z)V

    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->c:Lcom/xueqiu/android/common/widget/ptr/h;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/ptr/h;->a()V

    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/ptr/g;->a()V

    :cond_6
    :goto_3
    move v0, v2

    .line 328
    goto/16 :goto_0

    .line 326
    :cond_7
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/ptr/d;->a(I)V

    goto :goto_3

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 1665
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 1684
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1698
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final setDisableScrollingWhileRefreshing(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->l:Z

    .line 151
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xueqiu/android/common/widget/ptr/d;->scrollTo(II)V

    .line 494
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 754
    return-void
.end method

.method public final setOnHeaderScrollListener(Lcom/xueqiu/android/common/widget/ptr/e;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->t:Lcom/xueqiu/android/common/widget/ptr/e;

    .line 174
    return-void
.end method

.method public setOnPullToRefreshEventListener(Lcom/xueqiu/android/common/widget/ptr/g;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->s:Lcom/xueqiu/android/common/widget/ptr/g;

    .line 762
    return-void
.end method

.method public final setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->c:Lcom/xueqiu/android/common/widget/ptr/h;

    .line 170
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setPullLabel(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setPullLabel(Ljava/lang/String;)V

    .line 216
    :cond_1
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/ptr/d;->m:Z

    .line 187
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/d;->setRefreshingInternal(Z)V

    .line 245
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/d;->k()V

    .line 248
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->i:I

    .line 480
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->c()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->c()V

    .line 487
    :cond_1
    if-eqz p1, :cond_2

    .line 488
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->a(I)V

    .line 490
    :cond_2
    return-void

    .line 488
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->p:I

    goto :goto_0
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 230
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->n:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d;->o:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method

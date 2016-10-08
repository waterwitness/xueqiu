.class public Lcom/xueqiu/android/view/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final d:[I


# instance fields
.field a:Z

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/xueqiu/android/view/wheel/d;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Lcom/xueqiu/android/view/wheel/c;

.field private l:Z

.field private m:I

.field private n:Landroid/widget/LinearLayout;

.field private o:I

.field private p:Lcom/xueqiu/android/view/wheel/a/c;

.field private q:Lcom/xueqiu/android/view/wheel/b;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xueqiu/android/view/wheel/WheelView;->d:[I

    .line 48
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    .line 70
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 85
    iput-boolean v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    .line 97
    new-instance v0, Lcom/xueqiu/android/view/wheel/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/b;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->r:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->b:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->s:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$1;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->c:Lcom/xueqiu/android/view/wheel/d;

    .line 210
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$2;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->t:Landroid/database/DataSetObserver;

    .line 125
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->a()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    .line 70
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 85
    iput-boolean v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    .line 97
    new-instance v0, Lcom/xueqiu/android/view/wheel/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/b;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->r:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->b:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->s:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$1;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->c:Lcom/xueqiu/android/view/wheel/d;

    .line 210
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$2;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->t:Landroid/database/DataSetObserver;

    .line 117
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->a()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    .line 70
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 85
    iput-boolean v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    .line 97
    new-instance v0, Lcom/xueqiu/android/view/wheel/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/b;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->r:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->b:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->s:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$1;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->c:Lcom/xueqiu/android/view/wheel/d;

    .line 210
    new-instance v0, Lcom/xueqiu/android/view/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/WheelView$2;-><init>(Lcom/xueqiu/android/view/wheel/WheelView;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->t:Landroid/database/DataSetObserver;

    .line 109
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->a()V

    .line 110
    return-void
.end method

.method private a(II)I
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 491
    .line 2429
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2430
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wheel_val"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->h:Landroid/graphics/drawable/Drawable;

    .line 2433
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 2434
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/xueqiu/android/view/wheel/WheelView;->d:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->j:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 2438
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/xueqiu/android/view/wheel/WheelView;->d:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->j:Landroid/graphics/drawable/GradientDrawable;

    .line 2441
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wheel_bg"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 496
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 499
    if-ne p2, v5, :cond_4

    .line 512
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, -0x14

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 513
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 515
    return p1

    .line 502
    :cond_4
    add-int/lit8 v0, v0, 0x14

    .line 505
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_5

    if-lt p1, v0, :cond_3

    :cond_5
    move p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/view/wheel/WheelView;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 447
    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/xueqiu/android/view/wheel/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->c:Lcom/xueqiu/android/view/wheel/d;

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/view/wheel/c;-><init>(Landroid/content/Context;Lcom/xueqiu/android/view/wheel/d;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->k:Lcom/xueqiu/android/view/wheel/c;

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/view/wheel/WheelView;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 648
    .line 13649
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 13651
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v4

    .line 13652
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    div-int v3, v0, v4

    .line 13654
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    sub-int v2, v0, v3

    .line 13655
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v5

    .line 13657
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    rem-int/2addr v0, v4

    .line 13658
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v4, 0x2

    if-gt v6, v7, :cond_0

    move v0, v1

    .line 13661
    :cond_0
    iget-boolean v6, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    if-eqz v6, :cond_4

    if-lez v5, :cond_4

    .line 13662
    if-lez v0, :cond_2

    .line 13663
    add-int/lit8 v2, v2, -0x1

    .line 13664
    add-int/lit8 v0, v3, 0x1

    .line 13670
    :goto_0
    if-ltz v2, :cond_3

    .line 13673
    rem-int v1, v2, v5

    .line 13691
    :goto_1
    iget v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 13692
    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    if-eq v1, v3, :cond_8

    .line 13693
    invoke-direct {p0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem$2563266(I)V

    .line 13699
    :goto_2
    mul-int/2addr v0, v4

    sub-int v0, v2, v0

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 13700
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 13701
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 648
    :cond_1
    return-void

    .line 13665
    :cond_2
    if-gez v0, :cond_a

    .line 13666
    add-int/lit8 v2, v2, 0x1

    .line 13667
    add-int/lit8 v0, v3, -0x1

    .line 13670
    goto :goto_0

    .line 13671
    :cond_3
    add-int/2addr v2, v5

    goto :goto_0

    .line 13676
    :cond_4
    if-gez v2, :cond_5

    .line 13677
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    goto :goto_1

    .line 13679
    :cond_5
    if-lt v2, v5, :cond_6

    .line 13680
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 13681
    add-int/lit8 v1, v5, -0x1

    goto :goto_1

    .line 13682
    :cond_6
    if-lez v2, :cond_7

    if-lez v0, :cond_7

    .line 13683
    add-int/lit8 v1, v2, -0x1

    .line 13684
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 13685
    :cond_7
    add-int/lit8 v1, v5, -0x1

    if-ge v2, v1, :cond_9

    if-gez v0, :cond_9

    .line 13686
    add-int/lit8 v1, v2, 0x1

    .line 13687
    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 13695
    :cond_8
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->invalidate()V

    goto :goto_2

    :cond_9
    move v1, v2

    move v0, v3

    goto :goto_1

    :cond_a
    move v0, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/view/wheel/WheelView;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->l:Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 857
    iget-boolean v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 856
    goto :goto_0
.end method

.method private a(IZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 836
    .line 11866
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v1}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v1

    if-nez v1, :cond_2

    .line 11867
    :cond_0
    const/4 v1, 0x0

    .line 837
    :goto_0
    if-eqz v1, :cond_1

    .line 838
    if-eqz p2, :cond_5

    .line 839
    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 844
    :goto_1
    const/4 v0, 0x1

    .line 847
    :cond_1
    return v0

    .line 11869
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v1}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v1

    .line 11870
    invoke-direct {p0, p1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 11871
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 12089
    iget-object v2, v2, Lcom/xueqiu/android/view/wheel/b;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/xueqiu/android/view/wheel/b;->a(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    .line 11871
    iget-object v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/xueqiu/android/view/wheel/a/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 11874
    :cond_3
    add-int/2addr p1, v1

    .line 11873
    :cond_4
    if-ltz p1, :cond_3

    .line 11878
    rem-int v1, p1, v1

    .line 11879
    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    iget-object v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 13081
    iget-object v3, v3, Lcom/xueqiu/android/view/wheel/b;->a:Ljava/util/List;

    invoke-static {v3}, Lcom/xueqiu/android/view/wheel/b;->a(Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 11879
    iget-object v4, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-interface {v2, v1, v3, v4}, Lcom/xueqiu/android/view/wheel/a/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 841
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/view/wheel/WheelView;)Lcom/xueqiu/android/view/wheel/c;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->k:Lcom/xueqiu/android/view/wheel/c;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    .line 805
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 807
    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    add-int/lit8 v0, p1, -0x14

    .line 556
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 557
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/view/wheel/WheelView;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/view/wheel/WheelView;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->l:Z

    return v0
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 472
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    if-eqz v0, :cond_0

    .line 473
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 481
    :goto_0
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 478
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/xueqiu/android/view/wheel/a;
    .locals 6

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 743
    :goto_0
    return-object v0

    .line 724
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    .line 725
    const/4 v0, 0x1

    .line 727
    :goto_1
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 732
    iget v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    if-eqz v2, :cond_2

    .line 733
    iget v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    if-lez v2, :cond_1

    .line 734
    add-int/lit8 v1, v1, -0x1

    .line 736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 739
    iget v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 740
    sub-int/2addr v1, v2

    .line 741
    int-to-double v4, v0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 743
    :cond_2
    new-instance v2, Lcom/xueqiu/android/view/wheel/a;

    invoke-direct {v2, v1, v0}, Lcom/xueqiu/android/view/wheel/a;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 728
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 729
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private setCurrentItem$2563266(I)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v0

    .line 347
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    .line 348
    :cond_2
    iget-boolean v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    if-eqz v1, :cond_0

    .line 349
    :goto_1
    if-ltz p1, :cond_4

    .line 352
    rem-int/2addr p1, v0

    .line 357
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    if-eq p1, v0, :cond_0

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 371
    iput p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    .line 1262
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->invalidate()V

    goto :goto_0

    .line 350
    :cond_4
    add-int/2addr p1, v0

    goto :goto_1

    .line 1262
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .prologue
    .line 411
    if-eqz p1, :cond_4

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    .line 2096
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/b;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2097
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2099
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/b;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2100
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 416
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    .line 422
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->invalidate()V

    .line 423
    return-void

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    new-instance v3, Lcom/xueqiu/android/view/wheel/a;

    invoke-direct {v3}, Lcom/xueqiu/android/view/wheel/a;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/view/wheel/b;->a(Landroid/widget/LinearLayout;ILcom/xueqiu/android/view/wheel/a;)I

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    return v0
.end method

.method public getViewAdapter()Lcom/xueqiu/android/view/wheel/a/c;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/a/c;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 4753
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemsRange()Lcom/xueqiu/android/view/wheel/a;

    move-result-object v4

    .line 4754
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 4755
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    iget-object v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    invoke-virtual {v0, v3, v5, v4}, Lcom/xueqiu/android/view/wheel/b;->a(Landroid/widget/LinearLayout;ILcom/xueqiu/android/view/wheel/a;)I

    move-result v3

    .line 4756
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    if-eq v0, v3, :cond_4

    move v0, v1

    .line 4757
    :goto_0
    iput v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 4763
    :goto_1
    if-nez v0, :cond_0

    .line 4764
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 5054
    iget v3, v4, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 4764
    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 5070
    iget v3, v4, Lcom/xueqiu/android/view/wheel/a;->b:I

    .line 4764
    if-ne v0, v3, :cond_6

    move v0, v2

    .line 4767
    :cond_0
    :goto_2
    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 6054
    iget v5, v4, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 4767
    if-le v3, v5, :cond_8

    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    invoke-virtual {v4}, Lcom/xueqiu/android/view/wheel/a;->a()I

    move-result v5

    if-gt v3, v5, :cond_8

    .line 4768
    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    add-int/lit8 v3, v3, -0x1

    .line 7054
    :goto_3
    iget v5, v4, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 4768
    if-ge v3, v5, :cond_7

    .line 4778
    :cond_1
    :goto_4
    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 4779
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 8070
    :goto_5
    iget v5, v4, Lcom/xueqiu/android/view/wheel/a;->b:I

    .line 4779
    if-lt v1, v5, :cond_9

    .line 4784
    iput v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 3793
    if-eqz v0, :cond_2

    .line 3794
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(II)I

    .line 3795
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->b(II)V

    .line 8591
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8593
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    iget v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 8594
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v0, v0

    iget v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->m:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8596
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 8598
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8606
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 8607
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 8608
    iget-object v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->h:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8609
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9578
    :cond_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 9579
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 9580
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 9582
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v3

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 9583
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 571
    return-void

    :cond_4
    move v0, v2

    .line 4756
    goto/16 :goto_0

    .line 4759
    :cond_5
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->b()V

    move v0, v1

    .line 4760
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 4764
    goto/16 :goto_2

    .line 4769
    :cond_7
    invoke-direct {p0, v3, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4772
    iput v3, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 4768
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3

    .line 8054
    :cond_8
    iget v1, v4, Lcom/xueqiu/android/view/wheel/a;->a:I

    .line 4775
    iput v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    goto/16 :goto_4

    .line 4780
    :cond_9
    iget v5, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->a(IZ)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_a

    .line 4781
    add-int/lit8 v3, v3, 0x1

    .line 4779
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 545
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->b(II)V

    .line 546
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 521
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 522
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 523
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2814
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->q:Lcom/xueqiu/android/view/wheel/b;

    iget-object v5, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    new-instance v7, Lcom/xueqiu/android/view/wheel/a;

    invoke-direct {v7}, Lcom/xueqiu/android/view/wheel/a;-><init>()V

    invoke-virtual {v0, v5, v6, v7}, Lcom/xueqiu/android/view/wheel/b;->a(Landroid/widget/LinearLayout;ILcom/xueqiu/android/view/wheel/a;)I

    .line 2821
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    div-int/lit8 v5, v0, 0x2

    .line 2822
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    add-int/2addr v0, v5

    :goto_1
    iget v6, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    sub-int/2addr v6, v5

    if-ge v0, v6, :cond_2

    .line 527
    invoke-direct {p0, v4, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->a(II)I

    move-result v2

    .line 530
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_4

    move v0, v1

    .line 540
    :cond_0
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->setMeasuredDimension(II)V

    .line 541
    return-void

    .line 2817
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->b()V

    goto :goto_0

    .line 2823
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/xueqiu/android/view/wheel/WheelView;->a(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2824
    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->o:I

    .line 2822
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    .line 3458
    if-eqz v0, :cond_5

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3459
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    .line 3462
    :cond_5
    iget v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    iget v4, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/xueqiu/android/view/wheel/WheelView;->g:I

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v4, v4, 0x32

    sub-int/2addr v0, v4

    .line 3464
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 535
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 536
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 614
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getViewAdapter()Lcom/xueqiu/android/view/wheel/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v3

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 641
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->k:Lcom/xueqiu/android/view/wheel/c;

    .line 11133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 11151
    :cond_3
    :goto_2
    :pswitch_0
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/c;->c:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 11152
    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->c()V

    goto :goto_0

    .line 620
    :pswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 626
    :pswitch_2
    iget-boolean v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->l:Z

    if-nez v0, :cond_2

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 628
    if-lez v0, :cond_4

    .line 629
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 633
    :goto_3
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 634
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->e:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10321
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 631
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/view/wheel/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_3

    .line 11135
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/view/wheel/c;->f:F

    .line 11136
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11137
    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->b()V

    goto :goto_2

    .line 11142
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Lcom/xueqiu/android/view/wheel/c;->f:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 11143
    if-eqz v1, :cond_3

    .line 11144
    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->d()V

    .line 11145
    iget-object v2, v0, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    invoke-interface {v2, v1}, Lcom/xueqiu/android/view/wheel/d;->a(I)V

    .line 11146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/view/wheel/c;->f:F

    goto/16 :goto_2

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 11133
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/xueqiu/android/view/wheel/WheelView;->setCurrentItem$2563266(I)V

    .line 387
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->a:Z

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Z)V

    .line 404
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->k:Lcom/xueqiu/android/view/wheel/c;

    .line 1100
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1101
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, v0, Lcom/xueqiu/android/view/wheel/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 179
    return-void
.end method

.method public setViewAdapter(Lcom/xueqiu/android/view/wheel/a/c;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->t:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/view/wheel/a/c;->b(Landroid/database/DataSetObserver;)V

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView;->p:Lcom/xueqiu/android/view/wheel/a/c;

    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->t:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/view/wheel/a/c;->a(Landroid/database/DataSetObserver;)V

    .line 237
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Z)V

    .line 238
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/xueqiu/android/view/wheel/WheelView;->f:I

    .line 199
    return-void
.end method

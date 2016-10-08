.class public final Lcom/xueqiu/android/common/n;
.super Landroid/widget/FrameLayout;
.source "PopAnimationView.java"


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field b:Landroid/view/View;

.field c:Landroid/app/Activity;

.field d:Landroid/view/View;

.field e:I

.field f:I

.field g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/n;->j:Ljava/util/ArrayList;

    .line 50
    const v0, 0x7f0800c5

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/n;->e:I

    .line 52
    const v0, 0x7f0800c4

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->b(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/n;->f:I

    .line 54
    const v0, 0x7f0800c3

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->b(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/n;->g:I

    .line 58
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/xueqiu/android/common/n;->c:Landroid/app/Activity;

    .line 1063
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    .line 1065
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1069
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    const v1, 0x7f0d00db

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/n$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/n$1;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method private static a(FLjava/lang/String;)I
    .locals 1

    .prologue
    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 445
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 446
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/n;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/n;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v2, v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 282
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 283
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v0, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 284
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 285
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v6

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v7

    sub-float v0, v6, v0

    invoke-direct {v1, v8, v5, v8, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v1

    .line 289
    :goto_1
    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 290
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 291
    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 292
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 293
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 294
    new-instance v0, Lcom/xueqiu/android/common/n$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/n$4;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 287
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v6

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v7

    sub-float v0, v6, v0

    invoke-direct {v1, v8, v5, v8, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v1

    goto/16 :goto_1

    .line 317
    :cond_1
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 355
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 357
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 191
    .line 1226
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1230
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1231
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1232
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1233
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1234
    iget-object v1, p0, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/common/n;->e()V

    .line 1390
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1391
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1392
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1393
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1394
    new-instance v1, Lcom/xueqiu/android/common/n$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/n$7;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1415
    iget-object v1, p0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    invoke-direct {p0}, Lcom/xueqiu/android/common/n;->d()V

    .line 195
    return-void
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/common/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0x11

    const/4 v12, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v11, -0x2

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 98
    :cond_0
    const v0, 0x7f0800c2

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v0

    .line 99
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v12, :cond_2

    :goto_1
    invoke-direct {v1, v2, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/o;

    .line 107
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/n;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object v4, v0, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 110
    iget-object v4, v0, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/n;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 114
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v5, v0, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 116
    iget-object v5, v0, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget v5, p0, Lcom/xueqiu/android/common/n;->g:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xueqiu/android/common/n;->a(FLjava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lcom/xueqiu/android/common/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 118
    iget v5, p0, Lcom/xueqiu/android/common/n;->g:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xueqiu/android/common/n;->a(FLjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 119
    iget v5, p0, Lcom/xueqiu/android/common/n;->g:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xueqiu/android/common/n;->a(FLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v5, v0, Lcom/xueqiu/android/common/o;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v0, Lcom/xueqiu/android/common/o;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget v0, p0, Lcom/xueqiu/android/common/n;->g:I

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    const v0, 0x7f0d007c

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 99
    :cond_2
    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    .line 129
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    move v1, v0

    .line 132
    :goto_3
    const v0, 0x7f0203d5

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 135
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b;->h()I

    move-result v0

    mul-int/lit8 v2, v5, 0x4

    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x5

    move v2, v3

    .line 137
    :goto_4
    if-ge v2, v1, :cond_7

    .line 138
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move v4, v3

    .line 140
    :goto_5
    const/16 v0, 0x8

    if-ge v4, v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v4, 0x1

    mul-int/2addr v8, v9

    if-lt v0, v8, :cond_6

    .line 144
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    if-ge v4, v12, :cond_5

    .line 148
    const/16 v0, 0x33

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    add-int v0, v6, v5

    mul-int/2addr v0, v4

    add-int/2addr v0, v6

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 150
    iget v0, p0, Lcom/xueqiu/android/common/n;->e:I

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v7, v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/16 v0, 0x33

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    add-int v8, v6, v5

    mul-int/2addr v8, v4

    add-int/2addr v8, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 156
    iget v0, p0, Lcom/xueqiu/android/common/n;->e:I

    add-int/2addr v0, v5

    iget v8, p0, Lcom/xueqiu/android/common/n;->f:I

    add-int/2addr v0, v8

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 129
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 160
    :cond_5
    const/16 v0, 0x53

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    add-int/lit8 v0, v4, -0x4

    add-int v10, v6, v5

    mul-int/2addr v0, v10

    add-int/2addr v0, v6

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 162
    iget v0, p0, Lcom/xueqiu/android/common/n;->e:I

    iget v10, p0, Lcom/xueqiu/android/common/n;->f:I

    add-int/2addr v0, v10

    iget v10, p0, Lcom/xueqiu/android/common/n;->g:I

    add-int/2addr v0, v10

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    mul-int/2addr v10, v4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v7, v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const/16 v0, 0x53

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    add-int/lit8 v8, v4, -0x4

    add-int v10, v6, v5

    mul-int/2addr v8, v10

    add-int/2addr v8, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 170
    iget v0, p0, Lcom/xueqiu/android/common/n;->e:I

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/common/p;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/p;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    goto/16 :goto_0
.end method

.method final b()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 238
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 244
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 245
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 246
    const/4 v1, 0x4

    if-ge v3, v1, :cond_0

    .line 247
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v7

    sub-float/2addr v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v8

    sub-float v1, v7, v1

    invoke-direct {v2, v6, v9, v1, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    .line 251
    :goto_1
    invoke-virtual {v4, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 252
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 253
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 254
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 256
    new-instance v1, Lcom/xueqiu/android/common/n$3;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/n$3;-><init>(Lcom/xueqiu/android/common/n;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 249
    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v7

    sub-float/2addr v6, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v1, p0, Lcom/xueqiu/android/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v8

    sub-float v1, v7, v1

    invoke-direct {v2, v6, v9, v1, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v2

    goto :goto_1

    .line 274
    :cond_1
    return-void
.end method

.method final c()V
    .locals 6

    .prologue
    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/common/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 325
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 326
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 327
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    new-instance v3, Lcom/xueqiu/android/common/n$5;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/common/n$5;-><init>(Lcom/xueqiu/android/common/n;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 345
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

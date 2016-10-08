.class public final Lcom/xueqiu/android/common/widget/ar;
.super Landroid/support/v4/a/h;
.source "SwipeDialog.java"


# instance fields
.field ak:Landroid/view/View;

.field private al:[Ljava/lang/String;

.field private am:[Ljava/lang/String;

.field private an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private ao:I

.field private ap:Landroid/support/v4/view/ViewPager;

.field private aq:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/a/h;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ar;->ao:I

    .line 40
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->ap:Landroid/support/v4/view/ViewPager;

    .line 42
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/ar;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/widget/ar;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->an:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    .line 3207
    iget-object v0, p0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    .line 81
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 4207
    iget-object v0, p0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5207
    iget-object v0, p0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    .line 83
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    const v0, 0x7f0300e5

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ak:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ak:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/a/h;->a(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0c001e

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->e(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    .line 66
    const v0, 0x7f0c001d

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->e(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->al:[Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 67
    const-string v1, "extra_current"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/ar;->ao:I

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->al:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ar;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 75
    :cond_1
    return-void

    .line 2127
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->an:Ljava/util/List;

    if-nez v0, :cond_3

    .line 2128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->an:Ljava/util/List;

    .line 2130
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->an:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2131
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2132
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->al:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 3037
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3038
    new-instance v4, Lcom/xueqiu/android/cube/b/m;

    invoke-direct {v4}, Lcom/xueqiu/android/cube/b/m;-><init>()V

    .line 3039
    const-string v5, "extra_message"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    const-string v1, "extra_title"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    const-string v1, "extra_url"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3042
    invoke-virtual {v4, v3}, Lcom/xueqiu/android/cube/b/m;->e(Landroid/os/Bundle;)V

    .line 2133
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->an:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ak:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ap:Landroid/support/v4/view/ViewPager;

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ak:Landroid/view/View;

    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 93
    new-instance v0, Lcom/xueqiu/android/common/widget/as;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ar;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/widget/as;-><init>(Lcom/xueqiu/android/common/widget/ar;Landroid/support/v4/a/q;)V

    .line 94
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->ap:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->ap:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->am:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ar;->ap:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, 0x7f0d0110

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, 0x7f0d0112

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeWidth(F)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/xueqiu/android/common/widget/ar$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/ar$1;-><init>(Lcom/xueqiu/android/common/widget/ar;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ar;->aq:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcom/xueqiu/android/common/widget/ar;->ao:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 116
    return-void
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/a/h;->o()V

    .line 6207
    iget-object v0, p0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x43910000    # 290.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 7207
    iget-object v0, p0, Landroid/support/v4/a/h;->f:Landroid/app/Dialog;

    .line 122
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 124
    return-void
.end method

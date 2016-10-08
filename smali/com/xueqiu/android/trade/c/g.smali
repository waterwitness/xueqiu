.class public final Lcom/xueqiu/android/trade/c/g;
.super Lcom/xueqiu/android/common/c;
.source "PerformanceFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field private a:Lcom/viewpagerindicator/CirclePageIndicator;

.field private ak:Lcom/xueqiu/android/trade/c/h;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/PerformanceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:[Lcom/xueqiu/android/trade/c/i;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 50
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    .line 52
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    .line 54
    iput v1, p0, Lcom/xueqiu/android/trade/c/g;->d:I

    .line 56
    iput v1, p0, Lcom/xueqiu/android/trade/c/g;->e:I

    .line 58
    iput v1, p0, Lcom/xueqiu/android/trade/c/g;->f:I

    .line 60
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    .line 120
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->ak:Lcom/xueqiu/android/trade/c/h;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/g;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/g;)V
    .locals 6

    .prologue
    .line 42
    .line 11248
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/g;->u()V

    .line 11250
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 11254
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/g;->b(I)V

    .line 11260
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 11261
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/i;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11639
    iget-object v4, v3, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    if-eqz v4, :cond_0

    .line 11640
    iget-object v4, v3, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    .line 12111
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v5

    iput-object v5, v4, Lcom/xueqiu/android/trade/a/c;->e:Lcom/xueqiu/android/base/util/ar;

    .line 11641
    iget-object v3, v3, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/a/c;->notifyDataSetChanged()V

    .line 11260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/g;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/g;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x7f0e00b5

    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    aget-object v0, v0, p1

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/support/v4/a/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/xueqiu/android/trade/c/i;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Lcom/xueqiu/android/trade/c/i;

    .line 6106
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    if-eqz v1, :cond_2

    .line 6107
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/MarketIncome;->getDayFloatAmount()F

    move-result v0

    .line 194
    :goto_1
    float-to-double v0, v0

    .line 196
    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 197
    iget v0, p0, Lcom/xueqiu/android/trade/c/g;->d:I

    .line 6240
    :goto_2
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 203
    if-eqz v1, :cond_0

    .line 7240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 203
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->h()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 206
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 209
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 210
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6109
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_3
    cmpg-double v0, v0, v8

    if-gez v0, :cond_4

    .line 199
    iget v0, p0, Lcom/xueqiu/android/trade/c/g;->e:I

    goto :goto_2

    .line 201
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/trade/c/g;->f:I

    goto :goto_2

    .line 10240
    :cond_5
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 212
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/g;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/g;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/g;)[Lcom/xueqiu/android/trade/c/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/g;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 42
    .line 12319
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 12387
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 12388
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 12389
    if-eqz v5, :cond_0

    .line 12390
    invoke-virtual {v2, v5}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 12388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12393
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->e()I

    .line 12323
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/trade/c/i;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    .line 12325
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->d()V

    .line 12327
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 12328
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 12329
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 12334
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/g;->b(I)V

    .line 12335
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/g;->e(I)V

    .line 42
    :cond_3
    return-void

    .line 12331
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 12332
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    aget-object v3, v2, v0

    .line 225
    if-eqz v3, :cond_2

    .line 226
    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    .line 10271
    :goto_1
    iput-boolean v2, v3, Lcom/xueqiu/android/trade/c/i;->c:Z

    .line 223
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 226
    goto :goto_1
.end method

.method private u()V
    .locals 6

    .prologue
    const v5, 0x7f070570

    const v4, 0x7f020372

    const v3, 0x7f020371

    .line 172
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput v3, p0, Lcom/xueqiu/android/trade/c/g;->d:I

    .line 177
    iput v4, p0, Lcom/xueqiu/android/trade/c/g;->e:I

    .line 182
    :goto_0
    const v0, 0x7f02036f

    iput v0, p0, Lcom/xueqiu/android/trade/c/g;->f:I

    .line 183
    return-void

    .line 179
    :cond_0
    iput v3, p0, Lcom/xueqiu/android/trade/c/g;->e:I

    .line 180
    iput v4, p0, Lcom/xueqiu/android/trade/c/g;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final B_()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->u()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/g;->e_(Z)V

    .line 97
    const v0, 0x7f03015c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->h:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->h:Landroid/view/View;

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(IILandroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 403
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/i;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.performanceTransAdded"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/g$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/g$1;-><init>(Lcom/xueqiu/android/trade/c/g;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/g;->a(Lrx/j;)V

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/g$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/g$2;-><init>(Lcom/xueqiu/android/trade/c/g;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/g;->a(Lrx/j;)V

    .line 90
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/g;->u()V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 3269
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3270
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->y()Landroid/app/Dialog;

    .line 3273
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/g$4;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/trade/c/g$4;-><init>(Lcom/xueqiu/android/trade/c/g;Lcom/xueqiu/android/base/b/q;)V

    .line 4232
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ak;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 5115
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->h:Landroid/view/View;

    const v1, 0x7f0e0528

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 5116
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->h:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    .line 5123
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 5124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    .line 5126
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->ak:Lcom/xueqiu/android/trade/c/h;

    if-nez v0, :cond_5

    .line 5127
    new-instance v0, Lcom/xueqiu/android/trade/c/h;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/g;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/trade/c/h;-><init>(Lcom/xueqiu/android/trade/c/g;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/g;->ak:Lcom/xueqiu/android/trade/c/h;

    .line 5129
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g;->ak:Lcom/xueqiu/android/trade/c/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 5131
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 5132
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 5133
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setCentered(Z)V

    .line 5135
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/xueqiu/android/trade/c/g$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/g$3;-><init>(Lcom/xueqiu/android/trade/c/g;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 5159
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 5160
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 5161
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 5166
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/g;->b(I)V

    .line 5167
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/g;->e(I)V

    .line 112
    :cond_6
    return-void

    .line 5163
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 5164
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public final c_(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c_(Z)V

    .line 375
    if-nez p1, :cond_0

    .line 10381
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 10382
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g;->g:[Lcom/xueqiu/android/trade/c/i;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->C()V

    .line 378
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 370
    return-void
.end method

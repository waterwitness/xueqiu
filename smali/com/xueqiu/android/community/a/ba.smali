.class public final Lcom/xueqiu/android/community/a/ba;
.super Lcom/xueqiu/android/common/a/d;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Landroid/os/Handler;

.field public f:Z

.field public g:Lcom/xueqiu/android/common/a/e;

.field public h:Lcom/xueqiu/android/community/a/bb;

.field private i:I

.field private j:Z

.field private k:Landroid/app/Activity;

.field private l:Lcom/d/a/b/f;

.field private m:Lcom/d/a/b/d;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f030082

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ba;->e:Landroid/os/Handler;

    .line 47
    iput v2, p0, Lcom/xueqiu/android/community/a/ba;->i:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/a/ba;->j:Z

    .line 49
    iput-boolean v2, p0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 50
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->g:Lcom/xueqiu/android/common/a/e;

    .line 53
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->h:Lcom/xueqiu/android/community/a/bb;

    .line 56
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->m:Lcom/d/a/b/d;

    .line 57
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->n:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->o:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ba;->k:Landroid/app/Activity;

    .line 63
    iput p2, p0, Lcom/xueqiu/android/community/a/ba;->i:I

    .line 65
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ba;->l:Lcom/d/a/b/f;

    .line 66
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ba;->m:Lcom/d/a/b/d;

    .line 67
    return-void
.end method

.method public static a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getStockStatusCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    const v0, 0x7f0703c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getStockStatusCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const v0, 0x7f070168

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecExtraMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const v0, 0x7f0700ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getCommonCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getCommonCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    const v0, 0x7f0703bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getRecExtraMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 286
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V
    .locals 5

    .prologue
    .line 7308
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 7309
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7310
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7311
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7318
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba;->k:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/a/ba$4;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/community/a/ba$4;-><init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 44
    return-void

    .line 7312
    :cond_0
    const-string v2, "8"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getRecommend()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7313
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getRecExtraMsg()Ljava/lang/String;

    move-result-object v4

    .line 7962
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xueqiu/android/base/b/an;->a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 7315
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/ba;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/xueqiu/android/community/a/ba;->j:Z

    return v0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4089
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f010139

    aput v2, v1, v3

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 255
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->n:Ljava/lang/ref/WeakReference;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/ba;)Lcom/xueqiu/android/common/a/e;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->g:Lcom/xueqiu/android/common/a/e;

    return-object v0
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6089
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f01013a

    aput v2, v1, v3

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 266
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/ba;->o:Ljava/lang/ref/WeakReference;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a/ba;)Lcom/xueqiu/android/community/a/bb;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->h:Lcom/xueqiu/android/community/a/bb;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/a/ba;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ba;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/a/ba;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ba;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/a/ba;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba;->k:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const v7, 0x7f070080

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 89
    new-instance v1, Lcom/xueqiu/android/community/a/bc;

    invoke-direct {v1}, Lcom/xueqiu/android/community/a/bc;-><init>()V

    .line 90
    const v0, 0x7f0e01f8

    .line 91
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->a:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0e01f9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->b:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0e0210

    .line 94
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->c:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0e0209

    .line 96
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->d:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0e01d1

    .line 98
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->e:Landroid/widget/ImageView;

    .line 99
    iget v0, p0, Lcom/xueqiu/android/community/a/ba;->i:I

    const v2, 0x7f030078

    if-ne v0, v2, :cond_c

    .line 100
    const v0, 0x7f0e020a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->f:Landroid/widget/ImageView;

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    :goto_2
    iget-object v4, v1, Lcom/xueqiu/android/community/a/bc;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget v2, p0, Lcom/xueqiu/android/community/a/ba;->i:I

    const v4, 0x7f030082

    if-ne v2, v4, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 121
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_1
    :goto_3
    const/4 v2, 0x0

    .line 129
    iget-boolean v4, p0, Lcom/xueqiu/android/community/a/ba;->f:Z

    if-eqz v4, :cond_2

    .line 1089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 130
    invoke-static {v0, v2}, Lcom/xueqiu/android/community/a/ba;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_2
    if-nez v2, :cond_3

    .line 133
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 134
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_3
    :goto_4
    :try_start_1
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2089
    :goto_5
    iget-object v4, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 146
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 147
    :cond_4
    const-string v2, ""

    .line 148
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0702a0

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 149
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 150
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07029f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 152
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07007e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 155
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070081

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 156
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3089
    iget-object v4, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 162
    const v5, 0x7f070565

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getStatusesCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    .line 164
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 165
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getFriendsCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 162
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    :cond_8
    iget-object v4, v1, Lcom/xueqiu/android/community/a/bc;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 176
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v2

    .line 178
    iget-object v4, v1, Lcom/xueqiu/android/community/a/bc;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :goto_6
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 184
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v5

    .line 3234
    if-eqz v4, :cond_9

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 193
    :cond_9
    :goto_7
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->f:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 194
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 195
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->f:Landroid/widget/ImageView;

    const v4, 0x7f020161

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    :goto_8
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->f:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/community/a/ba$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/xueqiu/android/community/a/ba$1;-><init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_a
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->g:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 223
    iget-object v1, v1, Lcom/xueqiu/android/community/a/bc;->g:Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/community/a/ba$2;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/ba$2;-><init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_b
    return-object v3

    .line 101
    :cond_c
    iget v0, p0, Lcom/xueqiu/android/community/a/ba;->i:I

    const v2, 0x7f03007a

    if-ne v0, v2, :cond_0

    .line 102
    const v0, 0x7f0e0214

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/bc;->g:Landroid/widget/Button;

    goto/16 :goto_0

    .line 106
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/bc;

    move-object v1, v0

    goto/16 :goto_1

    .line 115
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 124
    :cond_e
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 136
    :cond_f
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 180
    :cond_10
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 3237
    :cond_11
    iget-object v6, p0, Lcom/xueqiu/android/community/a/ba;->l:Lcom/d/a/b/f;

    iget-object v7, p0, Lcom/xueqiu/android/community/a/ba;->m:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/community/a/ba$3;

    invoke-direct {v8, p0, v5}, Lcom/xueqiu/android/community/a/ba$3;-><init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User$Gender;)V

    invoke-virtual {v6, v4, v2, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto :goto_7

    .line 186
    :cond_12
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v2

    sget-object v4, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v2, v4, :cond_13

    .line 187
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ba;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 189
    :cond_13
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/xueqiu/android/community/a/ba;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 197
    :cond_14
    iget-object v2, v1, Lcom/xueqiu/android/community/a/bc;->f:Landroid/widget/ImageView;

    const v4, 0x7f02036d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 142
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

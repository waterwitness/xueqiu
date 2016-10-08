.class public final Lcom/xueqiu/android/community/a/w;
.super Lcom/xueqiu/android/common/a/d;
.source "QuestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/Question;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/d/a/b/d;

.field private n:Lcom/d/a/b/f;

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 49
    const v0, 0x7f03005e

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 42
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 1376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 44
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/w;->m:Lcom/d/a/b/d;

    .line 45
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/w;->n:Lcom/d/a/b/f;

    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/community/a/w;->o:Landroid/content/Context;

    .line 2089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020490

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020491

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f02048e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020492

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v2, 0x7f020493

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    .line 3089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    .line 64
    return-void

    .line 59
    :array_0
    .array-data 4
        0x7f010139
        0x7f01013a
        0x7f0100be
    .end array-data
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/w;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/w;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    const v0, 0x7f020489

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/w;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/w;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const v0, 0x7f020484

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 73
    new-instance v1, Lcom/xueqiu/android/community/a/x;

    invoke-direct {v1}, Lcom/xueqiu/android/community/a/x;-><init>()V

    .line 74
    const v0, 0x7f0e01ce

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->a:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 75
    const v0, 0x7f0e01cf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->b:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0e01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->c:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0e01d1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->d:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0e01d2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->e:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e01d3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/x;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Question;

    .line 86
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getAnswer()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v3

    .line 88
    iget-object v4, v1, Lcom/xueqiu/android/community/a/x;->a:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/xueqiu/android/community/a/w;->o:Landroid/content/Context;

    iget-object v6, v1, Lcom/xueqiu/android/community/a/x;->a:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v0, v5, v6}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 91
    iget-object v4, p0, Lcom/xueqiu/android/community/a/w;->n:Lcom/d/a/b/f;

    iget-object v5, v1, Lcom/xueqiu/android/community/a/x;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/xueqiu/android/community/a/w;->m:Lcom/d/a/b/d;

    new-instance v7, Lcom/xueqiu/android/community/a/w$1;

    invoke-direct {v7, p0, v3}, Lcom/xueqiu/android/community/a/w$1;-><init>(Lcom/xueqiu/android/community/a/w;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 109
    :goto_1
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 112
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->d:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v0

    .line 114
    iget-object v4, v1, Lcom/xueqiu/android/community/a/x;->d:Landroid/widget/ImageView;

    .line 3151
    sget-object v5, Lcom/xueqiu/android/community/model/UserVerifyType;->ALALYST:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v5, :cond_5

    .line 3153
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4089
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020490

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3155
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    .line 3158
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_2
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/android/community/a/w;->o:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getDescription()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/a/w;->o:Landroid/content/Context;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/x;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v3, v4, v1}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object v2

    .line 82
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/x;

    move-object v1, v0

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v0

    sget-object v4, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v0, v4, :cond_4

    .line 103
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/xueqiu/android/community/a/w;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 105
    :cond_4
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/xueqiu/android/community/a/w;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 3160
    :cond_5
    sget-object v5, Lcom/xueqiu/android/community/model/UserVerifyType;->COMPANY:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v5, :cond_8

    .line 3162
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5089
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3163
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020491

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3164
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    .line 3167
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 3169
    :cond_8
    sget-object v5, Lcom/xueqiu/android/community/model/UserVerifyType;->STAFF:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v5, :cond_b

    .line 3171
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6089
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020281

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3173
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    .line 3176
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3178
    :cond_b
    sget-object v5, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v5, :cond_e

    .line 3179
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 7089
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3180
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f02048e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3181
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    .line 3184
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3186
    :cond_e
    sget-object v5, Lcom/xueqiu/android/community/model/UserVerifyType;->TRADING:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v5, :cond_11

    .line 3187
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 8089
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020493

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3189
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    .line 3191
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3193
    :cond_11
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 9089
    :cond_12
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 3194
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f020492

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3195
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    .line 3198
    :cond_13
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 116
    :cond_14
    iget-object v0, v1, Lcom/xueqiu/android/community/a/x;->d:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

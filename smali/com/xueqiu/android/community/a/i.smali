.class public final Lcom/xueqiu/android/community/a/i;
.super Lcom/xueqiu/android/common/a/d;
.source "PaidCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private e:F

.field private f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private g:Landroid/app/Activity;

.field private h:Lcom/d/a/b/f;

.field private i:Lcom/d/a/b/d;

.field private j:Lcom/d/a/b/d;

.field private k:Lcom/d/a/b/f/d;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 65
    const v0, 0x7f03007c

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 56
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/xueqiu/android/community/a/i;->e:F

    .line 57
    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 60
    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->i:Lcom/d/a/b/d;

    .line 61
    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->j:Lcom/d/a/b/d;

    .line 62
    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->k:Lcom/d/a/b/f/d;

    .line 130
    new-instance v0, Lcom/xueqiu/android/community/a/i$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/i$3;-><init>(Lcom/xueqiu/android/community/a/i;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/i;->l:Landroid/view/View$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    .line 67
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/xueqiu/android/community/a/i$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/i$1;-><init>(Lcom/xueqiu/android/community/a/i;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 78
    iget-object v1, p0, Lcom/xueqiu/android/community/a/i;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 79
    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/a/i;->e:F

    .line 2089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->h:Lcom/d/a/b/f;

    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 3258
    iput-object v2, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 3281
    iput-object v2, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 3304
    iput-object v2, v1, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/i;->i:Lcom/d/a/b/d;

    .line 90
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 4258
    iput-object v0, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 4281
    iput-object v0, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 4304
    iput-object v0, v1, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/i;->j:Lcom/d/a/b/d;

    .line 95
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/i;->k:Lcom/d/a/b/f/d;

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.statusAnswerComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/a/i$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/i$2;-><init>(Lcom/xueqiu/android/community/a/i;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 110
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x7f010139
        0x7f01013a
        0x7f0100be
    .end array-data
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/i;F)F
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/community/a/i;->e:F

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/i;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 5122
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5123
    new-instance v3, Lcom/xueqiu/android/community/a/j;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/a/j;-><init>(Lcom/xueqiu/android/community/a/i;)V

    .line 5167
    const v1, 0x7f0e00d7

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->a:Landroid/widget/ImageView;

    .line 5168
    const v1, 0x7f0e01d0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->b:Landroid/widget/TextView;

    .line 5169
    const v1, 0x7f0e021a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->c:Landroid/widget/TextView;

    .line 5170
    const v1, 0x7f0e01d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->d:Landroid/widget/ImageView;

    .line 5171
    const v1, 0x7f0e0201

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 5172
    const v1, 0x7f0e021b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->g:Landroid/widget/TextView;

    .line 5173
    const v1, 0x7f0e01fa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->f:Landroid/widget/TextView;

    .line 5174
    const v1, 0x7f0e021c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    .line 5175
    const v1, 0x7f0e021d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->i:Landroid/widget/TextView;

    .line 5177
    const v1, 0x7f0e021f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->j:Landroid/widget/TextView;

    .line 5178
    const v1, 0x7f0e0220

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->k:Landroid/widget/TextView;

    .line 5179
    const v1, 0x7f0e0222

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->l:Landroid/widget/TextView;

    .line 5180
    const v1, 0x7f0e0223

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->m:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 5181
    const v1, 0x7f0e0224

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    .line 5182
    const v1, 0x7f0e0225

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->o:Landroid/widget/TextView;

    .line 5183
    const v1, 0x7f0e0227

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->p:Landroid/widget/LinearLayout;

    .line 5184
    const v1, 0x7f0e0226

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/j;->q:Landroid/widget/FrameLayout;

    .line 5124
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5126
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/j;

    .line 5189
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 5190
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 6054
    iget-object v4, v4, Lcom/xueqiu/android/community/a/i;->h:Lcom/d/a/b/f;

    .line 5190
    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 7054
    iget-object v6, v6, Lcom/xueqiu/android/community/a/i;->j:Lcom/d/a/b/d;

    .line 5190
    invoke-virtual {v4, v3, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 5191
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 7089
    iget-object v6, v6, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 5191
    invoke-static {v6}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/aw;->a(Lcom/xueqiu/android/community/model/User;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5192
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5193
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->c:Landroid/widget/TextView;

    const-string v4, "\uff08%s\uff09"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5194
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5199
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5200
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 8089
    iget-object v5, v5, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 5200
    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5201
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    .line 5205
    :goto_1
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 9054
    iget v5, v5, Lcom/xueqiu/android/community/a/i;->e:F

    .line 5205
    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 5206
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5207
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 9089
    iget-object v4, v4, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 5207
    const v5, 0x7f070399

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getSource()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5208
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->i:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5209
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const v4, 0x7f0d0110

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5210
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/Comment;)Ljava/lang/String;

    move-result-object v3

    .line 5211
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->q:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5212
    const-string v4, "UNANSWERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5213
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const-string v4, "\u5f85\u56de\u590d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5214
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const v4, 0x7f0d0087

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5215
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->i:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5216
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ap;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5217
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->q:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5229
    :goto_2
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5230
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->d:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5231
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v3

    .line 5232
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5237
    :goto_3
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->a:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/community/a/j$1;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/community/a/j$1;-><init>(Lcom/xueqiu/android/community/a/j;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5257
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v3

    .line 5258
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 5259
    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5260
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 5261
    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5262
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->k:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5266
    :goto_4
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 5267
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5268
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5272
    :goto_5
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->m:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 10054
    iget-object v6, v6, Lcom/xueqiu/android/community/a/i;->g:Landroid/app/Activity;

    .line 5272
    iget-object v7, v1, Lcom/xueqiu/android/community/a/j;->m:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v5, v6, v7}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5273
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->l:Landroid/widget/TextView;

    const/4 v5, 0x2

    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 11054
    iget v6, v6, Lcom/xueqiu/android/community/a/i;->e:F

    .line 5273
    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5274
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->m:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/4 v5, 0x2

    iget-object v6, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 12054
    iget v6, v6, Lcom/xueqiu/android/community/a/i;->e:F

    .line 5274
    const v7, 0x3e4ccccd    # 0.2f

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 5275
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 5276
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    .line 13304
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v6

    .line 13305
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5277
    :cond_1
    :goto_6
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5278
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 5282
    :goto_7
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    .line 14089
    iget-object v4, v4, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 5282
    const v5, 0x7f0702eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 5283
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 5282
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5284
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5286
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->p:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/xueqiu/android/community/a/j$2;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/community/a/j$2;-><init>(Lcom/xueqiu/android/community/a/j;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v2

    .line 5196
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5203
    :cond_3
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 5219
    :cond_4
    const-string v4, "ANSWERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5220
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const-string v4, "\u5df2\u56de\u590d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5221
    :cond_5
    const-string v4, "OUTDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5222
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const-string v4, "\u5df2\u8fc7\u671f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5223
    :cond_6
    const-string v4, "REFUSED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5224
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const-string v4, "\u5df2\u62d2\u7edd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5226
    :cond_7
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->h:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5234
    :cond_8
    iget-object v3, v1, Lcom/xueqiu/android/community/a/j;->d:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 5264
    :cond_9
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->k:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 5270
    :cond_a
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->l:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 13308
    :cond_b
    iget-object v7, v4, Lcom/xueqiu/android/community/a/i;->h:Lcom/d/a/b/f;

    iget-object v8, v4, Lcom/xueqiu/android/community/a/i;->i:Lcom/d/a/b/d;

    iget-object v4, v4, Lcom/xueqiu/android/community/a/i;->k:Lcom/d/a/b/f/d;

    invoke-virtual {v7, v6, v5, v8, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_6

    .line 5280
    :cond_c
    iget-object v4, v1, Lcom/xueqiu/android/community/a/j;->n:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7
.end method

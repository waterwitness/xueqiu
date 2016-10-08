.class public final Lcom/xueqiu/android/community/a/k;
.super Lcom/xueqiu/android/common/a/d;
.source "PaidQuestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
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

    .line 62
    const v0, 0x7f03007d

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 53
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/xueqiu/android/community/a/k;->e:F

    .line 54
    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 57
    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->i:Lcom/d/a/b/d;

    .line 58
    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->j:Lcom/d/a/b/d;

    .line 59
    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->k:Lcom/d/a/b/f/d;

    .line 127
    new-instance v0, Lcom/xueqiu/android/community/a/k$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/k$3;-><init>(Lcom/xueqiu/android/community/a/k;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/k;->l:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/community/a/k;->g:Landroid/app/Activity;

    .line 64
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/xueqiu/android/community/a/k$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/k$1;-><init>(Lcom/xueqiu/android/community/a/k;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 75
    iget-object v1, p0, Lcom/xueqiu/android/community/a/k;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/xueqiu/android/community/a/k;->g:Landroid/app/Activity;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 76
    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/a/k;->e:F

    .line 2089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->h:Lcom/d/a/b/f;

    .line 82
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 3258
    iput-object v2, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 3281
    iput-object v2, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 3304
    iput-object v2, v1, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/a/k;->i:Lcom/d/a/b/d;

    .line 87
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 4258
    iput-object v0, v1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 4281
    iput-object v0, v1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 4304
    iput-object v0, v1, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/k;->j:Lcom/d/a/b/d;

    .line 92
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/k;->k:Lcom/d/a/b/f/d;

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/community/a/k;->g:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/k;->g:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.statusAnswerComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/a/k$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/k$2;-><init>(Lcom/xueqiu/android/community/a/k;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 107
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x7f010139
        0x7f01013a
        0x7f0100be
    .end array-data
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/k;F)F
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/xueqiu/android/community/a/k;->e:F

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/k;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/a/k;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 112
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 5119
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5120
    new-instance v3, Lcom/xueqiu/android/community/a/l;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/a/l;-><init>(Lcom/xueqiu/android/community/a/k;)V

    .line 5167
    const v1, 0x7f0e0210

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->a:Landroid/widget/ImageView;

    .line 5168
    const v1, 0x7f0e0228

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->b:Landroid/widget/TextView;

    .line 5169
    const v1, 0x7f0e01f9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->c:Landroid/widget/TextView;

    .line 5170
    const v1, 0x7f0e01d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->d:Landroid/widget/ImageView;

    .line 5171
    const v1, 0x7f0e022a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->e:Landroid/widget/TextView;

    .line 5172
    const v1, 0x7f0e022b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 5173
    const v1, 0x7f0e022c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    .line 5174
    iget-object v1, v3, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5175
    const v1, 0x7f0e021b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->i:Landroid/widget/TextView;

    .line 5176
    iget-object v1, v3, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    iget-object v4, v3, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 6051
    iget-object v4, v4, Lcom/xueqiu/android/community/a/k;->l:Landroid/view/View$OnClickListener;

    .line 5176
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5177
    const v1, 0x7f0e01fa

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->h:Landroid/widget/TextView;

    .line 5178
    const v1, 0x7f0e021c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    .line 5179
    const v1, 0x7f0e021d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->k:Landroid/widget/TextView;

    .line 5180
    const v1, 0x7f0e0227

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->l:Landroid/widget/LinearLayout;

    .line 5181
    const v1, 0x7f0e0226

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v3, Lcom/xueqiu/android/community/a/l;->m:Landroid/widget/FrameLayout;

    .line 5121
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5123
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/l;

    .line 6186
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 6187
    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 7051
    iget-object v4, v4, Lcom/xueqiu/android/community/a/k;->h:Lcom/d/a/b/f;

    .line 6187
    iget-object v5, v1, Lcom/xueqiu/android/community/a/l;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 8051
    iget-object v6, v6, Lcom/xueqiu/android/community/a/k;->j:Lcom/d/a/b/d;

    .line 6187
    invoke-virtual {v4, v3, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 6188
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    iget-object v6, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 8089
    iget-object v6, v6, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 6188
    invoke-static {v6}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/aw;->a(Lcom/xueqiu/android/community/model/User;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6189
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6190
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->c:Landroid/widget/TextView;

    const-string v4, "\uff08%s\uff09"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6191
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6195
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6196
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6197
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6202
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6203
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 9089
    iget-object v5, v5, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 6203
    iget-object v6, v1, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6204
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v3, v8}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    .line 6209
    :goto_2
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 10051
    iget v4, v4, Lcom/xueqiu/android/community/a/k;->e:F

    .line 6209
    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6210
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 11051
    iget v4, v4, Lcom/xueqiu/android/community/a/k;->e:F

    .line 6210
    invoke-virtual {v3, v7, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 6212
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6213
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    .line 12143
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAndthumbPic()Ljava/lang/String;

    move-result-object v5

    .line 12144
    if-eqz v5, :cond_1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6214
    :cond_1
    :goto_3
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6215
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 6219
    :goto_4
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6220
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->i:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 13089
    iget-object v4, v4, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 6220
    const v5, 0x7f070399

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getSource()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6222
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6223
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const v4, 0x7f0d0110

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6224
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v3

    .line 6225
    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6226
    const-string v4, "UNANSWERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6227
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const-string v4, "\u5f85\u56de\u590d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6228
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const v4, 0x7f0d0087

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6229
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6230
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ap;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6231
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6242
    :goto_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6243
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6244
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v3

    .line 6245
    iget-object v4, v1, Lcom/xueqiu/android/community/a/l;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6250
    :goto_6
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->a:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/community/a/l$1;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/community/a/l$1;-><init>(Lcom/xueqiu/android/community/a/l;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6268
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->l:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/xueqiu/android/community/a/l$2;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/community/a/l$2;-><init>(Lcom/xueqiu/android/community/a/l;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object v2

    .line 6193
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6199
    :cond_3
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 6206
    :cond_4
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->f:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v3, v9}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 12147
    :cond_5
    iget-object v6, v3, Lcom/xueqiu/android/community/a/k;->h:Lcom/d/a/b/f;

    iget-object v7, v3, Lcom/xueqiu/android/community/a/k;->i:Lcom/d/a/b/d;

    iget-object v3, v3, Lcom/xueqiu/android/community/a/k;->k:Lcom/d/a/b/f/d;

    invoke-virtual {v6, v5, v4, v7, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_3

    .line 6217
    :cond_6
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 6232
    :cond_7
    const-string v4, "ANSWERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6233
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const-string v4, "\u5df2\u56de\u590d"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 6234
    :cond_8
    const-string v4, "OUTDATED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6235
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const-string v4, "\u5df2\u8fc7\u671f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 6236
    :cond_9
    const-string v4, "REFUSED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6237
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    const-string v4, "\u5df2\u62d2\u7edd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 6239
    :cond_a
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 6247
    :cond_b
    iget-object v3, v1, Lcom/xueqiu/android/community/a/l;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6
.end method

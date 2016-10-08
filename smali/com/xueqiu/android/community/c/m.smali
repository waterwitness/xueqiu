.class public final Lcom/xueqiu/android/community/c/m;
.super Lcom/xueqiu/android/base/k;
.source "PaidMentionFragment.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/k",
        "<",
        "Lcom/xueqiu/android/community/d/a;",
        ">;",
        "Lcom/xueqiu/android/community/b/c;"
    }
.end annotation


# instance fields
.field private ak:Lcom/xueqiu/android/community/a/k;

.field private al:Lcom/xueqiu/android/community/a/i;

.field private am:J

.field private an:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/xueqiu/android/common/widget/SwitchButton;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/xueqiu/android/base/k;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/c/m;->an:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/m;)V
    .locals 2

    .prologue
    .line 46
    .line 4262
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/community/c/m$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$6;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ba;->a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/bb;)V

    .line 46
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method public static b(I)Lcom/xueqiu/android/community/c/m;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/xueqiu/android/community/c/m;

    invoke-direct {v0}, Lcom/xueqiu/android/community/c/m;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string v2, "arg_category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/m;->e(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/m;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/c/m;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/xueqiu/android/community/c/m;->an:I

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/k;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    .line 1719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 271
    if-eqz v0, :cond_1

    .line 2719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 271
    instance-of v0, v0, Lcom/xueqiu/android/community/c/l;

    if-eqz v0, :cond_1

    .line 3719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 272
    check-cast v0, Lcom/xueqiu/android/community/c/l;

    iget v1, p0, Lcom/xueqiu/android/community/c/m;->an:I

    .line 4220
    if-nez v1, :cond_0

    .line 4221
    iput v4, v0, Lcom/xueqiu/android/community/c/l;->d:I

    .line 4222
    iget-object v2, v0, Lcom/xueqiu/android/community/c/l;->b:Landroid/widget/ImageView;

    iget v3, v0, Lcom/xueqiu/android/community/c/l;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/c/l;->a(Landroid/widget/ImageView;I)V

    .line 4224
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4225
    iput v4, v0, Lcom/xueqiu/android/community/c/l;->e:I

    .line 4226
    iget-object v1, v0, Lcom/xueqiu/android/community/c/l;->c:Landroid/widget/ImageView;

    iget v2, v0, Lcom/xueqiu/android/community/c/l;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/c/l;->a(Landroid/widget/ImageView;I)V

    .line 274
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)V
    .locals 11

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x0

    .line 184
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 185
    const-string v0, "\u5411\u6211\u63d0\u95ee\u9700\u652f\u4ed8\uff1a"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 186
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 187
    const-string v0, "#333333"

    .line 188
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v0, "#bbbbbb"

    .line 191
    :cond_0
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 193
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f\u5143"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 194
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#C0A26F"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 195
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 194
    invoke-virtual {v1, v0, v2, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 196
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v0, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->k()V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/k;->a(IILandroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->a(Landroid/os/Bundle;)V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 83
    iput-wide v0, p0, Lcom/xueqiu/android/community/c/m;->am:J

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 84
    const-string v1, "arg_category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/m;->an:I

    .line 85
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/m;->am:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 88
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/m;->e_(Z)V

    .line 89
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->g:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030086

    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    const v0, 0x7f0e0141

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    const v2, 0x7f0e009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02035d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    const v2, 0x7f0e018e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u5f85\u56de\u590d\u7684\u95ee\u9898"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/m;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 109
    const v0, 0x7f0e0146

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->b:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e0250

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->c:Landroid/widget/FrameLayout;

    .line 111
    const v0, 0x7f0e0251

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->d:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e0252

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->e:Lcom/xueqiu/android/common/widget/SwitchButton;

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xueqiu/android/community/c/m$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$1;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->e:Lcom/xueqiu/android/common/widget/SwitchButton;

    new-instance v1, Lcom/xueqiu/android/community/c/m$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$2;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget v0, p0, Lcom/xueqiu/android/community/c/m;->an:I

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/xueqiu/android/community/a/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/m$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$3;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/m$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$4;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/c/m$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/m$5;-><init>(Lcom/xueqiu/android/community/c/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->m()V

    .line 180
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/xueqiu/android/community/a/i;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->notifyDataSetChanged()V

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 208
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/m;->u()V

    .line 209
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 236
    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget v0, p0, Lcom/xueqiu/android/community/c/m;->an:I

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->notifyDataSetChanged()V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 249
    :goto_1
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->notifyDataSetChanged()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final synthetic b()Lcom/xueqiu/android/base/c;
    .locals 2

    .prologue
    .line 46
    .line 4258
    new-instance v0, Lcom/xueqiu/android/community/d/a;

    iget v1, p0, Lcom/xueqiu/android/community/c/m;->an:I

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/d/a;-><init>(Lcom/xueqiu/android/community/b/c;I)V

    .line 46
    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->notifyDataSetChanged()V

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 224
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/m;->u()V

    .line 225
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/xueqiu/android/community/c/m;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void

    .line 253
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->ak:Lcom/xueqiu/android/community/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/k;->notifyDataSetChanged()V

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 216
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->al:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m;->h:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 232
    return-void
.end method

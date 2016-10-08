.class public Lcom/xueqiu/android/stock/c/m;
.super Lcom/xueqiu/android/common/c;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field a:I

.field private ak:Landroid/view/View;

.field private al:Landroid/os/Handler;

.field private am:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/xueqiu/android/stock/c/n;

.field private f:Lcom/xueqiu/android/stock/c/n;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->al:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/xueqiu/android/stock/c/m$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/m$5;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private C()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 145
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->al:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/stock/c/m$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/m$1;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/m;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x0

    .line 8314
    invoke-static {p1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8315
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/m$6;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/stock/c/m$6;-><init>(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const v1, 0x7f0700f6

    .line 8327
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 9127
    iput v3, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 8329
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 8330
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u67e5\u770b\u7ec4\u5408"

    .line 8331
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 8332
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 8333
    :goto_0
    return-void

    .line 8334
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/m$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/m$7;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const v1, 0x7f0700f7

    .line 8363
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 10127
    iput v3, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 8365
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 8366
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u521b\u5efa"

    .line 8367
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 8368
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/m;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->ak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 10373
    invoke-static {p1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 10374
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/broker/cubeSPResult?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    return-void

    .line 10373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&symbol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10374
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/m;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    .line 7157
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7158
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/m;->C()V

    :goto_0
    return-void

    .line 8128
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8129
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->ak:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 8135
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 8136
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/m;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/m;->C()V

    return-void
.end method


# virtual methods
.method public final B_()V
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->B_()V

    .line 389
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->B_()V

    .line 392
    :cond_1
    return-void
.end method

.method public final F_()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 211
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0e0503

    const v2, 0x7f0e04a8

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 102
    const v0, 0x7f030146

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    const v1, 0x7f0e04fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->c:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    const v1, 0x7f0e04fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->ak:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    const v1, 0x7f0e0502

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->g:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->h:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    const v1, 0x7f0e0504

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5229
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e04ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/m$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/m$2;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5237
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0500

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/m$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/m$3;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5246
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/m$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/m$4;-><init>(Lcom/xueqiu/android/stock/c/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5254
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5255
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5256
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5257
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->u()V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 86
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 87
    const-string v1, "page_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    .line 89
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/m;->b(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 379
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 380
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 381
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 93
    if-eqz v0, :cond_0

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 94
    const-string v1, "page_type"

    iget v2, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->d(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->al:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public final u()V
    .locals 9

    .prologue
    const v8, 0x7f0e04fd

    const v7, 0x7f0e0010

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "stock_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/n;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    .line 176
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/m;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "cube_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/n;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    .line 179
    iget v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    if-ne v0, v5, :cond_2

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    if-nez v0, :cond_1

    .line 185
    const-wide/16 v2, 0x0

    invoke-static {v5, v2, v3}, Lcom/xueqiu/android/stock/c/n;->a(IJ)Lcom/xueqiu/android/stock/c/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    const-string v2, "cube_fragment"

    invoke-virtual {v1, v8, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 204
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 6214
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e04ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 6215
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0500

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 6217
    iget v0, p0, Lcom/xueqiu/android/stock/c/m;->a:I

    if-ne v0, v5, :cond_5

    .line 6218
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0500

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 6219
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6220
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->f:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    if-nez v0, :cond_4

    .line 197
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/c/n;->a(IJ)Lcom/xueqiu/android/stock/c/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    const-string v2, "stock_fragment"

    invoke-virtual {v1, v8, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->e:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 6222
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e04ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 6223
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6224
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

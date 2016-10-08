.class public final Lcom/xueqiu/android/common/widget/ptr/b;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"


# instance fields
.field final a:Landroid/widget/LinearLayout;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ProgressBar;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/RelativeLayout;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Landroid/view/animation/Animation;

.field private final j:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030224

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    const v1, 0x7f0e0776

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->e:Landroid/widget/RelativeLayout;

    .line 41
    const v1, 0x7f0e0775

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->a:Landroid/widget/LinearLayout;

    .line 42
    const v1, 0x7f0e0778

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e077a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f0e0779

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->c:Landroid/widget/ProgressBar;

    .line 46
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 47
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->i:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->i:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->i:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 53
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->j:Landroid/view/animation/Animation;

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->j:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 59
    iput-object p3, p0, Lcom/xueqiu/android/common/widget/ptr/b;->h:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/xueqiu/android/common/widget/ptr/b;->f:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/xueqiu/android/common/widget/ptr/b;->g:Ljava/lang/String;

    .line 63
    packed-switch p2, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method

.method public final getOriginalHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final setHeaderImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method public final setHeaderProgress(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public final setPullLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->f:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setRefreshingLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->g:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public final setReleaseLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/b;->h:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    return-void
.end method

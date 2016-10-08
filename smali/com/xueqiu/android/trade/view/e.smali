.class public final Lcom/xueqiu/android/trade/view/e;
.super Landroid/widget/FrameLayout;
.source "TradeHistoryView.java"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field private b:Lcom/xueqiu/android/trade/view/d;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/trade/view/e;-><init>(Landroid/content/Context;B)V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/trade/view/e;->h:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ee

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const v0, 0x7f0e06ce

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/view/d;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->b:Lcom/xueqiu/android/trade/view/d;

    .line 40
    const v0, 0x7f0e06cd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    .line 41
    const v0, 0x7f0e06cf

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->c:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e0709

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->d:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e070a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->e:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e070b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->f:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e070c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->g:Landroid/widget/TextView;

    .line 48
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ay;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->setMinimumHeight(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->b:Lcom/xueqiu/android/trade/view/d;

    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->setEmptyView(Landroid/view/View;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->b:Lcom/xueqiu/android/trade/view/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getListView()Lcom/xueqiu/android/trade/view/d;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->b:Lcom/xueqiu/android/trade/view/d;

    return-object v0
.end method

.method public final setEmptyText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public final setTitle(I)V
    .locals 8

    .prologue
    const v7, 0x7f0e070c

    const v6, 0x7f0e070b

    const v5, 0x7f0e070a

    const v4, 0x7f0e0709

    const/4 v3, 0x0

    .line 76
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301fd

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->d:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->e:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->f:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0, v7}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->g:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0e071d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->d:Landroid/widget/TextView;

    const v2, 0x7f07049a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->e:Landroid/widget/TextView;

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->f:Landroid/widget/TextView;

    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->g:Landroid/widget/TextView;

    const v2, 0x7f07049d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301fc

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->d:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->e:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->f:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0, v7}, Lcom/xueqiu/android/trade/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/e;->g:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->d:Landroid/widget/TextView;

    const v1, 0x7f070496

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->e:Landroid/widget/TextView;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->f:Landroid/widget/TextView;

    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->g:Landroid/widget/TextView;

    const v1, 0x7f070499

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/trade/view/e;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030201

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

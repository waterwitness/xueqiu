.class public Lcom/xueqiu/android/trade/view/d;
.super Landroid/widget/ListView;
.source "LoadMoreListView.java"


# instance fields
.field public a:Z

.field public b:Z

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/d;->a:Z

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/d;->b:Z

    .line 27
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03021c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/d;->c:Landroid/view/ViewGroup;

    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0e076b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/d;->d:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0e076c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/d;->e:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->d:Landroid/widget/TextView;

    const v2, 0x7f07020e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/view/d;->addFooterView(Landroid/view/View;)V

    .line 36
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/d;->b:Z

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    iget-boolean v2, p0, Lcom/xueqiu/android/trade/view/d;->a:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/xueqiu/android/trade/view/d;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/d;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/d;->a:Z

    .line 43
    iget-object v2, p0, Lcom/xueqiu/android/trade/view/d;->d:Landroid/widget/TextView;

    const v3, 0x7f0703f9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object v2, p0, Lcom/xueqiu/android/trade/view/d;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

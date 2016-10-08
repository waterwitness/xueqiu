.class public Lcom/xueqiu/android/trade/view/EdgeScrollView;
.super Landroid/widget/ScrollView;
.source "EdgeScrollView.java"


# instance fields
.field private a:Lcom/xueqiu/android/trade/view/c;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->b:Z

    .line 16
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->b:Z

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getScrollX()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getScrollY()I

    move-result v1

    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->scrollTo(II)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->b:Z

    .line 42
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 21
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->b:Z

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 24
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->a:Lcom/xueqiu/android/trade/view/c;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->a:Lcom/xueqiu/android/trade/view/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/view/c;->n()V

    .line 28
    :cond_0
    return-void
.end method

.method public setOnReachEdgeListener(Lcom/xueqiu/android/trade/view/c;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/trade/view/EdgeScrollView;->a:Lcom/xueqiu/android/trade/view/c;

    .line 32
    return-void
.end method

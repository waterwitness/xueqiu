.class public Lcom/xueqiu/android/common/widget/IndicatorTabLayout;
.super Landroid/widget/LinearLayout;
.source "IndicatorTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/xueqiu/android/common/widget/o;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildCount()I

    move-result v5

    move v3, v4

    move v2, v4

    .line 61
    :goto_0
    if-ge v3, v5, :cond_2

    .line 62
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    if-ne v2, p1, :cond_1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a:Lcom/xueqiu/android/common/widget/o;

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/xueqiu/android/trade/view/IndicatorTabView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 67
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a:Lcom/xueqiu/android/common/widget/o;

    move-object v0, v1

    check-cast v0, Lcom/xueqiu/android/trade/view/IndicatorTabView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/IndicatorTabView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/xueqiu/android/common/widget/o;->b_(Ljava/lang/String;)V

    .line 69
    :cond_0
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->b:Landroid/view/View;

    .line 73
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .line 61
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 76
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 41
    :goto_0
    if-ge v0, v2, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->b:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a:Lcom/xueqiu/android/common/widget/o;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/xueqiu/android/trade/view/IndicatorTabView;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a:Lcom/xueqiu/android/common/widget/o;

    check-cast p1, Lcom/xueqiu/android/trade/view/IndicatorTabView;

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/view/IndicatorTabView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/o;->b_(Ljava/lang/String;)V

    .line 52
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 25
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildCount()I

    move-result v2

    move v1, v0

    .line 27
    :goto_0
    if-ge v1, v2, :cond_1

    .line 28
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public setOnTabChangeListener(Lcom/xueqiu/android/common/widget/o;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a:Lcom/xueqiu/android/common/widget/o;

    .line 87
    return-void
.end method

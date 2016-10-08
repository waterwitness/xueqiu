.class public Lcom/xueqiu/android/trade/view/IndicatorTabView;
.super Landroid/widget/LinearLayout;
.source "IndicatorTabView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/IndicatorTabView;->setGravity(I)V

    .line 24
    sget-object v0, Lcom/xueqiu/android/R$styleable;->IndicatorTabView:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030218

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->b:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/IndicatorTabView;->addView(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/view/IndicatorTabView;->setText(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/IndicatorTabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    return-void
.end method

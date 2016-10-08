.class public Lcom/xueqiu/android/trade/view/FullHeightListView;
.super Lcom/xueqiu/android/trade/view/d;
.source "FullHeightListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/trade/view/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 16
    const v0, 0xffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 18
    invoke-super {p0, p1, v0}, Lcom/xueqiu/android/trade/view/d;->onMeasure(II)V

    .line 19
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/FullHeightListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/view/FullHeightListView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    return-void
.end method

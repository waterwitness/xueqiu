.class public Lcom/xueqiu/android/common/widget/SNBScrollView;
.super Landroid/widget/ScrollView;
.source "SNBScrollView.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/widget/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getScrollChangedListener()Lcom/xueqiu/android/common/widget/af;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBScrollView;->a:Lcom/xueqiu/android/common/widget/af;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBScrollView;->a:Lcom/xueqiu/android/common/widget/af;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBScrollView;->a:Lcom/xueqiu/android/common/widget/af;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/af;->a()V

    .line 33
    :cond_0
    return-void
.end method

.method public setScrollChangedListener(Lcom/xueqiu/android/common/widget/af;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBScrollView;->a:Lcom/xueqiu/android/common/widget/af;

    .line 46
    return-void
.end method

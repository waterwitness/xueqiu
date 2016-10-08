.class final Lcom/xueqiu/android/common/widget/IMTextView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IMTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/IMTextView;->a(Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/IMTextView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/IMTextView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IMTextView;->performLongClick()Z

    .line 76
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IMTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 82
    check-cast v0, Landroid/text/Spanned;

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 86
    if-eq v3, v1, :cond_0

    if-nez v3, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 90
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/IMTextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 91
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/IMTextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 93
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/IMTextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 94
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/IMTextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 96
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/IMTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 98
    int-to-float v3, v3

    invoke-virtual {v5, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 100
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v3, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 103
    array-length v3, v0

    if-eqz v3, :cond_1

    .line 104
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/text/style/URLSpan;

    if-eqz v3, :cond_1

    .line 105
    aget-object v0, v0, v2

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/IMTextView$1;->a:Lcom/xueqiu/android/common/widget/IMTextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/IMTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    .line 111
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

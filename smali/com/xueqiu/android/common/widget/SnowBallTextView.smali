.class public Lcom/xueqiu/android/common/widget/SnowBallTextView;
.super Landroid/widget/TextView;
.source "SnowBallTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getSelectionStart()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getSelectionEnd()I

    move-result v1

    .line 102
    if-eq v0, v1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    .line 54
    check-cast v0, Landroid/text/Spanned;

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 58
    if-eq v2, v1, :cond_0

    if-nez v2, :cond_2

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 67
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 70
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 71
    int-to-float v3, v3

    invoke-virtual {v5, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 75
    add-int/lit8 v4, v3, 0x1

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 78
    array-length v3, v0

    if-eqz v3, :cond_2

    .line 79
    if-ne v2, v1, :cond_1

    .line 80
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 93
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object p1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, ""

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 46
    const-string v1, "SnowBallTextView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

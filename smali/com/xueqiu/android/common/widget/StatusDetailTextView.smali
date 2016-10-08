.class public Lcom/xueqiu/android/common/widget/StatusDetailTextView;
.super Landroid/widget/TextView;
.source "StatusDetailTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getSelectionStart()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getSelectionEnd()I

    move-result v1

    .line 103
    if-eq v0, v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 52
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 53
    check-cast v0, Landroid/text/Spanned;

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 57
    if-eq v2, v1, :cond_0

    if-nez v2, :cond_3

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 68
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 70
    int-to-float v3, v3

    invoke-virtual {v5, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 72
    add-int/lit8 v4, v3, 0x1

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 75
    array-length v3, v0

    if-eqz v3, :cond_2

    .line 76
    if-ne v2, v1, :cond_1

    .line 77
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 94
    :goto_0
    return v0

    .line 87
    :cond_2
    const-string v0, "MEIZU"

    invoke-static {}, Lcom/xueqiu/android/base/util/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 88
    goto :goto_0

    .line 94
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object p1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, ""

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 45
    const-string v1, "SnowBallTextView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

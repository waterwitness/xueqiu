.class public Lcom/xueqiu/android/common/widget/SnowBallEditText;
.super Landroid/widget/EditText;
.source "SnowBallEditText.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 27
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 27
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 27
    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method public getPlainText()Landroid/text/Editable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 60
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/ImageSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 63
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 64
    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 66
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 67
    invoke-virtual {v2, v6, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 68
    invoke-virtual {v2, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v2
.end method

.method public onSelectionChanged(II)V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSelectionChanged selStart = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    if-gt p2, v0, :cond_1

    .line 91
    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setSelection(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 103
    sget-object v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTextChanged text = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lengthBefor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lengthAfter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2116
    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    if-ne v0, v3, :cond_2

    .line 2117
    const/4 v0, 0x0

    .line 108
    :goto_1
    if-eqz v0, :cond_1

    .line 109
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 110
    iget v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    .line 112
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 2119
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1054
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    .line 47
    invoke-super {p0, v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

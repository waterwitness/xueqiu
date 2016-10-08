.class public Lcom/xueqiu/android/community/widget/SNBRichEditText;
.super Lcom/xueqiu/android/common/widget/SnowBallEditText;
.source "SNBRichEditText.java"


# instance fields
.field public c:Z

.field private d:I

.field private e:Lcom/xueqiu/android/community/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/common/widget/SnowBallEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getCurrentSpanBegin()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->d:I

    return v0
.end method

.method public getHtmlText()Landroid/text/Editable;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 62
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ImageSpan;

    invoke-virtual {v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 65
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 66
    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 68
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 69
    if-ltz v7, :cond_0

    if-ltz v5, :cond_0

    .line 72
    invoke-virtual {v3, v7, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 73
    invoke-virtual {v3, v7, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Landroid/text/style/StyleSpan;

    invoke-virtual {v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 78
    array-length v4, v0

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 79
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 80
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 81
    if-ltz v6, :cond_2

    if-ltz v7, :cond_2

    .line 84
    invoke-virtual {v3, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v3, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 86
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 87
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "<b>%s</b>"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 89
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "<i>%s</i>"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 91
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "<b><i>%s</i></b>"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/xueqiu/android/base/util/ak;

    invoke-virtual {v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/base/util/ak;

    .line 97
    array-length v4, v0

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_7

    aget-object v5, v0, v1

    .line 98
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 99
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 100
    if-ltz v6, :cond_6

    if-ltz v7, :cond_6

    .line 103
    invoke-virtual {v3, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-virtual {v3, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 106
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, " <a href=\"%s\" target=\"_blank\">%s</a> "

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/xueqiu/android/base/util/ak;->getURL()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v2

    aput-object v8, v10, v11

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 108
    :cond_7
    return-object v3
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->e:Lcom/xueqiu/android/community/widget/b;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->e:Lcom/xueqiu/android/community/widget/b;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/community/widget/b;->a(I)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->onSelectionChanged(II)V

    .line 129
    return-void
.end method

.method public setCurrentSpanBegin(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->d:I

    .line 117
    return-void
.end method

.method public setHeader(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 46
    return-void
.end method

.method public setListener(Lcom/xueqiu/android/community/widget/b;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->e:Lcom/xueqiu/android/community/widget/b;

    .line 121
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1054
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    .line 52
    invoke-super {p0, v0, p2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

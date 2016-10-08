.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$15;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->a:I

    .line 299
    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x1

    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o(Lcom/xueqiu/android/community/widget/SNBTextEditor;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getCurrentSpanBegin()I

    move-result v2

    .line 316
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    if-gt v2, v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 323
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    const-class v1, Landroid/text/style/StyleSpan;

    invoke-interface {v3, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 324
    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 325
    invoke-interface {v3, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o(Lcom/xueqiu/android/community/widget/SNBTextEditor;)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 329
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    invoke-interface {v3, v0, v2, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 335
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0, v6}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z

    goto/16 :goto_0

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o(Lcom/xueqiu/android/community/widget/SNBTextEditor;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 331
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    invoke-interface {v3, v0, v2, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o(Lcom/xueqiu/android/community/widget/SNBTextEditor;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 333
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    invoke-interface {v3, v0, v2, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->c:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z

    .line 304
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 308
    iput p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->a:I

    .line 309
    add-int v0, p2, p4

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;->b:I

    .line 310
    return-void
.end method

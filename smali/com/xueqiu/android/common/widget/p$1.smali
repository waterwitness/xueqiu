.class final Lcom/xueqiu/android/common/widget/p$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/p;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(I[I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x3

    const/4 v3, -0x4

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 1023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 195
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 2023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 196
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 197
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/widget/p;->g:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    iput-boolean v5, v0, Lcom/xueqiu/android/common/widget/p;->g:Z

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 3023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    .line 200
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 4023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->e:Landroid/inputmethodservice/Keyboard;

    .line 200
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/widget/p;->g:Z

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 5023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    .line 203
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 6023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->f:Landroid/inputmethodservice/Keyboard;

    .line 203
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    .line 205
    :cond_2
    if-ne p1, v4, :cond_3

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 7023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 8023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 208
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 9023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 208
    invoke-interface {v0, v1, v4}, Lcom/xueqiu/android/common/widget/r;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 210
    :cond_3
    if-ne p1, v3, :cond_4

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 10023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 11023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 213
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 12023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 213
    invoke-interface {v0, v1, v3}, Lcom/xueqiu/android/common/widget/r;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 215
    :cond_4
    const/4 v2, -0x5

    if-ne p1, v2, :cond_5

    .line 216
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 217
    if-lez v1, :cond_0

    .line 218
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 221
    :cond_5
    const v2, 0x1869f

    if-ne p1, v2, :cond_6

    .line 222
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v0, v5, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 225
    :cond_6
    const v2, 0x186a0

    if-lt p1, v2, :cond_7

    const v2, 0x30d3f

    if-gt p1, v2, :cond_7

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 13023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 14023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 227
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 15023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 227
    invoke-interface {v0, v1, p1}, Lcom/xueqiu/android/common/widget/r;->a(Landroid/widget/EditText;I)V

    goto/16 :goto_0

    .line 230
    :cond_7
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 16023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 17023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->b:Lcom/xueqiu/android/common/widget/r;

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$1;->a:Lcom/xueqiu/android/common/widget/p;

    .line 18023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->h:Landroid/widget/EditText;

    .line 232
    invoke-interface {v0, v1, p1}, Lcom/xueqiu/android/common/widget/r;->a(Landroid/widget/EditText;I)V

    goto/16 :goto_0
.end method

.method public final onPress(I)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final onRelease(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final swipeDown()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public final swipeLeft()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final swipeRight()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final swipeUp()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

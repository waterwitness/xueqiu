.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$11;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e027b

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e027c

    if-ne v0, v1, :cond_4

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e027d

    if-ne v0, v1, :cond_6

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->f(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->g(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e027e

    if-ne v0, v1, :cond_7

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->h(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    goto :goto_1

    .line 218
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e009d

    if-ne v0, v1, :cond_8

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/community/widget/h;->c()V

    goto/16 :goto_1

    .line 222
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e027f

    if-ne v0, v1, :cond_9

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/community/widget/h;->a()V

    goto/16 :goto_1

    .line 226
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0280

    if-ne v0, v1, :cond_a

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/community/widget/h;->b()V

    goto/16 :goto_1

    .line 230
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0281

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->k(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 234
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$11$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$11$1;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor$11;)V

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->k(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 243
    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_1
.end method

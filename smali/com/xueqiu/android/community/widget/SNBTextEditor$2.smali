.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$2;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

.field final synthetic b:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_0

    .line 370
    check-cast p1, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 371
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2, p1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V

    .line 372
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z

    :goto_0
    move v0, v1

    .line 383
    :goto_1
    return v0

    .line 373
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 374
    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 375
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->r(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 376
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->s(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v3}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 377
    iget-object v3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    add-int/lit8 v2, v2, 0x1

    const-string v4, ""

    const-string v5, ""

    invoke-static {v3, v2, v4, v5}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z

    goto :goto_1

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z

    goto :goto_0
.end method

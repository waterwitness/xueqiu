.class final Lcom/xueqiu/android/message/SelectUserActivity$2;
.super Ljava/lang/Object;
.source "SelectUserActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectUserActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectUserActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 165
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    array-length v4, v0

    if-lez v4, :cond_0

    .line 170
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    .line 171
    iget-object v4, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v4}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 172
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectUserActivity;->b(Lcom/xueqiu/android/message/SelectUserActivity;)Lcom/xueqiu/android/message/a/a;

    move-result-object v0

    .line 1203
    iget-object v0, v0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    .line 179
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectUserActivity$2;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;I)V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

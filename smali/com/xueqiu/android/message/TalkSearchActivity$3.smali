.class final Lcom/xueqiu/android/message/TalkSearchActivity$3;
.super Ljava/lang/Object;
.source "TalkSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/TalkSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 152
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 154
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->e(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->f()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$3;->a:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->e(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->g()V

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/message/c$11;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/xueqiu/android/message/c$11;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/message/c$11;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->g(Lcom/xueqiu/android/message/c;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 404
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/xueqiu/android/message/c$11;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 406
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 408
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/message/c$11;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->h(Lcom/xueqiu/android/message/c;)Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->f()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c$11;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->h(Lcom/xueqiu/android/message/c;)Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->g()V

    goto :goto_0
.end method

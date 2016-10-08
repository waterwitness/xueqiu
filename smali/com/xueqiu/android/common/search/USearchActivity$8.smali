.class final Lcom/xueqiu/android/common/search/USearchActivity$8;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/USearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$8;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 267
    :cond_0
    return v2
.end method

.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 327
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Z)V

    .line 328
    if-eqz p2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Z)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;->b:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

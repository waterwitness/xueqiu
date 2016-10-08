.class final Lcom/xueqiu/android/trade/c/a$5;
.super Ljava/lang/Object;
.source "BindBrokerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$5;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$5;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->b(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$5;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 159
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$5;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/a;->b(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 160
    return-void
.end method

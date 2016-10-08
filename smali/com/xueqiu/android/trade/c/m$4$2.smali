.class final Lcom/xueqiu/android/trade/c/m$4$2;
.super Ljava/lang/Object;
.source "TakingPositionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/m$4;->a(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/trade/c/m$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m$4;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$4$2;->b:Lcom/xueqiu/android/trade/c/m$4;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/m$4$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$2;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$2;->b:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 340
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m$4$2;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 341
    return-void
.end method

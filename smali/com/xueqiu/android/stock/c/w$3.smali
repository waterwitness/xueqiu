.class final Lcom/xueqiu/android/stock/c/w$3;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/w;->D_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$3;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$3;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->c(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$3;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->c(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$3;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 169
    return-void
.end method

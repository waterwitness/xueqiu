.class final Lcom/xueqiu/android/stock/c/x$1;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->b(Lcom/xueqiu/android/stock/c/x;)V

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->c(Lcom/xueqiu/android/stock/c/x;)V

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$1;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->d(Lcom/xueqiu/android/stock/c/x;)Z

    .line 229
    :cond_0
    return-void
.end method

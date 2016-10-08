.class final Lcom/xueqiu/android/stock/c/n$12;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$12;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 169
    check-cast p1, Landroid/content/Intent;

    .line 1172
    const-string v0, "extra_portfolio_category"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1173
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$12;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$12;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->b(Lcom/xueqiu/android/stock/c/n;)V

    .line 169
    :cond_0
    return-void
.end method

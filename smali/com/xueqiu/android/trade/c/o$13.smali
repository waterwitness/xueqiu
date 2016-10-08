.class final Lcom/xueqiu/android/trade/c/o$13;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/o;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/v4/a/i;

.field final synthetic c:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;Landroid/view/View;Landroid/support/v4/a/i;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$13;->c:Lcom/xueqiu/android/trade/c/o;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/o$13;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/o$13;->b:Landroid/support/v4/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$13;->c:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->l(Lcom/xueqiu/android/trade/c/o;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$13;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$13;->c:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$13;->b:Landroid/support/v4/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 542
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->e()I

    .line 543
    return-void
.end method

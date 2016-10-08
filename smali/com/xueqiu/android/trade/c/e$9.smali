.class final Lcom/xueqiu/android/trade/c/e$9;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$9;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$9;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->q(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$9;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->r(Lcom/xueqiu/android/trade/c/e;)V

    .line 452
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$9;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->y(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(I)V

    .line 453
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$9;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->z(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 455
    :cond_0
    return-void
.end method

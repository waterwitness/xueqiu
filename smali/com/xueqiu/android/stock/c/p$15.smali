.class final Lcom/xueqiu/android/stock/c/p$15;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$15;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 866
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$15;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 867
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$15;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

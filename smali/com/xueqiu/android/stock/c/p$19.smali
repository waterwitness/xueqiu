.class final Lcom/xueqiu/android/stock/c/p$19;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Lrx/c/a;


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
    .line 993
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$19;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$19;->a:Lcom/xueqiu/android/stock/c/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/p;->e_(Z)V

    .line 997
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$19;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->invalidateOptionsMenu()V

    .line 998
    return-void
.end method

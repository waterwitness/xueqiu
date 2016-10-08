.class final Lcom/xueqiu/android/trade/c/g$1;
.super Ljava/lang/Object;
.source "PerformanceFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/g;->a(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/g;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/g$1;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 74
    .line 2077
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$1;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$1;->a:Lcom/xueqiu/android/trade/c/g;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2078
    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$1;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->B_()V

    .line 74
    :cond_0
    return-void
.end method

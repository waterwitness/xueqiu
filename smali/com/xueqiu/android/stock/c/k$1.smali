.class final Lcom/xueqiu/android/stock/c/k$1;
.super Ljava/lang/Object;
.source "PortfolioCategoryFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/k;->a(Landroid/os/Bundle;)V
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
.field a:I

.field final synthetic b:Lcom/xueqiu/android/stock/c/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/k;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/k$1;->b:Lcom/xueqiu/android/stock/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stock/c/k$1;->a:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 64
    check-cast p1, Landroid/content/Intent;

    .line 1069
    const-string v0, "extra_int"

    iget v1, p0, Lcom/xueqiu/android/stock/c/k$1;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1070
    iget v1, p0, Lcom/xueqiu/android/stock/c/k$1;->a:I

    if-eq v0, v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/k$1;->b:Lcom/xueqiu/android/stock/c/k;

    .line 1170
    iget-object v2, v1, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v2, :cond_0

    .line 1174
    iget-object v1, v1, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setBackgroundResource(I)V

    .line 64
    :cond_0
    return-void
.end method

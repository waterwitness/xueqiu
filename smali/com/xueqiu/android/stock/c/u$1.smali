.class final Lcom/xueqiu/android/stock/c/u$1;
.super Ljava/lang/Object;
.source "QuotesCenterFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/u;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/u;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public final b_(I)V
    .locals 4

    .prologue
    const/16 v1, 0x3ea

    const/16 v3, 0x3e8

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->c(Lcom/xueqiu/android/stock/c/u;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    .line 104
    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->c(Lcom/xueqiu/android/stock/c/u;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->c(Lcom/xueqiu/android/stock/c/u;)I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    .line 106
    :goto_0
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xaf0

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 107
    const-string v0, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/u;->b(Lcom/xueqiu/android/stock/c/u;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->c(Lcom/xueqiu/android/stock/c/u;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->a(Lcom/xueqiu/android/stock/c/u;)[Landroid/support/v4/a/i;

    move-result-object v0

    aget-object v0, v0, p1

    instance-of v0, v0, Lcom/xueqiu/android/stock/c/w;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    .line 114
    invoke-static {v0}, Lcom/xueqiu/android/stock/c/u;->a(Lcom/xueqiu/android/stock/c/u;)[Landroid/support/v4/a/i;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    .line 115
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u$1;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/u;->d(Lcom/xueqiu/android/stock/c/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/w;->b(Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void

    .line 105
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

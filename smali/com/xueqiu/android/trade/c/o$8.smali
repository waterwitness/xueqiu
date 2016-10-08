.class final Lcom/xueqiu/android/trade/c/o$8;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 142
    check-cast p1, Ljava/util/ArrayList;

    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    .line 1719
    iget-object v0, v0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 1146
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    .line 2719
    iget-object v0, v0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 1146
    invoke-virtual {v0}, Landroid/support/v4/a/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1148
    :cond_1
    :goto_0
    return-void

    .line 1151
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->e(Lcom/xueqiu/android/trade/c/o;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/o;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1152
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/o;->a(Lcom/xueqiu/android/trade/c/o;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$8;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->f(Lcom/xueqiu/android/trade/c/o;)V

    goto :goto_0
.end method

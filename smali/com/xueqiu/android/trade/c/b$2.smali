.class final Lcom/xueqiu/android/trade/c/b$2;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Lcom/xueqiu/android/trade/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 2

    .prologue
    .line 373
    const-string v0, "DYZQ"

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->f(Lcom/xueqiu/android/trade/c/b;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;I)I

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->k(Lcom/xueqiu/android/trade/c/b;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;Lcom/xueqiu/android/trade/model/TradeAccount;)Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->m(Lcom/xueqiu/android/trade/c/b;)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->n(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->n(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/c/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$2;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->show()V

    .line 386
    return-void

    .line 373
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

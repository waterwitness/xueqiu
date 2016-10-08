.class final Lcom/xueqiu/android/trade/d/a$21;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->m()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 436
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 436
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v4, v4, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 436
    iget-object v5, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v5, v5, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 436
    iget-object v6, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v6, v6, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 436
    invoke-interface {v6}, Lcom/xueqiu/android/trade/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/xueqiu/android/trade/d/a$21;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v8, v8, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 436
    invoke-static/range {v0 .. v8}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 437
    return-void
.end method

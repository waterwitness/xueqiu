.class final Lcom/xueqiu/android/trade/d/a$17;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field final synthetic b:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$17;->b:Lcom/xueqiu/android/trade/d/a;

    iput-object p2, p0, Lcom/xueqiu/android/trade/d/a$17;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 336
    check-cast p1, Ljava/lang/Boolean;

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$17;->b:Lcom/xueqiu/android/trade/d/a;

    const-string v1, "70005"

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$17;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/trade/d/c;)V

    :goto_0
    return-void

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$17;->b:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/trade/d/a;->A:Z

    .line 1343
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$17;->b:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1343
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->I_()V

    goto :goto_0
.end method

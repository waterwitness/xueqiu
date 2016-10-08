.class final Lcom/xueqiu/android/trade/c$12;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field final synthetic b:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$12;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$12;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    .line 1049
    iget-object v1, v1, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 1060
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/g;->a(Lcom/xueqiu/android/trade/model/TradeAccount;Landroid/app/Activity;Lcom/xueqiu/android/base/h5/b;I)V

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    .line 2049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 249
    iget-object v1, p0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    .line 3049
    iget-object v1, v1, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 249
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.updateBrokerTokenSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c$12$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c$12$1;-><init>(Lcom/xueqiu/android/trade/c$12;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 257
    return-void
.end method

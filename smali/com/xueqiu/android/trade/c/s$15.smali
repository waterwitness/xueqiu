.class final Lcom/xueqiu/android/trade/c/s$15;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

.field final synthetic b:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

.field final synthetic c:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$15;->c:Lcom/xueqiu/android/trade/c/s;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$15;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/s$15;->b:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 964
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5dd

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 965
    const-string v1, "status"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$15;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v1, "tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$15;->c:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 967
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 968
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$15;->c:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    const-string v1, "extra_url"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$15;->b:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getOpeningUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$15;->c:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/s;->a(Landroid/content/Intent;)V

    .line 971
    return-void
.end method

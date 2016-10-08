.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "InvestmentCalEventAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 630
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 631
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 626
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1635
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1636
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f070343

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    .line 1638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.CREATE_CALENDAR_EVENT_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1639
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1640
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->finish()V

    .line 1641
    :goto_0
    return-void

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$9;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0702fa

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    goto :goto_0
.end method

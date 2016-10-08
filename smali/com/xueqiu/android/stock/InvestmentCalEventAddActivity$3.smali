.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;
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
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;J)V
    .locals 1

    .prologue
    .line 871
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iput-wide p3, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->a:J

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 875
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 876
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 871
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1880
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1881
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.DELETE_CALENDAR_EVENT_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1884
    const-string v1, "delete_event_id"

    iget-wide v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1885
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1886
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$3;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->finish()V

    .line 1887
    :goto_0
    return-void

    .line 1888
    :cond_0
    const v0, 0x7f0702fa

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/cube/b/h$5;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->J()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 883
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->z()V

    .line 884
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->p(Lcom/xueqiu/android/cube/b/h;)V

    .line 885
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 879
    check-cast p1, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 1889
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->FAILED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v0, v1, :cond_1

    .line 1890
    const v0, 0x7f0700f2

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1891
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1892
    const-string v1, "extra_rb_desc"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->q(Lcom/xueqiu/android/cube/b/h;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    const-string v1, "rebalance"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1894
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/k;->setResult(ILandroid/content/Intent;)V

    .line 1895
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 1896
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$5;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->z()V

    .line 1897
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/community/StatusDetailActivity$7;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 773
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 769
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1781
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 1785
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)Lcom/xueqiu/android/community/model/Status;

    .line 1787
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->m(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1788
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->n(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1789
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->o(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1791
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->p(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1793
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1797
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->i(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$7$1;

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity$7;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/community/StatusDetailActivity$7$1;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity$7;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 769
    :cond_0
    return-void
.end method

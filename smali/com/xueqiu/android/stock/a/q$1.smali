.class final Lcom/xueqiu/android/stock/a/q$1;
.super Ljava/lang/Object;
.source "PortfolioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/a/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/q;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/q;->a(Lcom/xueqiu/android/stock/a/q;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/a/q;->b(Lcom/xueqiu/android/stock/a/q;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/a/q;->a(Lcom/xueqiu/android/stock/a/q;I)I

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->b(Lcom/xueqiu/android/stock/a/q;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/stock/a/t;->a()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->d(Lcom/xueqiu/android/stock/a/q;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x4b0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$1;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 206
    return-void
.end method

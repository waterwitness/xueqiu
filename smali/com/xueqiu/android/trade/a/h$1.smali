.class final Lcom/xueqiu/android/trade/a/h$1;
.super Ljava/lang/Object;
.source "TradeHistoryTrustDeedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/a/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/a/h;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/h$1;->a:Lcom/xueqiu/android/trade/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/xueqiu/android/trade/a/h$1;->a:Lcom/xueqiu/android/trade/a/h;

    invoke-static {v1}, Lcom/xueqiu/android/trade/a/h;->a(Lcom/xueqiu/android/trade/a/h;)Lcom/xueqiu/android/trade/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/xueqiu/android/trade/a/h$1;->a:Lcom/xueqiu/android/trade/a/h;

    invoke-static {v1}, Lcom/xueqiu/android/trade/a/h;->a(Lcom/xueqiu/android/trade/a/h;)Lcom/xueqiu/android/trade/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/a/h$1;->a:Lcom/xueqiu/android/trade/a/h;

    invoke-static {v2}, Lcom/xueqiu/android/trade/a/h;->b(Lcom/xueqiu/android/trade/a/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TrustDeed;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/a/i;->a(Lcom/xueqiu/android/trade/model/TrustDeed;)V

    .line 132
    :cond_0
    return-void
.end method

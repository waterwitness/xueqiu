.class final Lcom/xueqiu/android/trade/c/w$2;
.super Ljava/lang/Object;
.source "TradeNotificationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/w;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/xueqiu/android/trade/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/w;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/w$2;->b:Lcom/xueqiu/android/trade/c/w;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/w$2;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w$2;->b:Lcom/xueqiu/android/trade/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/w;->d(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/trade/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$2;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeNotification;

    .line 85
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$2;->b:Lcom/xueqiu/android/trade/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    :cond_0
    return-void
.end method

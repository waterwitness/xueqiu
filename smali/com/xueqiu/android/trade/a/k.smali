.class public final Lcom/xueqiu/android/trade/a/k;
.super Lcom/xueqiu/android/common/a/d;
.source "TradeNotificationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeNotification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0301f2

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 27
    new-instance v0, Lcom/xueqiu/android/trade/a/k$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/a/k$1;-><init>(Lcom/xueqiu/android/trade/a/k;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/a/k;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    new-instance v1, Lcom/xueqiu/android/trade/a/l;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/l;-><init>()V

    .line 55
    const v0, 0x7f0e00a1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/l;->a:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0e02f0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/l;->c:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e06d1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/l;->b:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0e06b5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/l;->d:Landroid/view/View;

    .line 59
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeNotification;

    .line 65
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/l;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getOccurTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/l;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getOccurTime()Ljava/util/Date;

    move-result-object v4

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v1, v1, Lcom/xueqiu/android/trade/a/l;->d:Landroid/view/View;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-object v2

    .line 61
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/l;

    move-object v1, v0

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

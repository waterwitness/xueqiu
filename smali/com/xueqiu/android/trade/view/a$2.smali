.class final Lcom/xueqiu/android/trade/view/a$2;
.super Ljava/lang/Object;
.source "BrokerListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/view/a;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/view/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/view/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/trade/view/a$2;->a:Lcom/xueqiu/android/trade/view/a;

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
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a$2;->a:Lcom/xueqiu/android/trade/view/a;

    .line 1018
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/a;->b:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setCurrentTradeAccountTid(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a$2;->a:Lcom/xueqiu/android/trade/view/a;

    .line 2018
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    .line 51
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a$2;->a:Lcom/xueqiu/android/trade/view/a;

    .line 3018
    iget-object v1, v0, Lcom/xueqiu/android/trade/view/a;->c:Lcom/xueqiu/android/trade/view/b;

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a$2;->a:Lcom/xueqiu/android/trade/view/a;

    .line 4018
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/a;->b:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/view/b;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 53
    return-void
.end method

.class final Lcom/xueqiu/android/trade/c/s$27;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1230
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1231
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sub-int v1, p3, v0

    if-gez v1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v5

    .line 1235
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    sub-int v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1236
    instance-of v1, v1, Lcom/xueqiu/android/trade/model/TradePosition;

    if-eqz v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradePosition;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 1238
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    const v4, 0x7f0704dc

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/trade/c/s;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    const v3, 0x7f0704df

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/trade/c/s;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1240
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$27;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/xueqiu/android/trade/c/s$27$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/trade/c/s$27$1;-><init>(Lcom/xueqiu/android/trade/c/s$27;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1254
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

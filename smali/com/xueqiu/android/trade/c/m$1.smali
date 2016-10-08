.class final Lcom/xueqiu/android/trade/c/m$1;
.super Ljava/lang/Object;
.source "TakingPositionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/xueqiu/android/trade/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$1;->b:Lcom/xueqiu/android/trade/c/m;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/m$1;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$1;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 99
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m$1;->b:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "javascript:window.addTran(\"%s\");"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$1;->b:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->b(Lcom/xueqiu/android/trade/c/m;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MenuItem;)Z

    .line 101
    return-void
.end method

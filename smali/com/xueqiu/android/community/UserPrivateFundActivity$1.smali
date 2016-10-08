.class final Lcom/xueqiu/android/community/UserPrivateFundActivity$1;
.super Ljava/lang/Object;
.source "UserPrivateFundActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserPrivateFundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserPrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserPrivateFundActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->a(Lcom/xueqiu/android/community/UserPrivateFundActivity;)Lcom/xueqiu/android/community/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/SimpleFund;

    .line 46
    iget-object v1, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/xueqiu/android/community/UserPrivateFundActivity$1;->a:Lcom/xueqiu/android/community/UserPrivateFundActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserPrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

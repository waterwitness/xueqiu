.class final Lcom/xueqiu/android/community/UserProfileActivity$18;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UserProfileActivity;->a(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/SimpleFund;

.field final synthetic b:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/community/model/SimpleFund;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$18;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/UserProfileActivity$18;->a:Lcom/xueqiu/android/community/model/SimpleFund;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$18;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity$18;->a:Lcom/xueqiu/android/community/model/SimpleFund;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/SimpleFund;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity$18;->b:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 802
    return-void
.end method

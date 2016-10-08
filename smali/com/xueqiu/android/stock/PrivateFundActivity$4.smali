.class final Lcom/xueqiu/android/stock/PrivateFundActivity$4;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$4;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$4;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const-class v2, Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    const-string v1, "extra_stock"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$4;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$4;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    .line 492
    return-void
.end method

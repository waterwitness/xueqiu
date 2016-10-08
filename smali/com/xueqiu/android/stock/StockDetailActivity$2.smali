.class final Lcom/xueqiu/android/stock/StockDetailActivity$2;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/StockDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$2;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$2;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    check-cast v0, Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->C_()V

    .line 154
    :cond_0
    return-void
.end method

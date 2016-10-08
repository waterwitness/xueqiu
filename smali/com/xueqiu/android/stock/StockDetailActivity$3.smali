.class final Lcom/xueqiu/android/stock/StockDetailActivity$3;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 159
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$3;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$3;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->finish()V

    .line 163
    return-void
.end method

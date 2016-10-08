.class final Lcom/xueqiu/android/trade/OrderFullActivity$1;
.super Ljava/lang/Object;
.source "OrderFullActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/OrderFullActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/OrderFullActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/xueqiu/android/trade/OrderFullActivity$1;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity$1;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/trade/OrderFullActivity;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity$1;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-static {v1}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/trade/OrderFullActivity;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 513
    return-void
.end method

.class final Lcom/xueqiu/android/trade/c/q$2;
.super Ljava/lang/Object;
.source "TradeHistoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/q;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/q$2;->a:Lcom/xueqiu/android/trade/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q$2;->a:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/q;->b(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q$2;->a:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/q;->b(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 308
    return-void
.end method

.class final Lcom/xueqiu/android/trade/c/n$1;
.super Ljava/lang/Object;
.source "TradeContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/n;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/n$1;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n$1;->a:Lcom/xueqiu/android/trade/c/n;

    const-string v1, "trade"

    .line 1042
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n$1;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "trade_page_type"

    const-string v2, "trade"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n$1;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/n;->u()V

    .line 158
    return-void
.end method

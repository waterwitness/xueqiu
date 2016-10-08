.class final Lcom/xueqiu/android/trade/c/s$1;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$1;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 189
    const-string v0, "%s/broker/analyze?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$1;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$1;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 190
    return-void
.end method

.class final Lcom/xueqiu/android/trade/c/w$1;
.super Ljava/lang/Object;
.source "TradeNotificationsFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/w;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/w;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/w$1;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w$1;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/w;->a(Lcom/xueqiu/android/trade/c/w;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w$1;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/w;->b(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/n;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$1;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/w;->a(Lcom/xueqiu/android/trade/c/w;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/trade/b/n;->a(J)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w$1;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/w;->c(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/n;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/n;->c()V

    goto :goto_0
.end method

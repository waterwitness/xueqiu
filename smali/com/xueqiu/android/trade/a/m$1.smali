.class final Lcom/xueqiu/android/trade/a/m$1;
.super Ljava/lang/Object;
.source "TradePositionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/a/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/a/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/a/m;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/m$1;->a:Lcom/xueqiu/android/trade/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/m$1;->a:Lcom/xueqiu/android/trade/a/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/a/m;->a(Lcom/xueqiu/android/trade/a/m;)Lcom/xueqiu/android/trade/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/m$1;->a:Lcom/xueqiu/android/trade/a/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/a/m;->a(Lcom/xueqiu/android/trade/a/m;)Lcom/xueqiu/android/trade/a/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/trade/a/n;->a()V

    .line 223
    :cond_0
    return-void
.end method

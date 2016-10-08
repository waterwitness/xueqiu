.class final Lcom/xueqiu/android/trade/d/h$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeNotificationsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/h;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeNotification;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/trade/d/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/h$1;->b:Lcom/xueqiu/android/trade/d/h;

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/trade/d/h$1;->a:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/h$1;->b:Lcom/xueqiu/android/trade/d/h;

    .line 1016
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/h;->a:Lcom/xueqiu/android/trade/b/o;

    .line 30
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/o;->c()V

    .line 31
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 1035
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/h$1;->b:Lcom/xueqiu/android/trade/d/h;

    .line 2016
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/h;->a:Lcom/xueqiu/android/trade/b/o;

    .line 1035
    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/o;->a(Ljava/util/ArrayList;)V

    .line 1036
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/trade/d/h$1;->a:I

    if-ge v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/h$1;->b:Lcom/xueqiu/android/trade/d/h;

    .line 3016
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/h;->a:Lcom/xueqiu/android/trade/b/o;

    .line 1037
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/o;->a()V

    .line 26
    :cond_0
    return-void
.end method

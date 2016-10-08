.class public final Lcom/xueqiu/android/trade/d/h;
.super Ljava/lang/Object;
.source "TradeNotificationsPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/n;


# instance fields
.field a:Lcom/xueqiu/android/trade/b/o;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/b/o;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/h;->a:Lcom/xueqiu/android/trade/b/o;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 26
    new-instance v1, Lcom/xueqiu/android/trade/d/h$1;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/h;->a:Lcom/xueqiu/android/trade/b/o;

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/d/h$1;-><init>(Lcom/xueqiu/android/trade/d/h;Lcom/xueqiu/android/base/b/q;)V

    .line 41
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3734
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xueqiu/android/base/b/am;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3738
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    .line 4638
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/am;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/trade/d/h;->a(J)V

    .line 51
    return-void
.end method

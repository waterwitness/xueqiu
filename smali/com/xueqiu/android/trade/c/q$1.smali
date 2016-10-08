.class final Lcom/xueqiu/android/trade/c/q$1;
.super Ljava/lang/Object;
.source "TradeHistoryFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/q;->c(Ljava/util/List;Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/xueqiu/android/trade/c/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/q;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/q$1;->c:Lcom/xueqiu/android/trade/c/q;

    iput-boolean p2, p0, Lcom/xueqiu/android/trade/c/q$1;->a:Z

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/q$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q$1;->c:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/q;->a(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/trade/a/e;

    move-result-object v0

    .line 1040
    iget-object v0, v0, Lcom/xueqiu/android/trade/a/e;->a:Ljava/util/List;

    .line 225
    iget-boolean v1, p0, Lcom/xueqiu/android/trade/c/q$1;->a:Z

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q$1;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q$1;->c:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/q;->a(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/trade/a/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/trade/c/q$1$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/trade/c/q$1$1;-><init>(Lcom/xueqiu/android/trade/c/q$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 237
    return-void
.end method

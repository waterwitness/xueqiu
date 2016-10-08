.class final Lcom/xueqiu/android/trade/c/q$1$1;
.super Ljava/lang/Object;
.source "TradeHistoryFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/q$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/trade/c/q$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/q$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/q$1$1;->b:Lcom/xueqiu/android/trade/c/q$1;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/q$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q$1$1;->b:Lcom/xueqiu/android/trade/c/q$1;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/q$1;->c:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/q;->a(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/trade/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q$1$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/a/e;->refresh(Ljava/util/List;)V

    .line 235
    return-void
.end method

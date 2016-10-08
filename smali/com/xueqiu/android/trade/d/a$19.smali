.class final Lcom/xueqiu/android/trade/d/a$19;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$19;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$19;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iput-object p1, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 381
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$19;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$19;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 381
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$19;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;I)V

    .line 382
    return-void
.end method

.class final Lcom/xueqiu/android/trade/d/a$15;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$15;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$15;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1201
    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$15;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1202
    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->m()V

    .line 1204
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1191
    .line 3194
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$15;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 3194
    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$15;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 3195
    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->m()V

    .line 1191
    :cond_0
    return-void
.end method

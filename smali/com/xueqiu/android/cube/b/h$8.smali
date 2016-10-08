.class final Lcom/xueqiu/android/cube/b/h$8;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->F()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/SessionToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$8;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 223
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 220
    check-cast p1, Lcom/xueqiu/android/cube/model/SessionToken;

    .line 1228
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$8;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/SessionToken;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    return-void
.end method

.class final Lcom/xueqiu/android/base/h5/c$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "H5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c$3;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/OrderStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/h5/c$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c$3;Lcom/xueqiu/android/base/b/q;Lrx/i;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$3$1;->b:Lcom/xueqiu/android/base/h5/c$3;

    iput-object p3, p0, Lcom/xueqiu/android/base/h5/c$3$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$3$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 1024
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1020
    check-cast p1, Lcom/xueqiu/android/cube/model/OrderStatus;

    .line 2028
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$3$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1020
    return-void
.end method

.class final Lcom/xueqiu/android/base/h5/c$2$1;
.super Lrx/i;
.source "H5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/c$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/cube/model/OrderStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/c$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c$2;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 989
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 986
    check-cast p1, Lcom/xueqiu/android/cube/model/OrderStatus;

    .line 1998
    sget-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->COMPLETE:Lcom/xueqiu/android/cube/model/OrderStatus;

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/cube/model/OrderStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1999
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->d(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->b()V

    .line 2000
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->e(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    .line 2001
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v1, v1, Lcom/xueqiu/android/base/h5/c$2;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Z)V

    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    sget-object v0, Lcom/xueqiu/android/cube/model/OrderStatus;->FAILED:Lcom/xueqiu/android/cube/model/OrderStatus;

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/cube/model/OrderStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->d(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->b()V

    .line 2004
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->e(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    .line 2005
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$2$1;->a:Lcom/xueqiu/android/base/h5/c$2;

    iget-object v1, v1, Lcom/xueqiu/android/base/h5/c$2;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 993
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 994
    return-void
.end method

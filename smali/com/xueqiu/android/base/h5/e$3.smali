.class final Lcom/xueqiu/android/base/h5/e$3;
.super Ljava/lang/Object;
.source "H5Manager.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/e;->a()Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$3;->a:Lcom/xueqiu/android/base/h5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 138
    check-cast p1, Lrx/i;

    .line 1141
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3;->a:Lcom/xueqiu/android/base/h5/e;

    .line 2047
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1141
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const-string v0, "H5Manager"

    const-string v1, "upgrade modules begin"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/h5/e$3$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/h5/e$3$1;-><init>(Lcom/xueqiu/android/base/h5/e$3;Lrx/i;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->f(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 138
    :cond_0
    return-void
.end method

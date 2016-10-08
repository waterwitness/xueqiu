.class final Lcom/xueqiu/android/base/c/b$5$1;
.super Lcom/xueqiu/android/base/b/p;
.source "IPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b$5;->a(Lcom/android/volley/y;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/c/b$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b$5;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 287
    const-string v0, "IPManager"

    const-string v1, "refresh server ip failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->b(Lcom/xueqiu/android/base/c/b;)Lrx/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->b(Lcom/xueqiu/android/base/c/b;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->b(Lcom/xueqiu/android/base/c/b;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->b()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    sget-object v1, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/c/b$5$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/c/b$5$1$1;-><init>(Lcom/xueqiu/android/base/c/b$5$1;)V

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;Lrx/j;)Lrx/j;

    .line 298
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 284
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1305
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V

    .line 1306
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    return-void
.end method

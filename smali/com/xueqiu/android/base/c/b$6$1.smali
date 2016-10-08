.class final Lcom/xueqiu/android/base/c/b$6$1;
.super Lcom/xueqiu/android/base/b/p;
.source "IPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b$6;->a(Lcom/android/volley/y;)V
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
.field final synthetic a:Lcom/xueqiu/android/base/c/b$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b$6;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$6$1;->a:Lcom/xueqiu/android/base/c/b$6;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 350
    const-string v0, "IPManager"

    const-string v1, "refresh routes failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$6$1;->a:Lcom/xueqiu/android/base/c/b$6;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->c(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/c/b$6$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/c/b$6$1$1;-><init>(Lcom/xueqiu/android/base/c/b$6$1;)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 358
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 347
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1362
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$6$1;->a:Lcom/xueqiu/android/base/c/b$6;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->c(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1363
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$6$1;->a:Lcom/xueqiu/android/base/c/b$6;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/c/b;->b(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V

    .line 1368
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/base/c/b$6$1$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/c/b$6$1$2;-><init>(Lcom/xueqiu/android/base/c/b$6$1;)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 347
    return-void
.end method

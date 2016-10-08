.class final Lcom/xueqiu/android/base/c/b$6;
.super Lcom/xueqiu/android/base/b/p;
.source "IPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/q;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/base/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    iput-object p2, p0, Lcom/xueqiu/android/base/c/b$6;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xueqiu/android/base/c/b$6;->b:J

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 344
    const-string v0, "IPManager"

    const-string v1, "refresh routes failed: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "IPManager"

    const-string v1, "refresh routes from: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "http://umas.xueqiu.com/routers.json"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/c/b$6;->a:Ljava/lang/String;

    const-string v3, "http://umas.xueqiu.com/routers.json"

    iget-wide v4, p0, Lcom/xueqiu/android/base/c/b$6;->b:J

    new-instance v6, Lcom/xueqiu/android/base/c/b$6$1;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/base/c/b$6$1;-><init>(Lcom/xueqiu/android/base/c/b$6;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 376
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 341
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1380
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->c(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1381
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$6;->c:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/c/b;->b(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V

    .line 341
    return-void
.end method

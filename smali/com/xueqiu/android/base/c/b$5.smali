.class final Lcom/xueqiu/android/base/c/b$5;
.super Lcom/xueqiu/android/base/b/p;
.source "IPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b;->refresh(Lcom/xueqiu/android/base/q;)V
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

.field final synthetic b:Lcom/xueqiu/android/base/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    iput-object p2, p0, Lcom/xueqiu/android/base/c/b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    const-string v0, "IPManager"

    const-string v1, "refresh server ip failed: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "IPManager"

    const-string v1, "refresh server ip from: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "https://umas.xueqiu.com/domains.json"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/c/b$5;->a:Ljava/lang/String;

    const-string v2, "https://umas.xueqiu.com/domains.json"

    new-instance v3, Lcom/xueqiu/android/base/c/b$5$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/c/b$5$1;-><init>(Lcom/xueqiu/android/base/c/b$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 309
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 279
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1316
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V

    .line 1317
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    return-void
.end method

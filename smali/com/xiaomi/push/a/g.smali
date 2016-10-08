.class final Lcom/xiaomi/push/a/g;
.super Lcom/xiaomi/a/a/c/d;


# instance fields
.field a:Lcom/xiaomi/a/a/c/d;

.field final synthetic b:Lcom/xiaomi/push/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/a/g;->b:Lcom/xiaomi/push/a/b;

    invoke-direct {p0}, Lcom/xiaomi/a/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->b:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->b:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/a/c/d;

    iput-object v0, p0, Lcom/xiaomi/push/a/g;->a:Lcom/xiaomi/a/a/c/d;

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->a:Lcom/xiaomi/a/a/c/d;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/c/d;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->a:Lcom/xiaomi/a/a/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/a/g;->a:Lcom/xiaomi/a/a/c/d;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/c/d;->b()V

    :cond_0
    return-void
.end method

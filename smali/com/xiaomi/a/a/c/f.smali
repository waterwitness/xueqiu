.class final Lcom/xiaomi/a/a/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/c/d;

.field final synthetic b:Lcom/xiaomi/a/a/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/c/b;Lcom/xiaomi/a/a/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/c/f;->b:Lcom/xiaomi/a/a/c/b;

    iput-object p2, p0, Lcom/xiaomi/a/a/c/f;->a:Lcom/xiaomi/a/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/c/f;->b:Lcom/xiaomi/a/a/c/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/c/f;->a:Lcom/xiaomi/a/a/c/d;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/c/b;->a(Lcom/xiaomi/a/a/c/d;)V

    return-void
.end method

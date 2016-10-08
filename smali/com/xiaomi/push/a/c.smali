.class final Lcom/xiaomi/push/a/c;
.super Lcom/xiaomi/push/a/d;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/a/c;->a:Lcom/xiaomi/push/a/b;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/a/d;-><init>(Lcom/xiaomi/push/a/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a/c;->a:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->c(Lcom/xiaomi/push/a/b;)V

    return-void
.end method

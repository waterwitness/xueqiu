.class final Lcom/xiaomi/e/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/e/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/e/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/e/i;->a:Lcom/xiaomi/e/h;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/i;->a:Lcom/xiaomi/e/h;

    invoke-static {v0}, Lcom/xiaomi/e/h;->a(Lcom/xiaomi/e/h;)V

    return-void
.end method

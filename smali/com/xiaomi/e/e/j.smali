.class final Lcom/xiaomi/e/e/j;
.super Lcom/xiaomi/a/a/c/d;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/e/e/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/a/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/e/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

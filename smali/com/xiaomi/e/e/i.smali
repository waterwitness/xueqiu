.class public final Lcom/xiaomi/e/e/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/a/a/c/b;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/a/a/c/b;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/e/e/i;->a:Lcom/xiaomi/a/a/c/b;

    return-void
.end method

.method public static a(Lcom/xiaomi/a/a/c/d;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/e/e/i;->a:Lcom/xiaomi/a/a/c/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/a/a/c/b;->a(Lcom/xiaomi/a/a/c/d;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/a/a/c/d;J)V
    .locals 1

    sget-object v0, Lcom/xiaomi/e/e/i;->a:Lcom/xiaomi/a/a/c/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/a/a/c/b;->a(Lcom/xiaomi/a/a/c/d;J)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/e/e/i;->a:Lcom/xiaomi/a/a/c/b;

    new-instance v1, Lcom/xiaomi/e/e/j;

    invoke-direct {v1, p0}, Lcom/xiaomi/e/e/j;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/c/b;->a(Lcom/xiaomi/a/a/c/d;)V

    return-void
.end method

.class final Lcom/xiaomi/push/service/bk;
.super Lcom/xiaomi/d/i;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/d/i;-><init>(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1000
    :try_start_0
    sget-object v0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 2000
    iget-boolean v0, v0, Lcom/xiaomi/f/g;->a:Z

    .line 0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/e/e/h;->a()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/d/i;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/xiaomi/push/service/bk;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/xiaomi/push/d/a;->q:Lcom/xiaomi/push/d/a;

    .line 3000
    iget v2, v2, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/xiaomi/f/j;->b(ILjava/lang/String;I)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

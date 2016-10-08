.class final Lcom/xiaomi/f/c;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field final synthetic a:Lcom/xiaomi/f/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/f/a;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/f/c;->a:Lcom/xiaomi/f/a;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 0
    iget-object v4, p0, Lcom/xiaomi/f/c;->a:Lcom/xiaomi/f/a;

    .line 3000
    iget-object v1, v4, Lcom/xiaomi/f/a;->b:Lcom/xiaomi/push/service/bd;

    .line 4000
    iget-object v2, v1, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->o:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    iget-boolean v1, v4, Lcom/xiaomi/f/a;->f:Z

    if-eqz v1, :cond_0

    iget v1, v4, Lcom/xiaomi/f/a;->e:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 5000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 2000
    invoke-virtual {v1}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v3

    sget-object v1, Lcom/xiaomi/f/b;->a:[I

    iget-object v2, v4, Lcom/xiaomi/f/a;->d:Lcom/xiaomi/push/service/bf;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/bf;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v4, Lcom/xiaomi/f/a;->c:Lcom/xiaomi/e/a;

    invoke-virtual {v2}, Lcom/xiaomi/e/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 16000
    iput-object v2, v1, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 2000
    iget-object v2, v4, Lcom/xiaomi/f/a;->b:Lcom/xiaomi/push/service/bd;

    iget-object v2, v2, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    .line 17000
    iput-object v2, v1, Lcom/xiaomi/push/d/b;->h:Ljava/lang/String;

    .line 2000
    const/4 v2, 0x1

    iput v2, v1, Lcom/xiaomi/push/d/b;->c:I

    :try_start_1
    iget-object v2, v4, Lcom/xiaomi/f/a;->b:Lcom/xiaomi/push/service/bd;

    iget-object v2, v2, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/d/b;->a(B)Lcom/xiaomi/push/d/b;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18000
    :goto_2
    sget-object v2, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 2000
    invoke-virtual {v2, v1}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    .line 0
    :cond_0
    return-void

    .line 4000
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2000
    :pswitch_0
    iget v1, v4, Lcom/xiaomi/f/a;->e:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/xiaomi/push/d/a;->H:Lcom/xiaomi/push/d/a;

    .line 6000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 2000
    iput v1, v3, Lcom/xiaomi/push/d/b;->b:I

    move-object v1, v3

    goto :goto_1

    :cond_1
    iget v1, v4, Lcom/xiaomi/f/a;->e:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/xiaomi/push/d/a;->O:Lcom/xiaomi/push/d/a;

    .line 7000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 2000
    iput v1, v3, Lcom/xiaomi/push/d/b;->b:I

    move-object v1, v3

    goto :goto_1

    .line 8000
    :cond_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    iget-object v1, v1, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    .line 9000
    iget-object v2, v1, Lcom/xiaomi/f/f;->c:Ljava/lang/Exception;

    .line 10000
    invoke-static {v2}, Lcom/xiaomi/f/d;->a(Ljava/lang/Exception;)V

    instance-of v1, v2, Lcom/xiaomi/e/t;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/xiaomi/e/t;

    move-object v1, v0

    .line 11000
    iget-object v1, v1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 10000
    if-eqz v1, :cond_3

    check-cast v2, Lcom/xiaomi/e/t;

    .line 12000
    iget-object v2, v2, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 10000
    :cond_3
    new-instance v5, Lcom/xiaomi/f/e;

    invoke-direct {v5}, Lcom/xiaomi/f/e;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v2}, Lcom/xiaomi/e/d;->a(Ljava/lang/Throwable;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sparse-switch v6, :sswitch_data_0

    sget-object v1, Lcom/xiaomi/push/d/a;->L:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    :cond_5
    :goto_3
    iget-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v6, Lcom/xiaomi/push/d/a;->K:Lcom/xiaomi/push/d/a;

    if-eq v1, v6, :cond_6

    iget-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v6, Lcom/xiaomi/push/d/a;->L:Lcom/xiaomi/push/d/a;

    if-eq v1, v6, :cond_6

    iget-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v6, Lcom/xiaomi/push/d/a;->N:Lcom/xiaomi/push/d/a;

    if-ne v1, v6, :cond_7

    :cond_6
    iput-object v2, v5, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 2000
    :cond_7
    iget-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    .line 13000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 2000
    iput v1, v3, Lcom/xiaomi/push/d/b;->b:I

    iget-object v1, v5, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 14000
    iput-object v1, v3, Lcom/xiaomi/push/d/b;->g:Ljava/lang/String;

    move-object v1, v3

    .line 2000
    goto/16 :goto_1

    .line 10000
    :sswitch_0
    sget-object v1, Lcom/xiaomi/push/d/a;->H:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_3

    .line 2000
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 10000
    :sswitch_1
    sget-object v1, Lcom/xiaomi/push/d/a;->I:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_3

    :sswitch_2
    sget-object v1, Lcom/xiaomi/push/d/a;->J:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_3

    :sswitch_3
    sget-object v1, Lcom/xiaomi/push/d/a;->K:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_3

    :sswitch_4
    sget-object v6, Lcom/xiaomi/push/d/a;->N:Lcom/xiaomi/push/d/a;

    iput-object v6, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    const-string v6, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/xiaomi/push/d/a;->M:Lcom/xiaomi/push/d/a;

    iput-object v1, v5, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :pswitch_1
    move-object v1, v3

    .line 2000
    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Lcom/xiaomi/push/d/a;->D:Lcom/xiaomi/push/d/a;

    .line 15000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 2000
    iput v1, v3, Lcom/xiaomi/push/d/b;->b:I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 10000
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Handling bind stats"

    return-object v0
.end method

.class final Lu/aly/ap;
.super Lu/aly/gk;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/ao;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 1
    check-cast p2, Lu/aly/ao;

    .line 1427
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1431
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_6

    .line 1434
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1489
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1436
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1437
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ao;->a:Ljava/lang/String;

    goto :goto_0

    .line 1440
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1444
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1446
    invoke-virtual {p1}, Lu/aly/ga;->g()Lu/aly/fz;

    move-result-object v1

    .line 1447
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/fz;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    .line 1448
    const/4 v0, 0x0

    :goto_1
    iget v2, v1, Lu/aly/fz;->c:I

    if-ge v0, v2, :cond_0

    .line 1452
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v2

    .line 1453
    new-instance v3, Lu/aly/cx;

    invoke-direct {v3}, Lu/aly/cx;-><init>()V

    .line 1454
    invoke-virtual {v3, p1}, Lu/aly/cx;->a(Lu/aly/ga;)V

    .line 1455
    iget-object v4, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1461
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1465
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v5, :cond_3

    .line 1466
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ao;->c:J

    .line 1467
    invoke-virtual {p2}, Lu/aly/ao;->b()V

    goto :goto_0

    .line 1469
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1473
    :pswitch_3
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1474
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ao;->d:I

    .line 1475
    invoke-virtual {p2}, Lu/aly/ao;->d()V

    goto :goto_0

    .line 1477
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1481
    :pswitch_4
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v5, :cond_5

    .line 1482
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ao;->e:J

    .line 1483
    invoke-virtual {p2}, Lu/aly/ao;->e()V

    goto/16 :goto_0

    .line 1485
    :cond_5
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1493
    :cond_6
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2328
    iget-byte v0, p2, Lu/aly/ao;->f:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1496
    if-nez v0, :cond_7

    .line 1497
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1499
    :cond_7
    invoke-virtual {p2}, Lu/aly/ao;->f()V

    .line 1
    return-void

    .line 1434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    .line 1
    check-cast p2, Lu/aly/ao;

    .line 2503
    invoke-virtual {p2}, Lu/aly/ao;->f()V

    .line 2505
    invoke-static {}, Lu/aly/ao;->g()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2506
    iget-object v0, p2, Lu/aly/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2507
    invoke-static {}, Lu/aly/ao;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2508
    iget-object v0, p2, Lu/aly/ao;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2511
    :cond_0
    iget-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2512
    invoke-static {}, Lu/aly/ao;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2514
    new-instance v0, Lu/aly/fz;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/fz;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fz;)V

    .line 2515
    iget-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2524
    :cond_1
    invoke-virtual {p2}, Lu/aly/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2525
    invoke-static {}, Lu/aly/ao;->j()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2526
    iget-wide v0, p2, Lu/aly/ao;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2529
    :cond_2
    invoke-virtual {p2}, Lu/aly/ao;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2530
    invoke-static {}, Lu/aly/ao;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2531
    iget v0, p2, Lu/aly/ao;->d:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2534
    :cond_3
    invoke-static {}, Lu/aly/ao;->l()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2535
    iget-wide v0, p2, Lu/aly/ao;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2537
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2538
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 2515
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-virtual {v0, p1}, Lu/aly/cx;->b(Lu/aly/ga;)V

    goto :goto_0
.end method

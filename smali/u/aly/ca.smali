.class final Lu/aly/ca;
.super Lu/aly/gk;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/bz;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/bz;

    .line 1423
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1427
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-eqz v2, :cond_5

    .line 1430
    iget-short v2, v0, Lu/aly/fx;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1497
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1432
    :pswitch_0
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 1433
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bz;->a:Ljava/lang/String;

    goto :goto_0

    .line 1436
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1440
    :pswitch_1
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_2

    .line 1442
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bz;->b:Ljava/util/List;

    move v0, v1

    .line 1444
    :goto_1
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1447
    new-instance v3, Lu/aly/ah;

    invoke-direct {v3}, Lu/aly/ah;-><init>()V

    .line 1448
    invoke-virtual {v3, p1}, Lu/aly/ah;->a(Lu/aly/ga;)V

    .line 1449
    iget-object v4, p2, Lu/aly/bz;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1455
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1459
    :pswitch_2
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_3

    .line 1461
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bz;->c:Ljava/util/List;

    move v0, v1

    .line 1463
    :goto_2
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1466
    new-instance v3, Lu/aly/ao;

    invoke-direct {v3}, Lu/aly/ao;-><init>()V

    .line 1467
    invoke-virtual {v3, p1}, Lu/aly/ao;->a(Lu/aly/ga;)V

    .line 1468
    iget-object v4, p2, Lu/aly/bz;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1474
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1478
    :pswitch_3
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_4

    .line 1480
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bz;->d:Ljava/util/List;

    move v0, v1

    .line 1482
    :goto_3
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1485
    new-instance v3, Lu/aly/ao;

    invoke-direct {v3}, Lu/aly/ao;-><init>()V

    .line 1486
    invoke-virtual {v3, p1}, Lu/aly/ao;->a(Lu/aly/ga;)V

    .line 1487
    iget-object v4, p2, Lu/aly/bz;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1493
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1501
    :cond_5
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1504
    invoke-virtual {p2}, Lu/aly/bz;->d()V

    .line 1
    return-void

    .line 1430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1
    check-cast p2, Lu/aly/bz;

    .line 2508
    invoke-virtual {p2}, Lu/aly/bz;->d()V

    .line 2510
    invoke-static {}, Lu/aly/bz;->e()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2511
    iget-object v0, p2, Lu/aly/bz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2512
    invoke-static {}, Lu/aly/bz;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2513
    iget-object v0, p2, Lu/aly/bz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2516
    :cond_0
    iget-object v0, p2, Lu/aly/bz;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2517
    invoke-virtual {p2}, Lu/aly/bz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2518
    invoke-static {}, Lu/aly/bz;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2520
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/bz;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2521
    iget-object v0, p2, Lu/aly/bz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2530
    :cond_1
    iget-object v0, p2, Lu/aly/bz;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2531
    invoke-virtual {p2}, Lu/aly/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2532
    invoke-static {}, Lu/aly/bz;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2534
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/bz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2535
    iget-object v0, p2, Lu/aly/bz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2544
    :cond_2
    iget-object v0, p2, Lu/aly/bz;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2545
    invoke-virtual {p2}, Lu/aly/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2546
    invoke-static {}, Lu/aly/bz;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2548
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/bz;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2549
    iget-object v0, p2, Lu/aly/bz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2558
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2559
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 2521
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ah;

    .line 2523
    invoke-virtual {v0, p1}, Lu/aly/ah;->b(Lu/aly/ga;)V

    goto :goto_0

    .line 2535
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 2537
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/ga;)V

    goto :goto_1

    .line 2549
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 2551
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/ga;)V

    goto :goto_2
.end method

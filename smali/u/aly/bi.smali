.class final Lu/aly/bi;
.super Lu/aly/gk;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/bh;

    .line 1363
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1367
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-eqz v2, :cond_5

    .line 1370
    iget-short v2, v0, Lu/aly/fx;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1420
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1372
    :pswitch_0
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1374
    invoke-virtual {p1}, Lu/aly/ga;->g()Lu/aly/fz;

    move-result-object v2

    .line 1375
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/fz;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/util/Map;

    move v0, v1

    .line 1376
    :goto_1
    iget v3, v2, Lu/aly/fz;->c:I

    if-ge v0, v3, :cond_0

    .line 1380
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v3

    .line 1381
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4}, Lu/aly/bb;-><init>()V

    .line 1382
    invoke-virtual {v4, p1}, Lu/aly/bb;->a(Lu/aly/ga;)V

    .line 1383
    iget-object v5, p2, Lu/aly/bh;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1389
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1393
    :pswitch_1
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 1395
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/util/List;

    move v0, v1

    .line 1397
    :goto_2
    iget v3, v2, Lu/aly/fy;->b:I

    if-lt v0, v3, :cond_2

    .line 1406
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/bh;->a(Z)V

    goto :goto_0

    .line 1400
    :cond_2
    new-instance v3, Lu/aly/av;

    invoke-direct {v3}, Lu/aly/av;-><init>()V

    .line 1401
    invoke-virtual {v3, p1}, Lu/aly/av;->a(Lu/aly/ga;)V

    .line 1402
    iget-object v4, p2, Lu/aly/bh;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1408
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1412
    :pswitch_2
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 1413
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1416
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1424
    :cond_5
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1427
    invoke-virtual {p2}, Lu/aly/bh;->c()V

    .line 1
    return-void

    .line 1370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 1
    check-cast p2, Lu/aly/bh;

    .line 2431
    invoke-virtual {p2}, Lu/aly/bh;->c()V

    .line 2433
    invoke-static {}, Lu/aly/bh;->d()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2434
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2435
    invoke-static {}, Lu/aly/bh;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2437
    new-instance v0, Lu/aly/fz;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/bh;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/fz;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fz;)V

    .line 2438
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2447
    :cond_0
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2448
    invoke-virtual {p2}, Lu/aly/bh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2449
    invoke-static {}, Lu/aly/bh;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2451
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/bh;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2452
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2461
    :cond_1
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2462
    invoke-virtual {p2}, Lu/aly/bh;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2463
    invoke-static {}, Lu/aly/bh;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2464
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2468
    :cond_2
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2469
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 2438
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/ga;)V

    goto :goto_0

    .line 2452
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 2454
    invoke-virtual {v0, p1}, Lu/aly/av;->b(Lu/aly/ga;)V

    goto :goto_1
.end method

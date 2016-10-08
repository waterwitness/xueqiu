.class final Lu/aly/aw;
.super Lu/aly/gk;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lu/aly/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1
    check-cast p2, Lu/aly/av;

    .line 1367
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1370
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1371
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_4

    .line 1374
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1408
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1376
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_0

    .line 1377
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    goto :goto_0

    .line 1380
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1384
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_1

    .line 1385
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    goto :goto_0

    .line 1388
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1392
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_2

    .line 1393
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->c:Ljava/lang/String;

    goto :goto_0

    .line 1396
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1400
    :pswitch_3
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1401
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->d:J

    .line 1402
    invoke-virtual {p2}, Lu/aly/av;->b()V

    goto :goto_0

    .line 1404
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1412
    :cond_4
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2270
    iget-byte v0, p2, Lu/aly/av;->e:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1415
    if-nez v0, :cond_5

    .line 1416
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

    .line 1418
    :cond_5
    invoke-virtual {p2}, Lu/aly/av;->c()V

    .line 1
    return-void

    .line 1374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/av;

    .line 2422
    invoke-virtual {p2}, Lu/aly/av;->c()V

    .line 2424
    invoke-static {}, Lu/aly/av;->d()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2425
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2426
    invoke-static {}, Lu/aly/av;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2427
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2430
    :cond_0
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2431
    invoke-virtual {p2}, Lu/aly/av;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2432
    invoke-static {}, Lu/aly/av;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2433
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2437
    :cond_1
    iget-object v0, p2, Lu/aly/av;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2438
    invoke-static {}, Lu/aly/av;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2439
    iget-object v0, p2, Lu/aly/av;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2442
    :cond_2
    invoke-static {}, Lu/aly/av;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2443
    iget-wide v0, p2, Lu/aly/av;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2445
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2446
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

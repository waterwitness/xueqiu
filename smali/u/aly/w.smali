.class final Lu/aly/w;
.super Lu/aly/gk;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1
    check-cast p2, Lu/aly/v;

    .line 1312
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1315
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1316
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_3

    .line 1319
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1345
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1321
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_0

    .line 1322
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->a:I

    .line 1323
    invoke-virtual {p2}, Lu/aly/v;->a()V

    goto :goto_0

    .line 1325
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1329
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 1330
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->b:I

    .line 1331
    invoke-virtual {p2}, Lu/aly/v;->b()V

    goto :goto_0

    .line 1333
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1337
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_2

    .line 1338
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->c:I

    .line 1339
    invoke-virtual {p2}, Lu/aly/v;->d()V

    goto :goto_0

    .line 1341
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1349
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2190
    iget-byte v0, p2, Lu/aly/v;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1352
    if-nez v0, :cond_4

    .line 1353
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'successful_requests\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2213
    :cond_4
    iget-byte v0, p2, Lu/aly/v;->d:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1355
    if-nez v0, :cond_5

    .line 1356
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'failed_requests\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_5
    invoke-static {}, Lu/aly/v;->e()V

    .line 1
    return-void

    .line 1319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/v;

    .line 2362
    invoke-static {}, Lu/aly/v;->e()V

    .line 2364
    invoke-static {}, Lu/aly/v;->f()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2365
    invoke-static {}, Lu/aly/v;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2366
    iget v0, p2, Lu/aly/v;->a:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2368
    invoke-static {}, Lu/aly/v;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2369
    iget v0, p2, Lu/aly/v;->b:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2371
    invoke-virtual {p2}, Lu/aly/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    invoke-static {}, Lu/aly/v;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2373
    iget v0, p2, Lu/aly/v;->c:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2376
    :cond_0
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2377
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

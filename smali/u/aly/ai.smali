.class final Lu/aly/ai;
.super Lu/aly/gk;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/ah;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/ah;

    .line 1335
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1338
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1339
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_3

    .line 1342
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1368
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1345
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ah;->a:J

    .line 1346
    invoke-virtual {p2}, Lu/aly/ah;->b()V

    goto :goto_0

    .line 1348
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1352
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1353
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ah;->b:Ljava/lang/String;

    goto :goto_0

    .line 1356
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1360
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1361
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/an;->a(I)Lu/aly/an;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ah;->c:Lu/aly/an;

    goto :goto_0

    .line 1364
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3193
    iget-byte v0, p2, Lu/aly/ah;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1375
    if-nez v0, :cond_4

    .line 1376
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

    .line 1378
    :cond_4
    invoke-virtual {p2}, Lu/aly/ah;->d()V

    .line 1
    return-void

    .line 1342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ah;

    .line 3382
    invoke-virtual {p2}, Lu/aly/ah;->d()V

    .line 3384
    invoke-static {}, Lu/aly/ah;->e()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3385
    invoke-static {}, Lu/aly/ah;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3386
    iget-wide v0, p2, Lu/aly/ah;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 3388
    iget-object v0, p2, Lu/aly/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3389
    invoke-static {}, Lu/aly/ah;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3390
    iget-object v0, p2, Lu/aly/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3393
    :cond_0
    iget-object v0, p2, Lu/aly/ah;->c:Lu/aly/an;

    if-eqz v0, :cond_1

    .line 3394
    invoke-virtual {p2}, Lu/aly/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3395
    invoke-static {}, Lu/aly/ah;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3396
    iget-object v0, p2, Lu/aly/ah;->c:Lu/aly/an;

    .line 4029
    iget v0, v0, Lu/aly/an;->c:I

    .line 3396
    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3400
    :cond_1
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3401
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

.class final Lu/aly/bu;
.super Lu/aly/gk;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/bt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1
    check-cast p2, Lu/aly/bt;

    .line 1319
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1322
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1323
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_3

    .line 1326
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1352
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1328
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_0

    .line 1329
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bt;->a:Ljava/lang/String;

    goto :goto_0

    .line 1332
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1337
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bt;->b:J

    .line 1338
    invoke-virtual {p2}, Lu/aly/bt;->b()V

    goto :goto_0

    .line 1340
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1344
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_2

    .line 1345
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bt;->c:Ljava/lang/String;

    goto :goto_0

    .line 1348
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1356
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3209
    iget-byte v0, p2, Lu/aly/bt;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1359
    if-nez v0, :cond_4

    .line 1360
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

    .line 1362
    :cond_4
    invoke-virtual {p2}, Lu/aly/bt;->c()V

    .line 1
    return-void

    .line 1326
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
    check-cast p2, Lu/aly/bt;

    .line 3366
    invoke-virtual {p2}, Lu/aly/bt;->c()V

    .line 3368
    invoke-static {}, Lu/aly/bt;->d()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3369
    iget-object v0, p2, Lu/aly/bt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3370
    invoke-virtual {p2}, Lu/aly/bt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3371
    invoke-static {}, Lu/aly/bt;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3372
    iget-object v0, p2, Lu/aly/bt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3376
    :cond_0
    invoke-static {}, Lu/aly/bt;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3377
    iget-wide v0, p2, Lu/aly/bt;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 3379
    iget-object v0, p2, Lu/aly/bt;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3380
    invoke-static {}, Lu/aly/bt;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3381
    iget-object v0, p2, Lu/aly/bt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3384
    :cond_1
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3385
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

.class final Lu/aly/dh;
.super Lu/aly/gk;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/dg;",
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
    invoke-direct {p0}, Lu/aly/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/dg;

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

    .line 1353
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1328
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1329
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dg;->a:I

    .line 1330
    invoke-virtual {p2}, Lu/aly/dg;->a()V

    goto :goto_0

    .line 1332
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1337
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/dg;->b:Ljava/lang/String;

    goto :goto_0

    .line 1340
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1344
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 1345
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    iput-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    .line 1346
    iget-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1349
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1357
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3183
    iget-byte v0, p2, Lu/aly/dg;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1360
    if-nez v0, :cond_4

    .line 1361
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_4
    invoke-virtual {p2}, Lu/aly/dg;->d()V

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
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/dg;

    .line 3367
    invoke-virtual {p2}, Lu/aly/dg;->d()V

    .line 3369
    invoke-static {}, Lu/aly/dg;->e()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3370
    invoke-static {}, Lu/aly/dg;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3371
    iget v0, p2, Lu/aly/dg;->a:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3373
    iget-object v0, p2, Lu/aly/dg;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3374
    invoke-virtual {p2}, Lu/aly/dg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3375
    invoke-static {}, Lu/aly/dg;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3376
    iget-object v0, p2, Lu/aly/dg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3380
    :cond_0
    iget-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    if-eqz v0, :cond_1

    .line 3381
    invoke-virtual {p2}, Lu/aly/dg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3382
    invoke-static {}, Lu/aly/dg;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3383
    iget-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/ga;)V

    .line 3387
    :cond_1
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3388
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

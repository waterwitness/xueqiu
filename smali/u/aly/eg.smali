.class final Lu/aly/eg;
.super Lu/aly/gk;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/ef;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lu/aly/eg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0x8

    .line 1
    check-cast p2, Lu/aly/ef;

    .line 1370
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1373
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1374
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_4

    .line 1377
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1411
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1379
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_0

    .line 1380
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/au;->a(I)Lu/aly/au;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ef;->a:Lu/aly/au;

    goto :goto_0

    .line 1383
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1387
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 1388
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ef;->b:I

    .line 1389
    invoke-virtual {p2}, Lu/aly/ef;->c()V

    goto :goto_0

    .line 1391
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1395
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_2

    .line 1396
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ef;->c:Ljava/lang/String;

    goto :goto_0

    .line 1399
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1403
    :pswitch_3
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_3

    .line 1404
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ef;->d:Ljava/lang/String;

    goto :goto_0

    .line 1407
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1415
    :cond_4
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1418
    invoke-static {}, Lu/aly/ef;->f()V

    .line 1
    return-void

    .line 1377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/ef;

    .line 2422
    invoke-static {}, Lu/aly/ef;->f()V

    .line 2424
    invoke-static {}, Lu/aly/ef;->g()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2425
    iget-object v0, p2, Lu/aly/ef;->a:Lu/aly/au;

    if-eqz v0, :cond_0

    .line 2426
    invoke-virtual {p2}, Lu/aly/ef;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    invoke-static {}, Lu/aly/ef;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2428
    iget-object v0, p2, Lu/aly/ef;->a:Lu/aly/au;

    .line 3030
    iget v0, v0, Lu/aly/au;->d:I

    .line 2428
    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2432
    :cond_0
    invoke-virtual {p2}, Lu/aly/ef;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2433
    invoke-static {}, Lu/aly/ef;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2434
    iget v0, p2, Lu/aly/ef;->b:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2437
    :cond_1
    iget-object v0, p2, Lu/aly/ef;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2438
    invoke-virtual {p2}, Lu/aly/ef;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2439
    invoke-static {}, Lu/aly/ef;->j()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2440
    iget-object v0, p2, Lu/aly/ef;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2444
    :cond_2
    iget-object v0, p2, Lu/aly/ef;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2445
    invoke-virtual {p2}, Lu/aly/ef;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2446
    invoke-static {}, Lu/aly/ef;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2447
    iget-object v0, p2, Lu/aly/ef;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2451
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2452
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

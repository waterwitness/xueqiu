.class final Lu/aly/bo;
.super Lu/aly/gk;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/bn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/bo;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/bn;

    .line 1346
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1350
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-eqz v2, :cond_4

    .line 1353
    iget-short v2, v0, Lu/aly/fx;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1392
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1355
    :pswitch_0
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1357
    invoke-virtual {p1}, Lu/aly/ga;->g()Lu/aly/fz;

    move-result-object v2

    .line 1358
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/fz;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

    move v0, v1

    .line 1359
    :goto_1
    iget v3, v2, Lu/aly/fz;->c:I

    if-ge v0, v3, :cond_0

    .line 1363
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v3

    .line 1364
    new-instance v4, Lu/aly/bt;

    invoke-direct {v4}, Lu/aly/bt;-><init>()V

    .line 1365
    invoke-virtual {v4, p1}, Lu/aly/bt;->a(Lu/aly/ga;)V

    .line 1366
    iget-object v5, p2, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1372
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1376
    :pswitch_1
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1377
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bn;->b:I

    .line 1378
    invoke-virtual {p2}, Lu/aly/bn;->a()V

    goto :goto_0

    .line 1380
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1384
    :pswitch_2
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 1385
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    goto :goto_0

    .line 1388
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1396
    :cond_4
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3235
    iget-byte v0, p2, Lu/aly/bn;->d:B

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1399
    if-nez v0, :cond_5

    .line 1400
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_5
    invoke-virtual {p2}, Lu/aly/bn;->b()V

    .line 1
    return-void

    .line 1353
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
    .line 1
    check-cast p2, Lu/aly/bn;

    .line 3406
    invoke-virtual {p2}, Lu/aly/bn;->b()V

    .line 3408
    invoke-static {}, Lu/aly/bn;->c()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3409
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3410
    invoke-static {}, Lu/aly/bn;->d()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3412
    new-instance v0, Lu/aly/fz;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/fz;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fz;)V

    .line 3413
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3422
    :cond_0
    invoke-static {}, Lu/aly/bn;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3423
    iget v0, p2, Lu/aly/bn;->b:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3425
    iget-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3426
    invoke-static {}, Lu/aly/bn;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3427
    iget-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3430
    :cond_1
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3431
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 3413
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bt;

    invoke-virtual {v0, p1}, Lu/aly/bt;->b(Lu/aly/ga;)V

    goto :goto_0
.end method

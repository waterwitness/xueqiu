.class final Lu/aly/cg;
.super Lu/aly/gk;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/cf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1
    check-cast p2, Lu/aly/cf;

    .line 1309
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1312
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1313
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_3

    .line 1316
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1342
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1318
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_0

    .line 1319
    invoke-virtual {p1}, Lu/aly/ga;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->a:D

    .line 1320
    invoke-virtual {p2}, Lu/aly/cf;->a()V

    goto :goto_0

    .line 1322
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1326
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_1

    .line 1327
    invoke-virtual {p1}, Lu/aly/ga;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->b:D

    .line 1328
    invoke-virtual {p2}, Lu/aly/cf;->b()V

    goto :goto_0

    .line 1330
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1334
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1335
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->c:J

    .line 1336
    invoke-virtual {p2}, Lu/aly/cf;->c()V

    goto :goto_0

    .line 1338
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1346
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2188
    iget-byte v0, p2, Lu/aly/cf;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1349
    if-nez v0, :cond_4

    .line 1350
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lat\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2211
    :cond_4
    iget-byte v0, p2, Lu/aly/cf;->d:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1352
    if-nez v0, :cond_5

    .line 1353
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lng\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2234
    :cond_5
    iget-byte v0, p2, Lu/aly/cf;->d:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1355
    if-nez v0, :cond_6

    .line 1356
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

    .line 1358
    :cond_6
    invoke-static {}, Lu/aly/cf;->d()V

    .line 1
    return-void

    .line 1316
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
    check-cast p2, Lu/aly/cf;

    .line 2362
    invoke-static {}, Lu/aly/cf;->d()V

    .line 2364
    invoke-static {}, Lu/aly/cf;->e()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2365
    invoke-static {}, Lu/aly/cf;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2366
    iget-wide v0, p2, Lu/aly/cf;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(D)V

    .line 2368
    invoke-static {}, Lu/aly/cf;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2369
    iget-wide v0, p2, Lu/aly/cf;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(D)V

    .line 2371
    invoke-static {}, Lu/aly/cf;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2372
    iget-wide v0, p2, Lu/aly/cf;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2374
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2375
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

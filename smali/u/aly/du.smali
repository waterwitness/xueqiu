.class final Lu/aly/du;
.super Lu/aly/gk;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/dt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/du;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1
    check-cast p2, Lu/aly/dt;

    .line 1267
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1270
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1271
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_2

    .line 1274
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1292
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1276
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_0

    .line 1277
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dt;->a:I

    .line 1278
    invoke-virtual {p2}, Lu/aly/dt;->a()V

    goto :goto_0

    .line 1280
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1284
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 1285
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dt;->b:I

    .line 1286
    invoke-virtual {p2}, Lu/aly/dt;->b()V

    goto :goto_0

    .line 1288
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2174
    iget-byte v0, p2, Lu/aly/dt;->c:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1299
    if-nez v0, :cond_3

    .line 1300
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'upload_traffic\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2197
    :cond_3
    iget-byte v0, p2, Lu/aly/dt;->c:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1302
    if-nez v0, :cond_4

    .line 1303
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'download_traffic\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_4
    invoke-static {}, Lu/aly/dt;->c()V

    .line 1
    return-void

    .line 1274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/dt;

    .line 2309
    invoke-static {}, Lu/aly/dt;->c()V

    .line 2311
    invoke-static {}, Lu/aly/dt;->d()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2312
    invoke-static {}, Lu/aly/dt;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2313
    iget v0, p2, Lu/aly/dt;->a:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2315
    invoke-static {}, Lu/aly/dt;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2316
    iget v0, p2, Lu/aly/dt;->b:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2318
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2319
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

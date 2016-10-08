.class final Lu/aly/cs;
.super Lu/aly/gk;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/cr;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/cr;

    .line 1273
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1276
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1277
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_2

    .line 1280
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1298
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1282
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1283
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cr;->a:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1290
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1291
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cr;->b:J

    .line 1292
    invoke-virtual {p2}, Lu/aly/cr;->a()V

    goto :goto_0

    .line 1294
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1302
    :cond_2
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2197
    iget-byte v0, p2, Lu/aly/cr;->c:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1305
    if-nez v0, :cond_3

    .line 1306
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_3
    invoke-virtual {p2}, Lu/aly/cr;->b()V

    .line 1
    return-void

    .line 1280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cr;

    .line 2312
    invoke-virtual {p2}, Lu/aly/cr;->b()V

    .line 2314
    invoke-static {}, Lu/aly/cr;->c()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2315
    iget-object v0, p2, Lu/aly/cr;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2316
    invoke-static {}, Lu/aly/cr;->d()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2317
    iget-object v0, p2, Lu/aly/cr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2320
    :cond_0
    invoke-static {}, Lu/aly/cr;->e()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2321
    iget-wide v0, p2, Lu/aly/cr;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2323
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2324
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

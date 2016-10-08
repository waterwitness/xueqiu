.class final Lu/aly/k;
.super Lu/aly/gk;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/i;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lu/aly/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/i;

    .line 1225
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1228
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1229
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_1

    .line 1232
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1242
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1234
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1235
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/i;->a:J

    .line 1236
    invoke-virtual {p2}, Lu/aly/i;->a()V

    goto :goto_0

    .line 1238
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1246
    :cond_1
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 2160
    iget-byte v0, p2, Lu/aly/i;->b:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1249
    if-nez v0, :cond_2

    .line 1250
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

    .line 1252
    :cond_2
    invoke-static {}, Lu/aly/i;->b()V

    .line 1
    return-void

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/i;

    .line 2256
    invoke-static {}, Lu/aly/i;->b()V

    .line 2258
    invoke-static {}, Lu/aly/i;->c()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2259
    invoke-static {}, Lu/aly/i;->d()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2260
    iget-wide v0, p2, Lu/aly/i;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 2262
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2263
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method

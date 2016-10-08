.class final Lu/aly/ae;
.super Lu/aly/gl;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/ab;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Lu/aly/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    .line 1
    check-cast p2, Lu/aly/ab;

    .line 2330
    check-cast p1, Lu/aly/gh;

    .line 2331
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 2332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2333
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->a:Ljava/lang/String;

    .line 2336
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2337
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->b:Ljava/lang/String;

    .line 2340
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2341
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->c:Ljava/lang/String;

    .line 2344
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2345
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->d:Ljava/lang/String;

    .line 2348
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2349
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->e:Ljava/lang/String;

    .line 2352
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2353
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->f:Ljava/lang/String;

    .line 2356
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2357
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->g:Ljava/lang/String;

    .line 2360
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2361
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->h:Ljava/lang/String;

    .line 2364
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2365
    new-instance v1, Lu/aly/da;

    invoke-direct {v1}, Lu/aly/da;-><init>()V

    iput-object v1, p2, Lu/aly/ab;->i:Lu/aly/da;

    .line 2366
    iget-object v1, p2, Lu/aly/ab;->i:Lu/aly/da;

    invoke-virtual {v1, p1}, Lu/aly/da;->a(Lu/aly/ga;)V

    .line 2369
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2370
    invoke-virtual {p1}, Lu/aly/gh;->j()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/ab;->j:Z

    .line 2371
    invoke-virtual {p2}, Lu/aly/ab;->k()V

    .line 2373
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2374
    invoke-virtual {p1}, Lu/aly/gh;->j()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/ab;->k:Z

    .line 2375
    invoke-virtual {p2}, Lu/aly/ab;->m()V

    .line 2377
    :cond_a
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2378
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->l:Ljava/lang/String;

    .line 2381
    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2382
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->m:Ljava/lang/String;

    .line 2385
    :cond_c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2386
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ab;->n:J

    .line 2387
    invoke-virtual {p2}, Lu/aly/ab;->q()V

    .line 2389
    :cond_d
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2390
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->o:Ljava/lang/String;

    .line 2393
    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2394
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ab;->p:Ljava/lang/String;

    .line 2397
    :cond_f
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2398
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ab;->q:Ljava/lang/String;

    .line 1
    :cond_10
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ab;

    .line 4221
    check-cast p1, Lu/aly/gh;

    .line 4222
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 4223
    invoke-virtual {p2}, Lu/aly/ab;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4226
    :cond_0
    invoke-virtual {p2}, Lu/aly/ab;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4229
    :cond_1
    invoke-virtual {p2}, Lu/aly/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4230
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4232
    :cond_2
    invoke-virtual {p2}, Lu/aly/ab;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4233
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4235
    :cond_3
    invoke-virtual {p2}, Lu/aly/ab;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4236
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4238
    :cond_4
    invoke-virtual {p2}, Lu/aly/ab;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4239
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4241
    :cond_5
    invoke-virtual {p2}, Lu/aly/ab;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4242
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4244
    :cond_6
    invoke-virtual {p2}, Lu/aly/ab;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4245
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4247
    :cond_7
    invoke-virtual {p2}, Lu/aly/ab;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4248
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4250
    :cond_8
    invoke-virtual {p2}, Lu/aly/ab;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4251
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4253
    :cond_9
    invoke-virtual {p2}, Lu/aly/ab;->l()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4254
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4256
    :cond_a
    invoke-virtual {p2}, Lu/aly/ab;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4257
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4259
    :cond_b
    invoke-virtual {p2}, Lu/aly/ab;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4260
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4262
    :cond_c
    invoke-virtual {p2}, Lu/aly/ab;->p()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4263
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4265
    :cond_d
    invoke-virtual {p2}, Lu/aly/ab;->r()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4266
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4268
    :cond_e
    invoke-virtual {p2}, Lu/aly/ab;->s()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4269
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4271
    :cond_f
    invoke-virtual {p2}, Lu/aly/ab;->t()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4272
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 4274
    :cond_10
    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 4275
    invoke-virtual {p2}, Lu/aly/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4276
    iget-object v0, p2, Lu/aly/ab;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4278
    :cond_11
    invoke-virtual {p2}, Lu/aly/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4279
    iget-object v0, p2, Lu/aly/ab;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4281
    :cond_12
    invoke-virtual {p2}, Lu/aly/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4282
    iget-object v0, p2, Lu/aly/ab;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4284
    :cond_13
    invoke-virtual {p2}, Lu/aly/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4285
    iget-object v0, p2, Lu/aly/ab;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4287
    :cond_14
    invoke-virtual {p2}, Lu/aly/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4288
    iget-object v0, p2, Lu/aly/ab;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4290
    :cond_15
    invoke-virtual {p2}, Lu/aly/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4291
    iget-object v0, p2, Lu/aly/ab;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4293
    :cond_16
    invoke-virtual {p2}, Lu/aly/ab;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4294
    iget-object v0, p2, Lu/aly/ab;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4296
    :cond_17
    invoke-virtual {p2}, Lu/aly/ab;->h()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4297
    iget-object v0, p2, Lu/aly/ab;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4299
    :cond_18
    invoke-virtual {p2}, Lu/aly/ab;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4300
    iget-object v0, p2, Lu/aly/ab;->i:Lu/aly/da;

    invoke-virtual {v0, p1}, Lu/aly/da;->b(Lu/aly/ga;)V

    .line 4302
    :cond_19
    invoke-virtual {p2}, Lu/aly/ab;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4303
    iget-boolean v0, p2, Lu/aly/ab;->j:Z

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Z)V

    .line 4305
    :cond_1a
    invoke-virtual {p2}, Lu/aly/ab;->l()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4306
    iget-boolean v0, p2, Lu/aly/ab;->k:Z

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Z)V

    .line 4308
    :cond_1b
    invoke-virtual {p2}, Lu/aly/ab;->n()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4309
    iget-object v0, p2, Lu/aly/ab;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4311
    :cond_1c
    invoke-virtual {p2}, Lu/aly/ab;->o()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4312
    iget-object v0, p2, Lu/aly/ab;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4314
    :cond_1d
    invoke-virtual {p2}, Lu/aly/ab;->p()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4315
    iget-wide v0, p2, Lu/aly/ab;->n:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 4317
    :cond_1e
    invoke-virtual {p2}, Lu/aly/ab;->r()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4318
    iget-object v0, p2, Lu/aly/ab;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4320
    :cond_1f
    invoke-virtual {p2}, Lu/aly/ab;->s()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4321
    iget-object v0, p2, Lu/aly/ab;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 4323
    :cond_20
    invoke-virtual {p2}, Lu/aly/ab;->t()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4324
    iget-object v0, p2, Lu/aly/ab;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 1
    :cond_21
    return-void
.end method

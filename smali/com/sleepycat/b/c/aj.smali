.class final Lcom/sleepycat/b/c/aj;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/sleepycat/b/c/bc;


# instance fields
.field final a:Lcom/sleepycat/b/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/ba",
            "<",
            "Lcom/sleepycat/b/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/sleepycat/b/c/ad;

.field private final c:J

.field private final d:J

.field private final e:Lcom/sleepycat/b/ay;

.field private final f:Z

.field private g:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;JJLcom/sleepycat/b/ay;Lcom/sleepycat/b/aw;)V
    .locals 2

    .prologue
    .line 3214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/c/aj;->g:J

    .line 3215
    iput-object p1, p0, Lcom/sleepycat/b/c/aj;->b:Lcom/sleepycat/b/c/ad;

    .line 3216
    iput-wide p2, p0, Lcom/sleepycat/b/c/aj;->c:J

    .line 3217
    iput-wide p4, p0, Lcom/sleepycat/b/c/aj;->d:J

    .line 3218
    iput-object p6, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 4128
    iget-boolean v0, p7, Lcom/sleepycat/b/aw;->c:Z

    .line 3219
    iput-boolean v0, p0, Lcom/sleepycat/b/c/aj;->f:Z

    .line 4174
    iget-object v0, p7, Lcom/sleepycat/b/aw;->d:Lcom/sleepycat/b/ba;

    .line 3220
    iput-object v0, p0, Lcom/sleepycat/b/c/aj;->a:Lcom/sleepycat/b/ba;

    .line 3221
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 8227
    iget v1, v0, Lcom/sleepycat/b/ay;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->g:I

    .line 3283
    return-void
.end method

.method public final a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V
    .locals 4

    .prologue
    .line 3236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/c/aj;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3237
    invoke-static {}, Lcom/sleepycat/b/c/ad;->V()Lcom/sleepycat/b/c/ae;

    move-result-object v0

    throw v0

    .line 3240
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->b:Lcom/sleepycat/b/c/ad;

    .line 4508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 5197
    iget-object v0, v0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v0

    .line 3240
    iget-wide v2, p0, Lcom/sleepycat/b/c/aj;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3241
    invoke-static {}, Lcom/sleepycat/b/c/ad;->W()Lcom/sleepycat/b/c/ae;

    move-result-object v0

    throw v0

    .line 3244
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->a:Lcom/sleepycat/b/ba;

    if-eqz v0, :cond_2

    .line 3245
    iget-wide v0, p0, Lcom/sleepycat/b/c/aj;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/c/aj;->g:J

    .line 3246
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->a:Lcom/sleepycat/b/ba;

    sget v1, Lcom/sleepycat/b/ax;->a:I

    invoke-interface {v0}, Lcom/sleepycat/b/ba;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3248
    invoke-static {}, Lcom/sleepycat/b/c/ad;->X()Lcom/sleepycat/b/c/ae;

    move-result-object v0

    throw v0

    .line 3253
    :cond_2
    sget-object v0, Lcom/sleepycat/b/g/af;->i:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sleepycat/b/g/af;->j:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3255
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 5219
    iget v1, v0, Lcom/sleepycat/b/ay;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->f:I

    .line 3269
    :cond_4
    :goto_0
    return-void

    .line 3256
    :cond_5
    invoke-virtual {p3}, Lcom/sleepycat/b/g/af;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3257
    iget-boolean v0, p0, Lcom/sleepycat/b/c/aj;->f:Z

    if-eqz v0, :cond_4

    .line 3258
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 6187
    iget v1, v0, Lcom/sleepycat/b/ay;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->c:I

    goto :goto_0

    .line 3260
    :cond_6
    sget-object v0, Lcom/sleepycat/b/g/af;->o:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3261
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 6211
    iget v1, v0, Lcom/sleepycat/b/ay;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->e:I

    goto :goto_0

    .line 3262
    :cond_7
    sget-object v0, Lcom/sleepycat/b/g/af;->m:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3263
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 7179
    iget v1, v0, Lcom/sleepycat/b/ay;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->b:I

    goto :goto_0

    .line 3264
    :cond_8
    sget-object v0, Lcom/sleepycat/b/g/af;->n:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3265
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 7203
    iget v1, v0, Lcom/sleepycat/b/ay;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->d:I

    goto :goto_0

    .line 3266
    :cond_9
    sget-object v0, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3267
    iget-object v0, p0, Lcom/sleepycat/b/c/aj;->e:Lcom/sleepycat/b/ay;

    .line 8171
    iget v1, v0, Lcom/sleepycat/b/ay;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/ay;->a:I

    goto :goto_0
.end method

.method public final a(JLcom/sleepycat/b/l/y;)V
    .locals 0

    .prologue
    .line 3278
    return-void
.end method

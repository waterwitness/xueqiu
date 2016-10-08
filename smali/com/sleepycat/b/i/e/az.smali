.class public Lcom/sleepycat/b/i/e/az;
.super Lcom/sleepycat/b/i/e/bb;
.source "ReplicaSyncupReader.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field final b:Ljava/util/logging/Logger;

.field private final x:Lcom/sleepycat/b/g/a/m;

.field private final y:Lcom/sleepycat/b/g/a/m;

.field private final z:Lcom/sleepycat/b/i/e/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sleepycat/b/i/e/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/az;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;JILcom/sleepycat/b/p/au;JLcom/sleepycat/b/i/e/q;)V
    .locals 11

    .prologue
    .line 74
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/sleepycat/b/i/e/bb;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;ZJIJ)V

    .line 45
    sget-object v2, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/i/e/az;->x:Lcom/sleepycat/b/g/a/m;

    .line 48
    sget-object v2, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/i/e/az;->y:Lcom/sleepycat/b/g/a/m;

    .line 3092
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3093
    const-string v2, "ReplicaSyncupReader start can\'t be NULL_VLSN"

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 3097
    :cond_0
    iput-wide p3, p0, Lcom/sleepycat/b/i/e/az;->o:J

    .line 3098
    sget-boolean v2, Lcom/sleepycat/b/i/e/az;->c:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/az;->o:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3106
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    .line 3371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 3106
    invoke-virtual {v2}, Lcom/sleepycat/b/g/am;->a()V

    .line 3108
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->g:Lcom/sleepycat/b/g/u;

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/az;->o:J

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 3109
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->g:Lcom/sleepycat/b/g/u;

    .line 4001
    iget-wide v2, v2, Lcom/sleepycat/b/g/u;->c:J

    .line 3109
    iput-wide v2, p0, Lcom/sleepycat/b/i/e/az;->l:J

    .line 3110
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->g:Lcom/sleepycat/b/g/u;

    .line 5001
    iget-wide v2, v2, Lcom/sleepycat/b/g/u;->c:J

    .line 3110
    iput-wide v2, p0, Lcom/sleepycat/b/i/e/az;->m:J

    .line 3111
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    .line 83
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sleepycat/b/i/e/az;->z:Lcom/sleepycat/b/i/e/q;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    .line 85
    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 7

    .prologue
    .line 367
    new-instance v1, Lcom/sleepycat/b/i/e/ba;

    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->g:Lcom/sleepycat/b/g/u;

    .line 11014
    iget-wide v2, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 367
    iget-object v6, p0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/e/ba;-><init>(JJLcom/sleepycat/b/p/au;)V

    .line 370
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/ba;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 371
    throw v1
.end method

.method protected final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " isTargetEntry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/az;->v:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/i/e/az;->v:J

    .line 211
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 5307
    iget-boolean v2, v2, Lcom/sleepycat/b/g/ae;->i:Z

    .line 211
    if-eqz v2, :cond_2

    .line 246
    :cond_1
    :goto_0
    return v0

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 6279
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 227
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/az;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 228
    iget-boolean v3, p0, Lcom/sleepycat/b/i/e/az;->a:Z

    if-eqz v3, :cond_5

    .line 229
    invoke-static {v2}, Lcom/sleepycat/b/g/af;->d(B)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 6295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 232
    invoke-virtual {v3}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    .line 242
    :cond_4
    sget-object v3, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 243
    goto :goto_0

    :cond_5
    move v0, v1

    .line 234
    goto :goto_0
.end method

.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 281
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " syncup reader saw "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 7279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 292
    sget-object v1, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->x:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 301
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " syncup reader read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->x:Lcom/sleepycat/b/g/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->x:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/a;

    .line 7342
    iget-boolean v0, v0, Lcom/sleepycat/b/h/a;->m:Z

    .line 307
    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->z:Lcom/sleepycat/b/i/e/q;

    .line 8082
    iput-boolean v8, v0, Lcom/sleepycat/b/i/e/q;->b:Z

    :cond_2
    move v0, v7

    .line 359
    :goto_0
    return v0

    .line 320
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 8291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 321
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 322
    new-instance v2, Lcom/sleepycat/b/i/e/s;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    iget-object v4, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-direct {v2, v3, v4, v1}, Lcom/sleepycat/b/i/e/s;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;

    .line 331
    sget-object v1, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 333
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->y:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 334
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->y:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ah;

    .line 335
    iget-object v9, p0, Lcom/sleepycat/b/i/e/az;->z:Lcom/sleepycat/b/i/e/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ah;->e()Lcom/sleepycat/b/p/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ah;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 8295
    iget-object v4, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 335
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/az;->c()J

    move-result-wide v5

    .line 9119
    iget v0, v9, Lcom/sleepycat/b/i/e/q;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/sleepycat/b/i/e/q;->h:I

    .line 9120
    iget-object v0, v9, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    if-eqz v0, :cond_4

    .line 9121
    iget-object v0, v9, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    iput-object v0, v9, Lcom/sleepycat/b/i/e/q;->g:Lcom/sleepycat/b/i/e/r;

    .line 9123
    :cond_4
    new-instance v0, Lcom/sleepycat/b/i/e/r;

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/e/r;-><init>(Lcom/sleepycat/b/p/aq;JLcom/sleepycat/b/p/au;J)V

    iput-object v0, v9, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    .line 9128
    iget v0, v9, Lcom/sleepycat/b/i/e/q;->h:I

    iget v1, v9, Lcom/sleepycat/b/i/e/q;->e:I

    if-gt v0, v1, :cond_5

    .line 9129
    iget-object v0, v9, Lcom/sleepycat/b/i/e/q;->d:Ljava/util/List;

    iget-object v1, v9, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncup reader read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/e/az;->y:Lcom/sleepycat/b/g/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 350
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/az;->a:Z

    if-eqz v0, :cond_8

    move v0, v8

    .line 351
    goto/16 :goto_0

    .line 346
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 9291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 346
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 355
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 9295
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 355
    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    .line 10186
    if-gez v0, :cond_9

    .line 10188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "want to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/az;->k:Lcom/sleepycat/b/g/ae;

    .line 10295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 10188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 359
    :cond_9
    if-nez v0, :cond_a

    move v0, v8

    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto/16 :goto_0
.end method

.class public Lcom/sleepycat/b/i/e/a;
.super Lcom/sleepycat/b/i/e/bb;
.source "FeederReader.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/i/h;

.field b:Z

.field private x:J

.field private final y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sleepycat/b/i/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;I)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/i/e/a;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;IB)V

    .line 75
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;IB)V
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    .line 96
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move-wide v7, v4

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/i/e/bb;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;ZJIJ)V

    .line 50
    iput-boolean v9, p0, Lcom/sleepycat/b/i/e/a;->b:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/a;->x:J

    .line 104
    new-instance v0, Lcom/sleepycat/b/i/i/h;

    invoke-direct {v0, p2}, Lcom/sleepycat/b/i/i/h;-><init>(Lcom/sleepycat/b/i/i/f;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/e/a;->a:Lcom/sleepycat/b/i/i/h;

    .line 105
    iput-boolean v9, p0, Lcom/sleepycat/b/i/e/a;->y:Z

    .line 106
    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/sleepycat/b/g/u;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/sleepycat/b/i/e/b;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->e:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/i/e/b;-><init>(ILcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/i/e/s;
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 181
    sget-boolean v0, Lcom/sleepycat/b/i/e/a;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/a;->d:Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/g/al;
    :try_end_0
    .catch Lcom/sleepycat/b/i/i/k; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    iput-object p1, p0, Lcom/sleepycat/b/i/e/a;->t:Lcom/sleepycat/b/p/au;

    .line 194
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/a;->y:Z

    if-nez v0, :cond_2

    .line 197
    sget-boolean v0, Lcom/sleepycat/b/i/e/a;->c:Z

    if-nez v0, :cond_1

    .line 3074
    iget-object v0, v1, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 3295
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 197
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/a;->x:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/i/e/a;->x:J

    .line 199
    new-instance v0, Lcom/sleepycat/b/i/e/s;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/a;->e:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/i/e/s;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/al;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/a;->x:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/sleepycat/b/i/e/a;->a:Lcom/sleepycat/b/i/i/h;

    .line 4249
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/i/i/h;->a(Lcom/sleepycat/b/p/au;Z)J

    move-result-wide v0

    .line 237
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-ltz v2, :cond_3

    .line 238
    const-wide/16 v0, -0x1

    .line 248
    :cond_3
    :goto_1
    iput-wide v4, p0, Lcom/sleepycat/b/i/e/a;->x:J

    .line 251
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/i/e/a;->b(J)V
    :try_end_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 272
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/a;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    iget-object v0, p0, Lcom/sleepycat/b/i/e/a;->u:Lcom/sleepycat/b/i/e/s;

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/e/a;->a:Lcom/sleepycat/b/i/i/h;

    .line 5222
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/i/i/h;->a(Lcom/sleepycat/b/p/au;Z)J

    move-result-wide v0

    goto :goto_1

    .line 252
    :catch_1
    move-exception v2

    .line 253
    new-instance v3, Lcom/sleepycat/b/aa;

    iget-object v4, p0, Lcom/sleepycat/b/i/e/a;->e:Lcom/sleepycat/b/c/ad;

    sget-object v5, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "trying to reposition FeederReader to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 259
    :catch_2
    move-exception v2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to reposition FeederReader to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 276
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/e/a;->e:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VLSN="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " repositionLsn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method protected final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 299
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/a;->v:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/i/e/a;->v:J

    .line 301
    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->k:Lcom/sleepycat/b/g/ae;

    .line 5307
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ae;->i:Z

    .line 301
    if-eqz v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->k:Lcom/sleepycat/b/g/ae;

    .line 6295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 308
    iget-object v2, p0, Lcom/sleepycat/b/i/e/a;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    .line 7286
    if-lez v1, :cond_2

    .line 7288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "want to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/a;->k:Lcom/sleepycat/b/g/ae;

    .line 7295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 7288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 312
    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.class public final Lcom/sleepycat/b/i/e/aw;
.super Ljava/lang/Object;
.source "ReplicaFeederHandshake.java"


# static fields
.field private static volatile h:I

.field private static k:I


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/b/aa;

.field public final b:Lcom/sleepycat/b/i/h/o;

.field public final c:Lcom/sleepycat/b/i/c/b/x;

.field public d:Lcom/sleepycat/b/i/c/b/x;

.field public e:Lcom/sleepycat/b/i/e/t;

.field public f:Lcom/sleepycat/b/i/e/ab;

.field public final g:Ljava/util/logging/Logger;

.field private i:J

.field private j:J

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/b/i/e/aw;->h:I

    .line 74
    const/4 v0, 0x5

    sput v0, Lcom/sleepycat/b/i/e/aw;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/h/o;)V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    .line 72
    iput-wide v2, p0, Lcom/sleepycat/b/i/e/aw;->i:J

    .line 73
    iput-wide v2, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    .line 88
    iput-object p1, p0, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 89
    iput-object p2, p0, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    .line 2520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3454
    iget-object v1, p1, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 92
    iput-object v1, p0, Lcom/sleepycat/b/i/e/aw;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 4392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 93
    sget-object v1, Lcom/sleepycat/b/i/c/an;->w:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/e/aw;->l:I

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    .line 96
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/sleepycat/b/i/e/aw;->h:I

    if-eqz v0, :cond_0

    sget v0, Lcom/sleepycat/b/i/e/aw;->h:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v1, 0x0

    .line 316
    move v0, v1

    .line 319
    :goto_0
    add-int/lit8 v2, v0, 0x1

    sget v0, Lcom/sleepycat/b/i/e/aw;->k:I

    if-ge v2, v0, :cond_0

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->i:J

    cmp-long v0, v4, v10

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    .line 322
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    new-instance v4, Lcom/sleepycat/b/i/e/aq;

    iget-object v5, p0, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v3}, Lcom/sleepycat/b/i/e/aq;-><init>(Lcom/sleepycat/b/i/e/t;Z)V

    iget-object v5, p0, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 323
    iget-object v0, p0, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v4, p0, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    const-class v5, Lcom/sleepycat/b/i/e/ar;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/ar;

    .line 325
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/ar;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/b/i/e/aw;->i:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 326
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/ar;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->i:J

    .line 4513
    sget-boolean v4, Lcom/sleepycat/b/i/e/ar;->f:Z

    if-nez v4, :cond_2

    iget-wide v4, v0, Lcom/sleepycat/b/i/e/ar;->e:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v3, v1

    .line 319
    goto :goto_1

    .line 4514
    :cond_2
    iget-wide v4, v0, Lcom/sleepycat/b/i/e/ar;->c:J

    iget-wide v6, v0, Lcom/sleepycat/b/i/e/ar;->a:J

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/sleepycat/b/i/e/ar;->d:J

    iget-wide v8, v0, Lcom/sleepycat/b/i/e/ar;->e:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    div-long/2addr v4, v10

    .line 327
    iput-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    .line 330
    :cond_3
    if-eqz v3, :cond_6

    .line 332
    iget-object v1, p0, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    iget-object v0, p0, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 4520
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 332
    iget-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget v0, p0, Lcom/sleepycat/b/i/e/aw;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Round trip delay: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. Clock delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. Max permissible delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/b/i/e/aw;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 340
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/b/i/e/aw;->l:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 341
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 341
    sget-object v2, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clock delta: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/aw;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. between Feeder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 6087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and this Replica exceeds max permissible delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/b/i/e/aw;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_4
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_2

    .line 349
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

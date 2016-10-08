.class public final Lcom/sleepycat/b/g/b;
.super Lcom/sleepycat/b/g/s;
.source "CheckpointFileReader.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;IJJ)V
    .locals 13

    .prologue
    .line 35
    const/4 v4, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v5, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    iget-object v2, p0, Lcom/sleepycat/b/g/b;->k:Lcom/sleepycat/b/g/ae;

    .line 1279
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 46
    iput-boolean v1, p0, Lcom/sleepycat/b/g/b;->a:Z

    .line 47
    iput-boolean v1, p0, Lcom/sleepycat/b/g/b;->b:Z

    .line 48
    iput-boolean v1, p0, Lcom/sleepycat/b/g/b;->c:Z

    .line 49
    sget-object v3, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iput-boolean v0, p0, Lcom/sleepycat/b/g/b;->b:Z

    .line 61
    :goto_0
    return v0

    .line 52
    :cond_0
    sget-object v3, Lcom/sleepycat/b/g/af;->s:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    iput-boolean v0, p0, Lcom/sleepycat/b/g/b;->c:Z

    goto :goto_0

    .line 56
    :cond_1
    sget-object v3, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    iput-boolean v0, p0, Lcom/sleepycat/b/g/b;->a:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

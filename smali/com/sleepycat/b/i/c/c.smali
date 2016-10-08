.class public Lcom/sleepycat/b/i/c/c;
.super Lcom/sleepycat/b/i/h/k;
.source "BinaryNodeStateProtocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/u;

.field final synthetic b:Lcom/sleepycat/b/i/c/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/sleepycat/b/am;

.field private final g:J

.field private final h:J

.field private final i:J

.field private final l:I

.field private final m:I

.field private final n:[B

.field private final o:D


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/am;JLcom/sleepycat/b/i/u;JJI[BD)V
    .locals 3

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sleepycat/b/i/c/c;->b:Lcom/sleepycat/b/i/c/a;

    .line 132
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 133
    iput-object p2, p0, Lcom/sleepycat/b/i/c/c;->c:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/sleepycat/b/i/c/c;->d:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/sleepycat/b/i/c/c;->e:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lcom/sleepycat/b/i/c/c;->f:Lcom/sleepycat/b/am;

    .line 137
    iput-wide p6, p0, Lcom/sleepycat/b/i/c/c;->g:J

    .line 138
    iput-object p8, p0, Lcom/sleepycat/b/i/c/c;->a:Lcom/sleepycat/b/i/u;

    .line 139
    iput-wide p9, p0, Lcom/sleepycat/b/i/c/c;->h:J

    .line 140
    iput-wide p11, p0, Lcom/sleepycat/b/i/c/c;->i:J

    .line 141
    move/from16 v0, p13

    iput v0, p0, Lcom/sleepycat/b/i/c/c;->l:I

    .line 142
    const/16 v2, 0x8

    iput v2, p0, Lcom/sleepycat/b/i/c/c;->m:I

    .line 143
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sleepycat/b/i/c/c;->n:[B

    .line 144
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/c;->o:D

    .line 145
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/sleepycat/b/i/c/a;->b:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/sleepycat/b/i/c/c;->n:[B

    if-nez v0, :cond_0

    new-array v0, v3, [B

    .line 229
    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/c;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/c;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/c;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sleepycat/b/i/c/c;->f:Lcom/sleepycat/b/am;

    invoke-virtual {v3}, Lcom/sleepycat/b/am;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/c;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sleepycat/b/i/c/c;->a:Lcom/sleepycat/b/i/u;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/c;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/c;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/sleepycat/b/i/c/c;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/sleepycat/b/i/c/c;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/c;->o:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/i/c/c;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/c;->n:[B

    goto :goto_0
.end method

.class public Lcom/sleepycat/b/i/e/g;
.super Lcom/sleepycat/b/i/e/bb;
.source "FeederSyncupReader.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/i/i/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sleepycat/b/i/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;JILcom/sleepycat/b/p/au;J)V
    .locals 9

    .prologue
    .line 50
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/i/e/bb;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;ZJIJ)V

    .line 57
    new-instance v0, Lcom/sleepycat/b/i/i/g;

    invoke-direct {v0, p2}, Lcom/sleepycat/b/i/i/g;-><init>(Lcom/sleepycat/b/i/i/f;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/e/g;->b:Lcom/sleepycat/b/i/i/g;

    .line 3073
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p6, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3074
    const-string v0, "FeederSyncupReader start can\'t be NULL_VLSN"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 3079
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->b:Lcom/sleepycat/b/i/i/g;

    .line 3116
    iget v1, v0, Lcom/sleepycat/b/i/i/g;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/i/i/g;->d:I

    .line 3117
    iget-object v1, v0, Lcom/sleepycat/b/i/i/g;->c:Lcom/sleepycat/b/i/i/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p6, v2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    .line 3118
    iget-object v0, v0, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p6}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    .line 3079
    iput-wide v0, p0, Lcom/sleepycat/b/i/e/g;->o:J

    .line 3080
    sget-boolean v0, Lcom/sleepycat/b/i/e/g;->a:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sleepycat/b/i/e/g;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3088
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->e:Lcom/sleepycat/b/c/ad;

    .line 3371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 3088
    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->b()V

    .line 3090
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->g:Lcom/sleepycat/b/g/u;

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/g;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 3091
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->g:Lcom/sleepycat/b/g/u;

    .line 4001
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->c:J

    .line 3091
    iput-wide v0, p0, Lcom/sleepycat/b/i/e/g;->l:J

    .line 3092
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->g:Lcom/sleepycat/b/g/u;

    .line 5001
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->c:J

    .line 3092
    iput-wide v0, p0, Lcom/sleepycat/b/i/e/g;->m:J

    .line 3093
    iput-object p6, p0, Lcom/sleepycat/b/i/e/g;->t:Lcom/sleepycat/b/p/au;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/s;
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 104
    iget-object v3, p0, Lcom/sleepycat/b/i/e/g;->d:Lcom/sleepycat/b/i/i/f;

    .line 5775
    iget-object v3, v3, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v3

    .line 6110
    iget-object v3, v3, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 105
    invoke-virtual {p1, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v0, v2

    .line 127
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/e/g;->t:Lcom/sleepycat/b/p/au;

    .line 120
    iget-object v3, p0, Lcom/sleepycat/b/i/e/g;->b:Lcom/sleepycat/b/i/i/g;

    .line 6126
    sget-boolean v4, Lcom/sleepycat/b/i/i/g;->a:Z

    if-nez v4, :cond_1

    iget v4, v3, Lcom/sleepycat/b/i/i/g;->d:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startingLsns() called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/sleepycat/b/i/i/g;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6133
    :cond_1
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    if-eqz v4, :cond_4

    .line 6134
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v4, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6143
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v4, p1}, Lcom/sleepycat/b/i/i/c;->f(Lcom/sleepycat/b/p/au;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/i/e/g;->b(J)V

    .line 123
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/g;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lcom/sleepycat/b/i/e/g;->u:Lcom/sleepycat/b/i/e/s;

    goto :goto_0

    .line 6151
    :cond_3
    iput-object v2, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    .line 6159
    :cond_4
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    if-nez v4, :cond_5

    .line 6160
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->c:Lcom/sleepycat/b/i/i/f;

    invoke-static {v4, p1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/i/i/f;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v4

    iput-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    .line 6167
    iget-object v4, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v4, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6172
    :cond_5
    sget-boolean v0, Lcom/sleepycat/b/i/i/g;->a:Z

    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vlsn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentBucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6176
    :cond_6
    iget-object v0, v3, Lcom/sleepycat/b/i/i/g;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->c(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 127
    goto/16 :goto_0
.end method

.method protected final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/g;->v:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/i/e/g;->v:J

    .line 151
    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    .line 6307
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ae;->i:Z

    .line 151
    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/g;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    .line 7295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 160
    iget-object v2, p0, Lcom/sleepycat/b/i/e/g;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    .line 8136
    if-gez v1, :cond_2

    .line 8138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "want to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but reader at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    .line 8295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 8138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 164
    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    .line 9291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 177
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 178
    new-instance v1, Lcom/sleepycat/b/i/e/s;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/g;->e:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/i/e/s;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/e/g;->u:Lcom/sleepycat/b/i/e/s;

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/g;->k:Lcom/sleepycat/b/g/ae;

    .line 10291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 181
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    const/4 v0, 0x1

    return v0
.end method

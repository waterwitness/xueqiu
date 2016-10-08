.class public Lcom/sleepycat/b/h/a;
.super Ljava/lang/Object;
.source "CheckpointEnd.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public a:Ljava/lang/String;

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field public k:J

.field final l:Lcom/sleepycat/b/a/d;

.field public m:Z

.field private n:Lcom/sleepycat/b/p/aq;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->b:J

    .line 102
    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->c:J

    .line 103
    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->d:J

    .line 104
    new-instance v0, Lcom/sleepycat/b/a/d;

    invoke-direct {v0}, Lcom/sleepycat/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJJJJJZLcom/sleepycat/b/a/d;)V
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v2, ""

    iput-object v2, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    .line 74
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/sleepycat/b/p/aq;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v3, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    .line 76
    iput-wide p2, p0, Lcom/sleepycat/b/h/a;->b:J

    .line 77
    iput-wide p4, p0, Lcom/sleepycat/b/h/a;->c:J

    .line 78
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/b/h/a;->o:Z

    .line 83
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-nez v2, :cond_2

    .line 84
    iput-wide p2, p0, Lcom/sleepycat/b/h/a;->d:J

    .line 88
    :goto_2
    iput-wide p8, p0, Lcom/sleepycat/b/h/a;->e:J

    .line 89
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->f:J

    .line 90
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->g:J

    .line 91
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->h:J

    .line 92
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->i:J

    .line 93
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->j:J

    .line 94
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->k:J

    .line 95
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/sleepycat/b/h/a;->m:Z

    .line 96
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    .line 97
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/b/h/a;->o:Z

    goto :goto_1

    .line 86
    :cond_2
    iput-wide p6, p0, Lcom/sleepycat/b/h/a;->d:J

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->e:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->f:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->g:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->h:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->i:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->j:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->k:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    iget-boolean v1, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v1, :cond_0

    .line 135
    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 230
    const-string v0, "<CkptEnd invoker=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, "\" lastLocalNodeId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "\" lastReplicatedNodeId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, "\" lastLocalDbId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, "\" lastReplicatedDbId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, "\" lastLocalTxnId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, "\" lastReplicatedTxnId=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "\" rootExists=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/h/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "<ckptStart>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v0, "</ckptStart>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-boolean v0, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "<root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->c:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, "</root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    const-string v0, "<firstActive>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->d:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v0, "</firstActive>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/a/d;->a(Ljava/lang/StringBuilder;Z)V

    .line 256
    const-string v0, "</CkptEnd>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 146
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 148
    const/4 v0, 0x0

    .line 149
    iget-boolean v1, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/b/h/a;->m:Z

    if-eqz v1, :cond_1

    .line 154
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 157
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    iget-boolean v0, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v0, :cond_2

    .line 160
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->c:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 162
    :cond_2
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->d:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 164
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->e:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 165
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->f:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 167
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->g:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 168
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->h:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 170
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->i:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 171
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->j:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 173
    iget-wide v0, p0, Lcom/sleepycat/b/h/a;->k:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/a/d;->a(Ljava/nio/ByteBuffer;)V

    .line 176
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    const/4 v0, 0x6

    if-lt p2, v0, :cond_4

    move v3, v1

    .line 183
    :goto_0
    if-nez v3, :cond_5

    move v0, v1

    :goto_1
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    .line 185
    if-nez v3, :cond_6

    move v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    .line 186
    if-nez v3, :cond_7

    move v0, v1

    :goto_3
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->b:J

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 188
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sleepycat/b/h/a;->o:Z

    .line 190
    iget-boolean v0, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v0, :cond_0

    .line 191
    if-nez v3, :cond_9

    move v0, v1

    :goto_5
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/b/h/a;->c:J

    .line 194
    :cond_0
    const/4 v0, 0x7

    if-lt p2, v0, :cond_b

    .line 195
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/sleepycat/b/h/a;->m:Z

    .line 200
    :goto_7
    if-nez v3, :cond_c

    move v0, v1

    :goto_8
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->d:J

    .line 202
    if-nez v3, :cond_d

    move v0, v1

    :goto_9
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->e:J

    .line 203
    if-eqz v3, :cond_1

    .line 204
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->f:J

    .line 207
    :cond_1
    if-eqz v3, :cond_e

    .line 208
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->g:J

    .line 209
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->h:J

    .line 214
    :goto_a
    if-nez v3, :cond_f

    move v0, v1

    :goto_b
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->i:J

    .line 215
    if-eqz v3, :cond_2

    .line 216
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->j:J

    .line 219
    :cond_2
    if-nez v3, :cond_10

    :goto_c
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/h/a;->k:J

    .line 221
    const/16 v0, 0x8

    if-lt p2, v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/a/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 224
    :cond_3
    return-void

    :cond_4
    move v3, v2

    .line 182
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 183
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 185
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 186
    goto :goto_3

    :cond_8
    move v0, v2

    .line 188
    goto :goto_4

    :cond_9
    move v0, v2

    .line 191
    goto :goto_5

    :cond_a
    move v0, v2

    .line 195
    goto :goto_6

    .line 197
    :cond_b
    iput-boolean v1, p0, Lcom/sleepycat/b/h/a;->m:Z

    goto :goto_7

    :cond_c
    move v0, v2

    .line 200
    goto :goto_8

    :cond_d
    move v0, v2

    .line 202
    goto :goto_9

    .line 211
    :cond_e
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sleepycat/b/h/a;->g:J

    goto :goto_a

    :cond_f
    move v0, v2

    .line 214
    goto :goto_b

    :cond_10
    move v1, v2

    .line 219
    goto :goto_c
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 263
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/h/a;->n:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, " lastLocalNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, " lastReplicatedNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, " lastLocalDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, " lastReplicatedDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, " lastLocalTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, " lastReplicatedTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, " rootExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/b/h/a;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, " ckptStartLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-boolean v1, p0, Lcom/sleepycat/b/h/a;->o:Z

    if-eqz v1, :cond_0

    .line 289
    const-string v1, " root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    const-string v1, " firstActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/a;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " cleanerLogSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

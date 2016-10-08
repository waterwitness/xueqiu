.class public Lcom/sleepycat/b/g/ae;
.super Ljava/lang/Object;
.source "LogEntryHeader.java"


# static fields
.field static final synthetic k:Z

.field private static final l:B


# instance fields
.field public a:J

.field public final b:B

.field public c:J

.field public final d:I

.field public e:Lcom/sleepycat/b/p/au;

.field public f:I

.field g:Lcom/sleepycat/b/g/au;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sleepycat/b/g/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/ae;->k:Z

    .line 101
    sget-object v0, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    .line 8644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 101
    sput-byte v0, Lcom/sleepycat/b/g/ae;->l:B

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-interface {p1}, Lcom/sleepycat/b/g/a/m;->d()Lcom/sleepycat/b/g/af;

    move-result-object v1

    .line 1644
    iget-byte v2, v1, Lcom/sleepycat/b/g/af;->K:B

    .line 206
    iput-byte v2, p0, Lcom/sleepycat/b/g/ae;->b:B

    .line 207
    const/16 v2, 0x8

    iput v2, p0, Lcom/sleepycat/b/g/ae;->f:I

    .line 208
    invoke-interface {p1}, Lcom/sleepycat/b/g/a/m;->d_()I

    move-result v2

    iput v2, p0, Lcom/sleepycat/b/g/ae;->d:I

    .line 209
    iput-object p2, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    .line 213
    sget-boolean v2, Lcom/sleepycat/b/g/ae;->k:Z

    if-nez v2, :cond_0

    .line 1791
    iget-object v2, v1, Lcom/sleepycat/b/g/af;->P:Lcom/sleepycat/b/g/ai;

    .line 2777
    iget-boolean v2, v2, Lcom/sleepycat/b/g/ai;->d:Z

    .line 213
    if-nez v2, :cond_0

    .line 3106
    iget-boolean v2, p3, Lcom/sleepycat/b/g/av;->h:Z

    .line 213
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should never be replicated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3791
    :cond_0
    iget-object v1, v1, Lcom/sleepycat/b/g/af;->P:Lcom/sleepycat/b/g/ai;

    .line 4777
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ai;->d:Z

    .line 215
    if-eqz v1, :cond_3

    .line 5106
    iget-boolean v1, p3, Lcom/sleepycat/b/g/av;->h:Z

    .line 216
    iput-boolean v1, p0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 220
    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ae;->i:Z

    .line 6099
    iget-object v1, p3, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    .line 228
    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/sleepycat/b/g/av;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ae;->j:Z

    .line 230
    return-void

    .line 218
    :cond_3
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ae;->h:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, -0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    sget-boolean v0, Lcom/sleepycat/b/g/ae;->k:Z

    if-nez v0, :cond_1

    if-eq p2, v2, :cond_1

    if-lez p2, :cond_0

    const/16 v0, 0x8

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/ae;->a:J

    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/g/ae;->b:B

    .line 159
    iget-byte v0, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-static {v0}, Lcom/sleepycat/b/g/af;->b(B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/sleepycat/b/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read invalid log entry type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    iget-byte v0, p0, Lcom/sleepycat/b/g/ae;->b:B

    sget-byte v1, Lcom/sleepycat/b/g/ae;->l:B

    if-ne v0, v1, :cond_4

    .line 166
    iput v2, p0, Lcom/sleepycat/b/g/ae;->f:I

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/ae;->a(I)V

    .line 191
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/ae;->c:J

    .line 192
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/ae;->d:I

    .line 193
    iget v0, p0, Lcom/sleepycat/b/g/ae;->d:I

    if-gez v0, :cond_7

    .line 194
    new-instance v0, Lcom/sleepycat/b/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read invalid item size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sleepycat/b/g/ae;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_4
    if-ne p2, v2, :cond_5

    .line 176
    new-instance v0, Lcom/sleepycat/b/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read invalid log header entry type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_5
    if-gt p2, v3, :cond_6

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/ae;->f:I

    .line 181
    iget v0, p0, Lcom/sleepycat/b/g/ae;->f:I

    and-int/lit8 v0, v0, -0x20

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/ae;->a(I)V

    .line 182
    iget v0, p0, Lcom/sleepycat/b/g/ae;->f:I

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/sleepycat/b/g/ae;->f:I

    .line 184
    sget-boolean v0, Lcom/sleepycat/b/g/ae;->k:Z

    if-nez v0, :cond_3

    if-ne p2, v3, :cond_3

    iget v0, p0, Lcom/sleepycat/b/g/ae;->f:I

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_6
    iput p2, p0, Lcom/sleepycat/b/g/ae;->f:I

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/ae;->a(I)V

    goto :goto_0

    .line 196
    :cond_7
    return-void
.end method

.method static a(B)B
    .locals 1

    .prologue
    .line 589
    or-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0x8

    return v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    iput-object v0, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    .line 261
    :goto_0
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 262
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sleepycat/b/g/ae;->i:Z

    .line 263
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/sleepycat/b/g/ae;->j:Z

    .line 264
    return-void

    .line 256
    :cond_2
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    .line 257
    sget-object v0, Lcom/sleepycat/b/g/au;->c:Lcom/sleepycat/b/g/au;

    iput-object v0, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    goto :goto_0

    .line 259
    :cond_3
    sget-object v0, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    iput-object v0, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 261
    goto :goto_1

    :cond_5
    move v0, v2

    .line 262
    goto :goto_2
.end method

.method public static a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 601
    add-int/lit8 v0, p1, 0x5

    .line 602
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 603
    and-int/lit8 v1, v1, -0x11

    int-to-byte v1, v1

    .line 604
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 605
    return-void
.end method

.method static c()I
    .locals 1

    .prologue
    .line 337
    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;JLcom/sleepycat/b/p/au;)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 411
    iput-wide p2, p0, Lcom/sleepycat/b/g/ae;->c:J

    .line 412
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 413
    iget-wide v0, p0, Lcom/sleepycat/b/g/ae;->c:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;J)V

    .line 415
    if-eqz p4, :cond_0

    .line 416
    iput-object p4, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 417
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 419
    invoke-virtual {p4, p1}, Lcom/sleepycat/b/p/au;->a(Ljava/nio/ByteBuffer;)V

    .line 427
    :cond_0
    invoke-static {}, Lcom/sleepycat/b/p/b;->a()Ljava/util/zip/Checksum;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 431
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 432
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/ae;->a:J

    .line 433
    iget-wide v0, p0, Lcom/sleepycat/b/g/ae;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;J)V

    .line 436
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 438
    return-object p1
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 535
    iget-byte v0, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 7655
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->L:Ljava/lang/String;

    .line 537
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/g/ae;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    iget-object v0, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    if-eqz v0, :cond_2

    .line 541
    const-string v0, " vlsn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8299
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 546
    if-eqz v0, :cond_0

    .line 547
    const-string v0, " isReplicated=\"1\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8307
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->i:Z

    .line 550
    if-eqz v0, :cond_1

    .line 551
    const-string v0, " isInvisible=\"1\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_1
    return-void

    .line 543
    :cond_2
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->j:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcom/sleepycat/b/p/au;

    invoke-direct {v0}, Lcom/sleepycat/b/p/au;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 347
    iget-object v0, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    iget v1, p0, Lcom/sleepycat/b/g/ae;->f:I

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/p/au;->a(Ljava/nio/ByteBuffer;I)V

    .line 349
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->j:Z

    if-eqz v0, :cond_0

    .line 319
    const/16 v0, 0x16

    .line 321
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6446
    const-string v1, "<hdr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6459
    iget-byte v1, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-static {v1}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v1

    .line 6461
    const-string v2, "type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6655
    iget-object v1, v1, Lcom/sleepycat/b/g/af;->L:Ljava/lang/String;

    .line 6461
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/g/ae;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6463
    iget-object v1, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    if-eq v1, v2, :cond_0

    .line 6464
    const-string v1, "\" prov=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6465
    iget-object v1, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6468
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    if-eqz v1, :cond_3

    .line 6469
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6470
    iget-object v1, p0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/p/au;->a(Ljava/lang/StringBuilder;Z)V

    .line 7299
    :goto_0
    iget-boolean v1, p0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 6475
    if-eqz v1, :cond_1

    .line 6476
    const-string v1, " isReplicated=\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7307
    :cond_1
    iget-boolean v1, p0, Lcom/sleepycat/b/g/ae;->i:Z

    .line 6479
    if-eqz v1, :cond_2

    .line 6480
    const-string v1, " isInvisible=\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6483
    :cond_2
    const-string v1, " prev=\"0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/ae;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6485
    const-string v1, "\" size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/g/ae;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6486
    const-string v1, "\" cksum=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/ae;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6448
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6472
    :cond_3
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

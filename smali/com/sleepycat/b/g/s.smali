.class public abstract Lcom/sleepycat/b/g/s;
.super Ljava/lang/Object;
.source "FileReader.java"


# static fields
.field static final synthetic s:Z


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private final b:Z

.field private final c:J

.field private d:Z

.field public final e:Lcom/sleepycat/b/c/ad;

.field protected final f:Lcom/sleepycat/b/g/m;

.field public final g:Lcom/sleepycat/b/g/u;

.field protected h:Z

.field public final i:Z

.field public j:I

.field public k:Lcom/sleepycat/b/g/ae;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field protected p:Lcom/sleepycat/b/g/d;

.field public q:Z

.field protected final r:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sleepycat/b/g/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/s;->s:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V
    .locals 5

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    .line 3375
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 99
    iput-object v0, p0, Lcom/sleepycat/b/g/s;->f:Lcom/sleepycat/b/g/m;

    .line 100
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/g/s;->b:Z

    .line 101
    iput-boolean p3, p0, Lcom/sleepycat/b/g/s;->i:Z

    .line 4371
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 5155
    iget-boolean v0, v0, Lcom/sleepycat/b/g/am;->c:Z

    .line 103
    iput-boolean v0, p0, Lcom/sleepycat/b/g/s;->d:Z

    .line 104
    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->d:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/sleepycat/b/g/d;

    invoke-direct {v0}, Lcom/sleepycat/b/g/d;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/g/s;->a(I)Lcom/sleepycat/b/g/u;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 109
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/g/s;->j:I

    .line 115
    iput-wide p4, p0, Lcom/sleepycat/b/g/s;->o:J

    .line 116
    iput-wide p9, p0, Lcom/sleepycat/b/g/s;->c:J

    .line 5515
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 118
    iput-object v0, p0, Lcom/sleepycat/b/g/s;->r:Ljava/util/logging/Logger;

    .line 6139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/g/s;->h:Z

    .line 6140
    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->i:Z

    if-eqz v0, :cond_4

    .line 6146
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 6147
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 6160
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 7001
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->c:J

    .line 6160
    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->n:J

    :goto_2
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6149
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->f:Lcom/sleepycat/b/g/m;

    .line 6495
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/m;->a(Z)Ljava/lang/Long;

    move-result-object v0

    .line 6150
    if-nez v0, :cond_3

    .line 6151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/s;->h:Z

    goto :goto_1

    .line 6153
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/g/u;->a(J)V

    goto :goto_1

    .line 6168
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/g/s;->s:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6169
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0, p7, p8}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 6176
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->o:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    invoke-static {p7, p8}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 6178
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->o:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    .line 6182
    :goto_3
    invoke-static {p7, p8}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->m:J

    goto :goto_2

    .line 6180
    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    goto :goto_3
.end method

.method static a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;
    .locals 3

    .prologue
    .line 917
    sget-boolean v0, Lcom/sleepycat/b/g/s;->s:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal new position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 920
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 923
    throw v0
.end method

.method private a(IZ)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 715
    const/4 v0, 0x0

    .line 716
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v2, v1

    move-object v1, v0

    .line 718
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_8

    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->h:Z

    if-nez v0, :cond_8

    .line 720
    sub-int v0, p1, v2

    .line 721
    iget-object v3, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 25240
    iget-object v3, v3, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    .line 721
    if-eqz v3, :cond_7

    .line 724
    if-eqz p2, :cond_5

    .line 729
    if-gtz v2, :cond_1

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 26236
    iget-object v1, v1, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 729
    if-ge v1, v0, :cond_4

    .line 26796
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 27236
    iget-object v1, v1, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 26796
    if-le v0, v1, :cond_2

    .line 26799
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 28236
    iget-object v0, v0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 26806
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_3

    .line 26809
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26811
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/sleepycat/b/g/s;->c(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    .line 26812
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26813
    iput-object v1, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    .line 26821
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 28244
    iget-object v1, v1, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    .line 26821
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 26822
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26823
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26824
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/u;->a(I)V

    .line 734
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 735
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 739
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 29244
    iget-object v0, v0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    move-object v1, v0

    move v2, p1

    .line 740
    goto :goto_0

    .line 748
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 30236
    iget-object v1, v1, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 748
    if-le v1, v0, :cond_6

    .line 752
    :goto_1
    add-int v1, v2, v0

    .line 753
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/u;->a(I)V

    .line 754
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 31244
    iget-object v0, v0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    move v2, v1

    move-object v1, v0

    .line 755
    goto/16 :goto_0

    .line 748
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 31236
    iget-object v0, v0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_1

    .line 761
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    iget-boolean v4, p0, Lcom/sleepycat/b/g/s;->b:Z

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/b/g/u;->a(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sleepycat/b/g/s;->n:J

    goto/16 :goto_0

    .line 769
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sleepycat/b/g/s;->c(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    .line 771
    return-object v1
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const-string v1, "Halted log file reading at file 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 22014
    iget-wide v2, v2, Lcom/sleepycat/b/g/u;->a:J

    .line 379
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset(decimal)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prev=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 22279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 389
    invoke-static {v1}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v1

    .line 391
    const-string v2, ":\nentry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 23279
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 23283
    iget v2, v2, Lcom/sleepycat/b/g/ae;->f:I

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\nprev=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 23291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nNext entry should be at 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    iget-object v4, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v4}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 24291
    iget v4, v4, Lcom/sleepycat/b/g/ae;->d:I

    .line 391
    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    const-string v2, "FileReader"

    const-string v3, "readNextEntry"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0, p1}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Z)V
    .locals 3

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->d:Z

    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    if-eqz p2, :cond_0

    .line 638
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/d;->a()V

    .line 640
    invoke-static {p1}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 24307
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ae;->i:Z

    .line 641
    if-eqz v1, :cond_2

    .line 650
    add-int/lit8 v1, v0, -0xe

    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;I)V

    .line 655
    :cond_2
    invoke-static {}, Lcom/sleepycat/b/g/ae;->c()I

    .line 657
    add-int/lit8 v1, v0, -0xa

    .line 658
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    .line 661
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 664
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method static c(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 898
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 900
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static d(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 908
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 910
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/sleepycat/b/g/u;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/sleepycat/b/g/u;

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/g/u;-><init>(ILcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method public a(J)V
    .locals 7

    .prologue
    .line 934
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read backward over cleaned file from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 32014
    iget-wide v4, v4, Lcom/sleepycat/b/g/u;->a:J

    .line 934
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)Z
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/g/s;->a(IZ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/lang/Exception;)V

    .line 785
    throw v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 370
    invoke-static {p1}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 21291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 370
    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    .line 374
    return-void
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 7014
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 208
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->m:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 7291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 215
    add-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/g/s;->f()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f()Z
    .locals 14

    .prologue
    .line 251
    const/4 v9, 0x0

    .line 253
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->h:Z

    if-nez v0, :cond_18

    if-nez v9, :cond_18

    .line 7426
    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->i:Z

    if-eqz v0, :cond_1

    .line 7448
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 7450
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 8014
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 7450
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    .line 7452
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 7453
    new-instance v0, Lcom/sleepycat/b/g/t;

    invoke-direct {v0}, Lcom/sleepycat/b/g/t;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/sleepycat/b/g/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :catch_0
    move-exception v0

    move v0, v9

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/s;->h:Z

    .line 362
    :goto_1
    return v0

    .line 8474
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->b(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8478
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 9014
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 8478
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    .line 8480
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 8481
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 8482
    new-instance v2, Lcom/sleepycat/b/g/t;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finish="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/g/t;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/sleepycat/b/g/t; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :catch_1
    move-exception v0

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/s;->h:Z

    .line 358
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/lang/Exception;)V

    .line 359
    throw v0

    .line 8490
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->c(J)V

    .line 8592
    :goto_2
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->m:J

    .line 257
    :cond_3
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/g/s;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 15603
    new-instance v0, Lcom/sleepycat/b/g/ae;

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    invoke-static {v1}, Lcom/sleepycat/b/g/u;->a(Lcom/sleepycat/b/g/u;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/g/ae;-><init>(Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 15610
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 16287
    iget-wide v0, v0, Lcom/sleepycat/b/g/ae;->c:J

    .line 15610
    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    .line 266
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 16582
    iget-boolean v0, v0, Lcom/sleepycat/b/g/ae;->j:Z

    .line 266
    if-eqz v0, :cond_13

    .line 16622
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;Z)V

    .line 283
    invoke-static {}, Lcom/sleepycat/b/g/ae;->a()I

    .line 286
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/g/s;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16670
    iget-boolean v1, p0, Lcom/sleepycat/b/g/s;->d:Z

    if-eqz v1, :cond_4

    .line 16674
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;)V

    .line 297
    invoke-virtual {p0}, Lcom/sleepycat/b/g/s;->a()Z

    move-result v1

    .line 298
    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->q:Z

    if-eqz v0, :cond_12

    :cond_5
    const/4 v0, 0x1

    :goto_3
    move v8, v1

    move v1, v0

    .line 305
    :goto_4
    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->d:Z

    if-nez v0, :cond_7

    :cond_6
    if-eqz v8, :cond_16

    :cond_7
    const/4 v0, 0x1

    .line 313
    :goto_5
    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 17291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 313
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/b/g/s;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 321
    iget-boolean v2, p0, Lcom/sleepycat/b/g/s;->i:Z

    if-eqz v2, :cond_8

    .line 322
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    iput-wide v2, p0, Lcom/sleepycat/b/g/s;->m:J

    .line 323
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    iget-object v4, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v4}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v4

    iget-object v5, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 18291
    iget v5, v5, Lcom/sleepycat/b/g/ae;->d:I

    .line 323
    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/g/s;->n:J

    .line 18685
    :cond_8
    iget-boolean v2, p0, Lcom/sleepycat/b/g/s;->d:Z

    if-eqz v2, :cond_9

    .line 18689
    if-eqz v1, :cond_9

    .line 18693
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 19291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 18693
    invoke-virtual {v1, v10, v2}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 18694
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->p:Lcom/sleepycat/b/g/d;

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 20275
    iget-wide v2, v2, Lcom/sleepycat/b/g/ae;->a:J

    .line 18694
    iget-object v4, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 21014
    iget-wide v4, v4, Lcom/sleepycat/b/g/u;->a:J

    .line 18694
    iget-wide v6, p0, Lcom/sleepycat/b/g/s;->m:J

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/g/d;->a(JJJ)V

    .line 331
    :cond_9
    if-eqz v8, :cond_17

    .line 340
    invoke-virtual {p0, v10}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v9, 0x1

    .line 342
    iget v0, p0, Lcom/sleepycat/b/g/s;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/g/s;->j:I

    goto/16 :goto_0

    .line 8517
    :cond_a
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 8519
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->f:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 10014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 8519
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/m;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    .line 8522
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->f:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 11014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 8522
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v0

    .line 8525
    if-nez v0, :cond_b

    .line 8526
    new-instance v0, Lcom/sleepycat/b/g/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No file following "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 12014
    iget-wide v2, v2, Lcom/sleepycat/b/g/u;->a:J

    .line 8526
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8538
    :cond_b
    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_c

    .line 8540
    new-instance v1, Lcom/sleepycat/b/g/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextFile=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/g/t;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8545
    :cond_c
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 13014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 8545
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    .line 8546
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/b/g/s;->a(J)V

    .line 8549
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 8550
    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->l:J

    .line 8572
    :cond_e
    :goto_6
    iget-wide v6, p0, Lcom/sleepycat/b/g/s;->l:J

    .line 8576
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->l:J

    invoke-static {v2, v3, v0, v1}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    .line 8578
    iget-wide v10, p0, Lcom/sleepycat/b/g/s;->c:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_11

    .line 8579
    iget-wide v10, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v0, v1, v10, v11}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_11

    .line 8580
    new-instance v2, Lcom/sleepycat/b/g/t;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finish="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/g/t;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8552
    :cond_f
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->m:J

    iget-wide v2, p0, Lcom/sleepycat/b/g/s;->l:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 13232
    iget-object v2, v2, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 8552
    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 8559
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 14014
    iget-wide v2, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 8560
    iget-wide v4, p0, Lcom/sleepycat/b/g/s;->l:J

    goto :goto_6

    .line 8568
    :cond_10
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 15014
    iget-wide v2, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 8569
    iget-wide v0, p0, Lcom/sleepycat/b/g/s;->m:J

    iget-object v4, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 15232
    iget-object v4, v4, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 8569
    int-to-long v4, v4

    sub-long v4, v0, v4

    .line 8571
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_e

    const-wide/16 v4, 0x0

    goto :goto_6

    .line 8587
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    iget-boolean v8, p0, Lcom/sleepycat/b/g/s;->i:Z

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/b/g/u;->a(JJJZ)V

    goto/16 :goto_2

    .line 298
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 300
    :cond_13
    invoke-virtual {p0}, Lcom/sleepycat/b/g/s;->a()Z

    move-result v1

    .line 301
    if-nez v1, :cond_14

    iget-boolean v0, p0, Lcom/sleepycat/b/g/s;->q:Z

    if-eqz v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 302
    :goto_7
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;Z)V

    move v8, v1

    move v1, v0

    goto/16 :goto_4

    .line 301
    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    .line 305
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 344
    :cond_17
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, v10}, Lcom/sleepycat/b/g/s;->b(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Lcom/sleepycat/b/g/t; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_18
    move v0, v9

    .line 360
    goto/16 :goto_1
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    if-nez v0, :cond_0

    .line 878
    const-string v0, "entryIsReplicated should not be used before reader is initialized"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/s;->k:Lcom/sleepycat/b/g/ae;

    .line 31299
    iget-boolean v0, v0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 882
    return v0
.end method

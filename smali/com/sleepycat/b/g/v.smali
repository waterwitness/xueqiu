.class Lcom/sleepycat/b/g/v;
.super Ljava/lang/Object;
.source "FileSource.java"

# interfaces
.implements Lcom/sleepycat/b/g/ap;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/io/RandomAccessFile;

.field private final c:I

.field private final d:Lcom/sleepycat/b/g/m;

.field private final e:J

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/g/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/v;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/b/g/m;JI)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/b/g/v;->b:Ljava/io/RandomAccessFile;

    .line 34
    iput p2, p0, Lcom/sleepycat/b/g/v;->c:I

    .line 35
    iput-object p3, p0, Lcom/sleepycat/b/g/v;->d:Lcom/sleepycat/b/g/m;

    .line 36
    iput-wide p4, p0, Lcom/sleepycat/b/g/v;->e:J

    .line 37
    iput p6, p0, Lcom/sleepycat/b/g/v;->f:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    .line 55
    iget v0, p0, Lcom/sleepycat/b/g/v;->c:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 56
    iget-object v1, p0, Lcom/sleepycat/b/g/v;->d:Lcom/sleepycat/b/g/m;

    iget-object v2, p0, Lcom/sleepycat/b/g/v;->b:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lcom/sleepycat/b/g/v;->e:J

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 58
    sget-boolean v0, Lcom/sleepycat/b/g/v;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 60
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    return-object v3
.end method

.method public final a(JI)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    .line 71
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 72
    iget-object v1, p0, Lcom/sleepycat/b/g/v;->d:Lcom/sleepycat/b/g/m;

    iget-object v2, p0, Lcom/sleepycat/b/g/v;->b:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lcom/sleepycat/b/g/v;->e:J

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 74
    sget-boolean v0, Lcom/sleepycat/b/g/v;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 76
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 79
    new-instance v0, Lcom/sleepycat/b/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remaining="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    return-object v3
.end method

.method public a()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/sleepycat/b/g/v;->f:I

    return v0
.end method

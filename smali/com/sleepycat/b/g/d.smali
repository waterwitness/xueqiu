.class public final Lcom/sleepycat/b/g/d;
.super Ljava/lang/Object;
.source "ChecksumValidator.java"


# instance fields
.field private a:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/sleepycat/b/p/b;->a()Ljava/util/zip/Checksum;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 30
    return-void
.end method

.method final a(JJ)V
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/sleepycat/b/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public final a(JJJ)V
    .locals 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p3, p4, p5, p6}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    .line 77
    new-instance v2, Lcom/sleepycat/b/g/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Lcom/sleepycat/b/g/c;

    const-string v1, "null buffer given to checksum validation, probably  result of 0\'s in log file."

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0, p2}, Lcom/sleepycat/b/g/d;->a([BII)V

    .line 55
    return-void
.end method

.method public final a([BII)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sleepycat/b/g/d;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 59
    return-void
.end method

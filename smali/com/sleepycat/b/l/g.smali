.class public final Lcom/sleepycat/b/l/g;
.super Ljava/lang/Object;
.source "DeltaInfo.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public a:[B

.field b:J

.field c:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/g;->b:J

    .line 39
    return-void
.end method

.method constructor <init>([BJB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sleepycat/b/l/g;->a:[B

    .line 28
    iput-wide p2, p0, Lcom/sleepycat/b/l/g;->b:J

    .line 29
    iput-byte p4, p0, Lcom/sleepycat/b/l/g;->c:B

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sleepycat/b/l/g;->a:[B

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/l/g;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sleepycat/b/l/g;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-wide v0, p0, Lcom/sleepycat/b/l/g;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-byte v0, p0, Lcom/sleepycat/b/l/g;->c:B

    invoke-static {p1, v0}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/StringBuilder;B)V

    .line 81
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sleepycat/b/l/g;->a:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 58
    iget-wide v0, p0, Lcom/sleepycat/b/l/g;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 59
    iget-byte v0, p0, Lcom/sleepycat/b/l/g;->c:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 68
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/l/g;->a:[B

    .line 69
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/l/g;->b:J

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/l/g;->c:B

    .line 71
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.class public Lcom/sleepycat/b/i/e/ae;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field public final a:J

.field public final b:J

.field final synthetic c:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;JJ)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ae;->c:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 908
    iput-wide p2, p0, Lcom/sleepycat/b/i/e/ae;->a:J

    .line 909
    iput-wide p4, p0, Lcom/sleepycat/b/i/e/ae;->b:J

    .line 910
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 914
    sget-object v0, Lcom/sleepycat/b/i/e/t;->n:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 920
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ae;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 921
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ae;->a:J

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 922
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ae;->b:J

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 923
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 924
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " masterNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ae;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentCommit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ae;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

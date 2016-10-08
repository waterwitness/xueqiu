.class public abstract Lcom/sleepycat/b/n/ai;
.super Ljava/lang/Object;
.source "TxnEnd.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field protected a:J

.field protected b:Lcom/sleepycat/b/p/aq;

.field public c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/ai;->d:J

    .line 41
    return-void
.end method

.method constructor <init>(JJI)V
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/sleepycat/b/n/ai;->a:J

    .line 31
    new-instance v0, Lcom/sleepycat/b/p/aq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    .line 32
    iput-wide p3, p0, Lcom/sleepycat/b/n/ai;->d:J

    .line 33
    iput p5, p0, Lcom/sleepycat/b/n/ai;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->a:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/sleepycat/b/n/ai;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/n/ai;->c:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 110
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/n/ai;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/ai;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "\" master=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/n/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->d:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/n/ai;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 84
    iget-object v0, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 85
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->d:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 86
    iget v0, p0, Lcom/sleepycat/b/n/ai;->c:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 87
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 95
    if-ge p2, v4, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/n/ai;->a:J

    .line 97
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    .line 98
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/n/ai;->d:J

    .line 100
    if-lt p2, v4, :cond_0

    .line 101
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/n/ai;->c:I

    .line 104
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->a:J

    return-wide v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/sleepycat/b/n/ai;->a:J

    return-wide v0
.end method

.method public final e()Lcom/sleepycat/b/p/aq;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sleepycat/b/n/ai;->b:Lcom/sleepycat/b/p/aq;

    return-object v0
.end method

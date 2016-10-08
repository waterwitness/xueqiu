.class public Lcom/sleepycat/b/n/ak;
.super Lcom/sleepycat/b/n/ai;
.source "TxnPrepare.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public d:Lcom/sleepycat/b/q/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sleepycat/b/n/ai;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sleepycat/b/n/ak;->a:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/n/ak;->b:Lcom/sleepycat/b/p/aq;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/n/ak;->d:Lcom/sleepycat/b/q/a;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/q/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 85
    const-string v0, "<TxnPrepare"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/ak;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/n/ak;->b:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/n/ak;->d:Lcom/sleepycat/b/q/a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "</TxnPrepare>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sleepycat/b/n/ak;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 65
    iget-object v0, p0, Lcom/sleepycat/b/n/ak;->b:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 66
    iget-object v0, p0, Lcom/sleepycat/b/n/ak;->d:Lcom/sleepycat/b/q/a;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/q/a;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/n/ak;->a:J

    .line 76
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/n/ak;->b:Lcom/sleepycat/b/p/aq;

    .line 77
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->i(Ljava/nio/ByteBuffer;)Lcom/sleepycat/b/q/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/n/ak;->d:Lcom/sleepycat/b/q/a;

    .line 78
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "TxnPrepare"

    return-object v0
.end method

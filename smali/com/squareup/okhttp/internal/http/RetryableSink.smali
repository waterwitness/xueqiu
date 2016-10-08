.class public final Lcom/squareup/okhttp/internal/http/RetryableSink;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lc/r;


# instance fields
.field private closed:Z

.field private final content:Lc/d;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lc/d;

    invoke-direct {v0}, Lc/d;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 38
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    .line 39
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->closed:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->closed:Z

    .line 48
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 1059
    iget-wide v0, v0, Lc/d;->b:J

    .line 48
    iget v2, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content-length promised "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 2059
    iget-wide v2, v2, Lc/d;->b:J

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final contentLength()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 5059
    iget-wide v0, v0, Lc/d;->b:J

    .line 71
    return-wide v0
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final timeout()Lc/t;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc/t;->NONE:Lc/t;

    return-object v0
.end method

.method public final write(Lc/d;J)V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3059
    :cond_0
    iget-wide v0, p1, Lc/d;->b:J

    .line 56
    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 57
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 4059
    iget-wide v0, v0, Lc/d;->b:J

    .line 57
    iget v2, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceeded content-length limit of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d;->write(Lc/d;J)V

    .line 61
    return-void
.end method

.method public final writeToSocket(Lc/r;)V
    .locals 6

    .prologue
    .line 76
    new-instance v1, Lc/d;

    invoke-direct {v1}, Lc/d;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RetryableSink;->content:Lc/d;

    .line 6059
    iget-wide v4, v4, Lc/d;->b:J

    .line 77
    invoke-virtual/range {v0 .. v5}, Lc/d;->a(Lc/d;JJ)Lc/d;

    .line 7059
    iget-wide v2, v1, Lc/d;->b:J

    .line 78
    invoke-interface {p1, v1, v2, v3}, Lc/r;->write(Lc/d;J)V

    .line 79
    return-void
.end method

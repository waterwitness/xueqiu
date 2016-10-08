.class Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
.super Ljava/lang/Object;
.source "FutureRequestExecutionMetrics.java"


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeDuration:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->cumulativeDuration:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public averageDuration()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 141
    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 142
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->cumulativeDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public count()J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment(J)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->cumulativeDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string v1, "[count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", averageDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

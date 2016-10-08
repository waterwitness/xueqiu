.class public final Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;
.super Ljava/lang/Object;
.source "FutureRequestExecutionMetrics.java"


# instance fields
.field private final activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

.field private final successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

.field private final tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 39
    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 40
    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 41
    new-instance v0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-direct {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    .line 44
    return-void
.end method


# virtual methods
.method public final getActiveConnectionCount()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method final getActiveConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public final getFailedConnectionAverageDuration()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFailedConnectionCount()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method final getFailedConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public final getRequestAverageDuration()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRequestCount()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method final getRequests()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public final getScheduledConnectionCount()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method final getScheduledConnections()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public final getSuccessfulConnectionAverageDuration()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSuccessfulConnectionCount()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method final getSuccessfulConnections()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public final getTaskAverageDuration()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->averageDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTaskCount()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method final getTasks()Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v1, "[activeConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->activeConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scheduledConnections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->scheduledConnections:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", successfulConnections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->successfulConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failedConnections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->failedConnections:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->requests:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/FutureRequestExecutionMetrics;->tasks:Lorg/apache/http/impl/client/FutureRequestExecutionMetrics$DurationCounter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

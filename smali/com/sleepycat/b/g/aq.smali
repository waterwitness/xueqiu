.class public final Lcom/sleepycat/b/g/aq;
.super Ljava/lang/Object;
.source "LogStatDefinition.java"


# static fields
.field public static final A:Lcom/sleepycat/b/p/ag;

.field public static final B:Lcom/sleepycat/b/p/ag;

.field public static final C:Lcom/sleepycat/b/p/ag;

.field public static final D:Lcom/sleepycat/b/p/ag;

.field public static final E:Lcom/sleepycat/b/p/ag;

.field public static final F:Lcom/sleepycat/b/p/ag;

.field public static final G:Lcom/sleepycat/b/p/ag;

.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;

.field public static final h:Lcom/sleepycat/b/p/ag;

.field public static final i:Lcom/sleepycat/b/p/ag;

.field public static final j:Lcom/sleepycat/b/p/ag;

.field public static final k:Lcom/sleepycat/b/p/ag;

.field public static final l:Lcom/sleepycat/b/p/ag;

.field public static final m:Lcom/sleepycat/b/p/ag;

.field public static final n:Lcom/sleepycat/b/p/ag;

.field public static final o:Lcom/sleepycat/b/p/ag;

.field public static final p:Lcom/sleepycat/b/p/ag;

.field public static final q:Lcom/sleepycat/b/p/ag;

.field public static final r:Lcom/sleepycat/b/p/ag;

.field public static final s:Lcom/sleepycat/b/p/ag;

.field public static final t:Lcom/sleepycat/b/p/ag;

.field public static final u:Lcom/sleepycat/b/p/ag;

.field public static final v:Lcom/sleepycat/b/p/ag;

.field public static final w:Lcom/sleepycat/b/p/ag;

.field public static final x:Lcom/sleepycat/b/p/ag;

.field public static y:Lcom/sleepycat/b/p/ag;

.field public static final z:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRandomReads"

    const-string v2, "Number of disk reads which required respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->a:Lcom/sleepycat/b/p/ag;

    .line 48
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRandomWrites"

    const-string v2, "Number of disk writes which required respositioning the disk head by more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->b:Lcom/sleepycat/b/p/ag;

    .line 54
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nSequentialReads"

    const-string v2, "Number of disk reads which did not require respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->c:Lcom/sleepycat/b/p/ag;

    .line 60
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nSequentialWrites"

    const-string v2, "Number of disk writes which did not require respositioning the disk head by more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->d:Lcom/sleepycat/b/p/ag;

    .line 66
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRandomReadBytes"

    const-string v2, "Number of bytes read which required respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->e:Lcom/sleepycat/b/p/ag;

    .line 72
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRandomWriteBytes"

    const-string v2, "Number of bytes written which required respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->f:Lcom/sleepycat/b/p/ag;

    .line 78
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nSequentialReadBytes"

    const-string v2, "Number of bytes read which did not require respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->g:Lcom/sleepycat/b/p/ag;

    .line 84
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nSequentialWriteBytes"

    const-string v2, "Number of bytes written which did not require respositioning the disk head more than 1MB from the previous file position."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->h:Lcom/sleepycat/b/p/ag;

    .line 90
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFileOpens"

    const-string v2, "Number of times a log file has been opened."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->i:Lcom/sleepycat/b/p/ag;

    .line 94
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nOpenFiles"

    const-string v2, "Number of files currently open in the file cache."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->j:Lcom/sleepycat/b/p/ag;

    .line 100
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBytesReadFromWriteQueue"

    const-string v2, "Number of bytes read to fulfill file read operations by reading out of the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->k:Lcom/sleepycat/b/p/ag;

    .line 106
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBytesWrittenFromWriteQueue"

    const-string v2, "Number of bytes written from the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->l:Lcom/sleepycat/b/p/ag;

    .line 111
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nReadsFromWriteQueue"

    const-string v2, "Number of file read operations which were fulfilled by reading out of the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->m:Lcom/sleepycat/b/p/ag;

    .line 117
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWritesFromWriteQueue"

    const-string v2, "Number of file write operations executed from the pending write queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->n:Lcom/sleepycat/b/p/ag;

    .line 122
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWriteQueueOverflow"

    const-string v2, "Number of write operations which would overflow the Write Queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->o:Lcom/sleepycat/b/p/ag;

    .line 127
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWriteQueueOverflowFailures"

    const-string v2, "Number of write operations which would overflow the Write Queue and could not be queued."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->p:Lcom/sleepycat/b/p/ag;

    .line 133
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFSyncs"

    const-string v2, "Number of fsyncs issued through the group commit manager for actions such as transaction commits and checkpoints. A subset of nLogFsyncs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->q:Lcom/sleepycat/b/p/ag;

    .line 140
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFSyncRequests"

    const-string v2, "Number of fsyncs requested through the group commit manager for actions such as transaction commits and checkpoints."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->r:Lcom/sleepycat/b/p/ag;

    .line 146
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGrpCommitTimeouts"

    const-string v2, "Number of requests submitted to the group commit manager for actions such as transaction commmits and checkpoints which timed out."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->s:Lcom/sleepycat/b/p/ag;

    .line 153
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLogFSyncs"

    const-string v2, "Total number of fsyncs of the JE log. This includes those fsyncs recorded under the nFsyncs stat"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->t:Lcom/sleepycat/b/p/ag;

    .line 160
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFSyncTime"

    const-string v2, "Total fsync time in msstat"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->u:Lcom/sleepycat/b/p/ag;

    .line 165
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommitRequests"

    const-string v2, "Number of group commit requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->v:Lcom/sleepycat/b/p/ag;

    .line 169
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommitWaits"

    const-string v2, "Number of group commit leader waits."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->w:Lcom/sleepycat/b/p/ag;

    .line 173
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLogMaxGroupCommitThreshold"

    const-string v2, "Number of group commits that were initiated due to the group commit size threshold being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->x:Lcom/sleepycat/b/p/ag;

    .line 179
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLogIntervalExceeded"

    const-string v2, "Number of group commits that were initiated due to the group commit time interval being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->y:Lcom/sleepycat/b/p/ag;

    .line 186
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRepeatFaultReads"

    const-string v2, "Number of reads which had to be repeated when faulting in an object from disk because the read chunk size controlled by je.log.faultReadSize is too small."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->z:Lcom/sleepycat/b/p/ag;

    .line 193
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nTempBufferWrites"

    const-string v2, "Number of writes which had to be completed using the temporary marshalling buffer because the fixed size log buffers specified by je.log.totalBufferBytes and je.log.numBuffers were not large enough."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->A:Lcom/sleepycat/b/p/ag;

    .line 201
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "endOfLog"

    const-string v2, "The location of the next entry to be written to the log."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->B:Lcom/sleepycat/b/p/ag;

    .line 207
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNoFreeBuffer"

    const-string v2, "Number of requests to get a free buffer that force a log write."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->C:Lcom/sleepycat/b/p/ag;

    .line 213
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNotResident"

    const-string v2, "Number of request for database objects not contained within the in memory data structure."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->D:Lcom/sleepycat/b/p/ag;

    .line 218
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCacheMiss"

    const-string v2, "Total number of requests for database objects which were not in memory."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->E:Lcom/sleepycat/b/p/ag;

    .line 223
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLogBuffers"

    const-string v2, "Number of log buffers currently instantiated."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->F:Lcom/sleepycat/b/p/ag;

    .line 228
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "bufferBytes"

    const-string v2, "Total memory currently consumed by log buffers, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/g/aq;->G:Lcom/sleepycat/b/p/ag;

    return-void
.end method

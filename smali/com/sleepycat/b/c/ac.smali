.class public final enum Lcom/sleepycat/b/c/ac;
.super Ljava/lang/Enum;
.source "EnvironmentFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/sleepycat/b/c/ac;

.field public static final enum B:Lcom/sleepycat/b/c/ac;

.field public static final enum C:Lcom/sleepycat/b/c/ac;

.field public static final enum D:Lcom/sleepycat/b/c/ac;

.field private static final synthetic G:[Lcom/sleepycat/b/c/ac;

.field public static final enum a:Lcom/sleepycat/b/c/ac;

.field public static final enum b:Lcom/sleepycat/b/c/ac;

.field public static final enum c:Lcom/sleepycat/b/c/ac;

.field public static final enum d:Lcom/sleepycat/b/c/ac;

.field public static final enum e:Lcom/sleepycat/b/c/ac;

.field public static final enum f:Lcom/sleepycat/b/c/ac;

.field public static final enum g:Lcom/sleepycat/b/c/ac;

.field public static final enum h:Lcom/sleepycat/b/c/ac;

.field public static final enum i:Lcom/sleepycat/b/c/ac;

.field public static final enum j:Lcom/sleepycat/b/c/ac;

.field public static final enum k:Lcom/sleepycat/b/c/ac;

.field public static final enum l:Lcom/sleepycat/b/c/ac;

.field public static final enum m:Lcom/sleepycat/b/c/ac;

.field public static final enum n:Lcom/sleepycat/b/c/ac;

.field public static final enum o:Lcom/sleepycat/b/c/ac;

.field public static final enum p:Lcom/sleepycat/b/c/ac;

.field public static final enum q:Lcom/sleepycat/b/c/ac;

.field public static final enum r:Lcom/sleepycat/b/c/ac;

.field public static final enum s:Lcom/sleepycat/b/c/ac;

.field public static final enum t:Lcom/sleepycat/b/c/ac;

.field public static final enum u:Lcom/sleepycat/b/c/ac;

.field public static final enum v:Lcom/sleepycat/b/c/ac;

.field public static final enum w:Lcom/sleepycat/b/c/ac;

.field public static final enum x:Lcom/sleepycat/b/c/ac;

.field public static final enum y:Lcom/sleepycat/b/c/ac;

.field public static final enum z:Lcom/sleepycat/b/c/ac;


# instance fields
.field public final E:Z

.field private final F:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 15
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "ENV_LOCKED"

    const-string v2, "The je.lck file could not be locked."

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->a:Lcom/sleepycat/b/c/ac;

    .line 18
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "ENV_NOT_FOUND"

    const-string v2, "EnvironmentConfig.setAllowCreate is false so environment creation is not permitted, but there are no log files in the environment directory."

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->b:Lcom/sleepycat/b/c/ac;

    .line 23
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "FOUND_COMMITTED_TXN"

    const-string v2, "One committed transaction has been found after a corrupted log entry. The recovery process has been stopped, and the user may need to run DbTruncateLog to truncate the log. Some valid data may be lost if the log file is truncated for recovery."

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->c:Lcom/sleepycat/b/c/ac;

    .line 29
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "HANDSHAKE_ERROR"

    const-string v2, "Error during the handshake between two nodes. Some validity or compatibility check failed, preventing further communication between the nodes."

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    .line 34
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "HARD_RECOVERY"

    const-string v2, "Rolled back past transaction commit or abort. Must run recovery by re-opening Environment handles"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->e:Lcom/sleepycat/b/c/ac;

    .line 38
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "JAVA_ERROR"

    const/4 v2, 0x5

    const-string v3, "Java Error occurred, recovery may not be possible."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->f:Lcom/sleepycat/b/c/ac;

    .line 41
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LATCH_ALREADY_HELD"

    const/4 v2, 0x6

    const-string v3, "Attempt to acquire a latch that is already held, may cause a hard deadlock."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->g:Lcom/sleepycat/b/c/ac;

    .line 45
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LATCH_NOT_HELD"

    const/4 v2, 0x7

    const-string v3, "Attempt to release a latch that is not currently not held, may indicate a thread safety problem."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->h:Lcom/sleepycat/b/c/ac;

    .line 49
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LISTENER_EXCEPTION"

    const/16 v2, 0x8

    const-string v3, "An exception was thrown from an application supplied Listener."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->i:Lcom/sleepycat/b/c/ac;

    .line 52
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_CHECKSUM"

    const/16 v2, 0x9

    const-string v3, "Checksum invalid on read, log is likely invalid."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    .line 55
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_FILE_NOT_FOUND"

    const/16 v2, 0xa

    const-string v3, "Log file missing, log is likely invalid."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    .line 58
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_INCOMPLETE"

    const/16 v2, 0xb

    const-string v3, "Transaction logging is incomplete, replica is invalid."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    .line 61
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_INTEGRITY"

    const/16 v2, 0xc

    const-string v3, "Log information is incorrect, problem is likely persistent."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    .line 64
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_READ"

    const/16 v2, 0xd

    const-string v3, "IOException on read, log is likely invalid."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    .line 67
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "INSUFFICIENT_LOG"

    const/16 v2, 0xe

    const-string v3, "Log files at this node are obsolete."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->o:Lcom/sleepycat/b/c/ac;

    .line 70
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "LOG_WRITE"

    const/16 v2, 0xf

    const-string v3, "IOException on write, log is likely incomplete."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    .line 73
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "MASTER_TO_REPLICA_TRANSITION"

    const/16 v2, 0x10

    const-string v3, "This node was a master and must reinitialize internal state to become a replica. The application must close and reopen all Environment handles."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->q:Lcom/sleepycat/b/c/ac;

    .line 78
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "MONITOR_REGISTRATION"

    const/16 v2, 0x11

    const-string v3, "JMX JE monitor could not be registered."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->r:Lcom/sleepycat/b/c/ac;

    .line 81
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "PROGRESS_LISTENER_HALT"

    const/16 v2, 0x12

    const-string v3, "A ProgressListener registered with this environment returned false from a call to ProgressListener.progress(), indicating that the environment should be closed"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->s:Lcom/sleepycat/b/c/ac;

    .line 86
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "PROTOCOL_VERSION_MISMATCH"

    const/16 v2, 0x13

    const-string v3, "Two communicating nodes could not agree on a common protocol version."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->t:Lcom/sleepycat/b/c/ac;

    .line 90
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "ROLLBACK_PROHIBITED"

    const/16 v2, 0x14

    const-string v3, "Node would like to roll back past committed transactions, but would exceed the limit specified by je.rep.txnRollbackLimit. Manual intervention required."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->u:Lcom/sleepycat/b/c/ac;

    .line 95
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "SHUTDOWN_REQUESTED"

    const/16 v2, 0x15

    const-string v3, "The Replica was shutdown via a remote shutdown request."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->v:Lcom/sleepycat/b/c/ac;

    .line 98
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "TEST_INVALIDATE"

    const/16 v2, 0x16

    const-string v3, "Test program invalidated the environment."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->w:Lcom/sleepycat/b/c/ac;

    .line 101
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "THREAD_INTERRUPTED"

    const/16 v2, 0x17

    const-string v3, "InterruptedException may cause incorrect internal state, unable to continue."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->x:Lcom/sleepycat/b/c/ac;

    .line 105
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "UNCAUGHT_EXCEPTION"

    const/16 v2, 0x18

    const-string v3, "Uncaught Exception in internal thread, unable to continue."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    .line 108
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "UNEXPECTED_EXCEPTION"

    const/16 v2, 0x19

    const-string v3, "Unexpected internal Exception, may have side effects."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    .line 111
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "UNEXPECTED_EXCEPTION_FATAL"

    const/16 v2, 0x1a

    const-string v3, "Unexpected internal Exception, unable to continue."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->A:Lcom/sleepycat/b/c/ac;

    .line 114
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "UNEXPECTED_STATE"

    const/16 v2, 0x1b

    const-string v3, "Unexpected internal state, may have side effects."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    .line 117
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "UNEXPECTED_STATE_FATAL"

    const/16 v2, 0x1c

    const-string v3, "Unexpected internal state, unable to continue."

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->C:Lcom/sleepycat/b/c/ac;

    .line 120
    new-instance v0, Lcom/sleepycat/b/c/ac;

    const-string v1, "VERSION_MISMATCH"

    const/16 v2, 0x1d

    const-string v3, "The existing log was written with a version of JE that is later than the running version of JE, the log cannot be read."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sleepycat/b/c/ac;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/ac;->D:Lcom/sleepycat/b/c/ac;

    .line 13
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/sleepycat/b/c/ac;

    sget-object v1, Lcom/sleepycat/b/c/ac;->a:Lcom/sleepycat/b/c/ac;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/c/ac;->b:Lcom/sleepycat/b/c/ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/c/ac;->c:Lcom/sleepycat/b/c/ac;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/b/c/ac;->e:Lcom/sleepycat/b/c/ac;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/c/ac;->f:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sleepycat/b/c/ac;->g:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sleepycat/b/c/ac;->h:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sleepycat/b/c/ac;->i:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sleepycat/b/c/ac;->o:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sleepycat/b/c/ac;->q:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sleepycat/b/c/ac;->r:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sleepycat/b/c/ac;->s:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sleepycat/b/c/ac;->t:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sleepycat/b/c/ac;->u:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sleepycat/b/c/ac;->v:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sleepycat/b/c/ac;->w:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sleepycat/b/c/ac;->x:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sleepycat/b/c/ac;->A:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sleepycat/b/c/ac;->C:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sleepycat/b/c/ac;->D:Lcom/sleepycat/b/c/ac;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/c/ac;->G:[Lcom/sleepycat/b/c/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-boolean p3, p0, Lcom/sleepycat/b/c/ac;->E:Z

    .line 130
    iput-object p4, p0, Lcom/sleepycat/b/c/ac;->F:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/ac;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sleepycat/b/c/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ac;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/ac;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sleepycat/b/c/ac;->G:[Lcom/sleepycat/b/c/ac;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/ac;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/c/ac;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

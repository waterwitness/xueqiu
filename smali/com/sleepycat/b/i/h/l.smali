.class public final Lcom/sleepycat/b/i/h/l;
.super Ljava/lang/Object;
.source "BinaryProtocolStatDefinition.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nReadNanos"

    const-string v2, "The number of nanoseconds spent reading from the network channel."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    .line 26
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWriteNanos"

    const-string v2, "The number of nanoseconds spent writing to the network channel."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    .line 31
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBytesRead"

    const-string v2, "The number of bytes of Replication Stream read over the network. It does not include the TCP/IP overhead."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->c:Lcom/sleepycat/b/p/ag;

    .line 37
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMessagesRead"

    const-string v2, "The number of Replication Stream messages read over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->d:Lcom/sleepycat/b/p/ag;

    .line 42
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBytesWritten"

    const-string v2, "The number of Replication Stream bytes written over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->e:Lcom/sleepycat/b/p/ag;

    .line 47
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMessagesWritten"

    const-string v2, "The number of Replication Stream messages written over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->f:Lcom/sleepycat/b/p/ag;

    .line 53
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "messagesReadPerSecond"

    const-string v2, "Incoming message throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->g:Lcom/sleepycat/b/p/ag;

    .line 57
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "messagesWrittenPerSecond"

    const-string v2, "Outgoing message throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->h:Lcom/sleepycat/b/p/ag;

    .line 61
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "bytesReadPerSecond"

    const-string v2, "Bytes read throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->i:Lcom/sleepycat/b/p/ag;

    .line 65
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "bytesWrittenPerSecond"

    const-string v2, "Bytes written throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->j:Lcom/sleepycat/b/p/ag;

    .line 69
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nEntriesOldVersion"

    const-string v2, "The number of messages containing log entries that were written to the replication stream using the previous log format, to support replication to a replica running an earlier version during an upgrade."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/l;->k:Lcom/sleepycat/b/p/ag;

    return-void
.end method

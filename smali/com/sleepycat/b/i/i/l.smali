.class public final Lcom/sleepycat/b/i/i/l;
.super Ljava/lang/Object;
.source "VLSNIndexStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;

.field public static d:Lcom/sleepycat/b/p/ag;

.field public static e:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nHits"

    const-string v2, "Number of hits to the VLSN index cache"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/i/l;->a:Lcom/sleepycat/b/p/ag;

    .line 25
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMisses"

    const-string v2, "Number of log entry misses upon access to the VLSN index cache. Upon a miss the Feeder will fetch the log enty from the log buffer, or the log file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/i/l;->b:Lcom/sleepycat/b/p/ag;

    .line 32
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nHeadBucketsDeleted"

    const-string v2, "Number of VLSN index buckets deleted at the head(the low end) of the VLSN index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/i/l;->c:Lcom/sleepycat/b/p/ag;

    .line 37
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nTailBucketsDeleted"

    const-string v2, "Number of VLSN index buckets deleted at the tail(the high end) of the index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/i/l;->d:Lcom/sleepycat/b/p/ag;

    .line 42
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBucketsCreated"

    const-string v2, "Number of new VLSN buckets created in the VLSN index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/i/l;->e:Lcom/sleepycat/b/p/ag;

    return-void
.end method

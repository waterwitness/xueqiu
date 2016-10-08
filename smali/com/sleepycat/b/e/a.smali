.class public final Lcom/sleepycat/b/e/a;
.super Ljava/lang/Object;
.source "INCompStatDefinition.java"


# static fields
.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "splitBins"

    const-string v2, "Number of BINs encountered by the INCompressor that were split between the time they were put on the comprssor queue and when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->a:Lcom/sleepycat/b/p/ag;

    .line 27
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbClosedBins"

    const-string v2, "Number of BINs encountered by the INCompressor that had their database closed between the time they were put on the compressor queue and when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->b:Lcom/sleepycat/b/p/ag;

    .line 34
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorsBins"

    const-string v2, "Number of BINs encountered by the INComprssor that had cursors referring to them when the compresor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->c:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nonEmptyBins"

    const-string v2, "Number of BINs encountered by the INCompressor that were not actually empty when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->d:Lcom/sleepycat/b/p/ag;

    .line 46
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "processedBins"

    const-string v2, "Number of BINs that were successfully processed by the INCompressor."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->e:Lcom/sleepycat/b/p/ag;

    .line 51
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "inCompQueueSize"

    const-string v2, "Number of entries in the INCompressor queue when the getStats() call was made."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/e/a;->f:Lcom/sleepycat/b/p/ag;

    return-void
.end method

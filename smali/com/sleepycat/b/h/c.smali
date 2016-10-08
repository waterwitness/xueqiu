.class public final Lcom/sleepycat/b/h/c;
.super Ljava/lang/Object;
.source "CheckpointStatDefinition.java"


# static fields
.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCheckpoints"

    const-string v2, "Total number of checkpints run so far."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/h/c;->a:Lcom/sleepycat/b/p/ag;

    .line 25
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lastCheckpointId"

    const-string v2, "Id of the last checkpoint."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/h/c;->b:Lcom/sleepycat/b/p/ag;

    .line 30
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFullINFlush"

    const-string v2, "Accumulated number of full INs flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/h/c;->c:Lcom/sleepycat/b/p/ag;

    .line 35
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFullBINFlush"

    const-string v2, "Accumulated number of full BINs flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/h/c;->d:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nDeltaINFlush"

    const-string v2, "Accumulated number of Delta INs flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/h/c;->e:Lcom/sleepycat/b/p/ag;

    .line 45
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lastCheckpointStart"

    const-string v2, "Location in the log of the last checkpont start."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/h/c;->f:Lcom/sleepycat/b/p/ag;

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lastCheckpointEnd"

    const-string v2, "Location in the log of the last checkpoint end."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/h/c;->g:Lcom/sleepycat/b/p/ag;

    return-void
.end method

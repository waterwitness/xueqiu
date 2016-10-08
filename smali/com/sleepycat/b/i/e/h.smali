.class public final Lcom/sleepycat/b/i/e/h;
.super Ljava/lang/Object;
.source "FeederTxnStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;

.field public static d:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "txnsAcked"

    const-string v2, "Number of Transaction ack\'d."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/e/h;->a:Lcom/sleepycat/b/p/ag;

    .line 23
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "txnsNotAcked"

    const-string v2, "Number of Transactions not Ack\'d."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/e/h;->b:Lcom/sleepycat/b/p/ag;

    .line 27
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "totalTxnMS"

    const-string v2, "The total elapsed MS across all txns from transaction start to end."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/e/h;->c:Lcom/sleepycat/b/p/ag;

    .line 32
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "ackWaitMS"

    const-string v2, "Total MS waited for acks."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/e/h;->d:Lcom/sleepycat/b/p/ag;

    return-void
.end method

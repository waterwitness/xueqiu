.class public final Lcom/sleepycat/b/i/h/ag;
.super Ljava/lang/Object;
.source "SizeAwaitMapStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNoWaits"

    const-string v2, "Number of times the map size requirement was met, and the thread did not need to wait."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/ag;->a:Lcom/sleepycat/b/p/ag;

    .line 26
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRealWaits"

    const-string v2, "Number of times the map size was less than the required size, and the thread had to wait to reach the map size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/ag;->b:Lcom/sleepycat/b/p/ag;

    .line 32
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWaitTime"

    const-string v2, "Totla time (in ms) spent waiting for the map to reach the required size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/h/ag;->c:Lcom/sleepycat/b/p/ag;

    return-void
.end method

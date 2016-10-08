.class public final enum Lcom/sleepycat/b/d/e;
.super Ljava/lang/Enum;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/d/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/d/e;

.field public static final enum b:Lcom/sleepycat/b/d/e;

.field public static final enum c:Lcom/sleepycat/b/d/e;

.field public static final enum d:Lcom/sleepycat/b/d/e;

.field public static final enum e:Lcom/sleepycat/b/d/e;

.field private static final synthetic f:[Lcom/sleepycat/b/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/sleepycat/b/d/e;

    const-string v1, "EVICTORTHREAD"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/e;->a:Lcom/sleepycat/b/d/e;

    new-instance v0, Lcom/sleepycat/b/d/e;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/e;->b:Lcom/sleepycat/b/d/e;

    new-instance v0, Lcom/sleepycat/b/d/e;

    const-string v1, "CRITICAL"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/e;->c:Lcom/sleepycat/b/d/e;

    new-instance v0, Lcom/sleepycat/b/d/e;

    const-string v1, "CACHEMODE"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    new-instance v0, Lcom/sleepycat/b/d/e;

    const-string v1, "DAEMON"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/d/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/e;->e:Lcom/sleepycat/b/d/e;

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sleepycat/b/d/e;

    sget-object v1, Lcom/sleepycat/b/d/e;->a:Lcom/sleepycat/b/d/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/d/e;->b:Lcom/sleepycat/b/d/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/d/e;->c:Lcom/sleepycat/b/d/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/d/e;->e:Lcom/sleepycat/b/d/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/d/e;->f:[Lcom/sleepycat/b/d/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/d/e;
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/sleepycat/b/d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/e;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/d/e;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/sleepycat/b/d/e;->f:[Lcom/sleepycat/b/d/e;

    invoke-virtual {v0}, [Lcom/sleepycat/b/d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/d/e;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/p/ag;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/sleepycat/b/p/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nBINsEvicted"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/d/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Number of BINs evicted from the cache, using the specified eviction source. As a subset of nNodesEvicted, it is an indicator of what eviction is targeting and the activity that is instigating eviction"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Lcom/sleepycat/b/p/ag;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lcom/sleepycat/b/p/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nUpperINsEvicted"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/d/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Number of upper INs evicted from the cache, using the specified eviction source. As a subset of nNodesEvicted, it is an indicator of what eviction is targeting and the activity that is instigating eviction"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lcom/sleepycat/b/p/ag;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/sleepycat/b/p/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nBatches"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/d/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Number of attempts to evict, by type of evictor. Along with average batch size, it serves as an indicator of what part of the system is doing eviction work."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lcom/sleepycat/b/p/ag;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/sleepycat/b/p/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avgBatch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/d/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Average units of work done by one eviction pass. Along with the number of batch size, it serves as an indicator of what part of the system is doing eviction work."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

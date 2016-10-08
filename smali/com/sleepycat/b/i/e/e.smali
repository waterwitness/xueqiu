.class public final Lcom/sleepycat/b/i/e/e;
.super Ljava/lang/Exception;
.source "FeederReplicaSyncup.java"


# instance fields
.field private final a:Lcom/sleepycat/b/p/au;

.field private final b:Lcom/sleepycat/b/p/au;

.field private final c:Lcom/sleepycat/b/p/au;

.field private final d:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/sleepycat/b/i/e/e;->a:Lcom/sleepycat/b/p/au;

    .line 325
    iput-object p2, p0, Lcom/sleepycat/b/i/e/e;->b:Lcom/sleepycat/b/p/au;

    .line 326
    iput-object p3, p0, Lcom/sleepycat/b/i/e/e;->c:Lcom/sleepycat/b/p/au;

    .line 327
    iput-object p4, p0, Lcom/sleepycat/b/i/e/e;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 328
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matchpoint vlsn "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/e;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested by node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/e;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was outside the VLSN range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/e;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/e;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sleepycat/b/i/c/ab;
.super Lcom/sleepycat/b/i/c/aq;
.source "RepGroupProtocol.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/ac;

.field final synthetic b:Lcom/sleepycat/b/i/c/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/x;Lcom/sleepycat/b/i/c/ac;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ab;->b:Lcom/sleepycat/b/i/c/x;

    .line 370
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/b/i/c/aq;-><init>(Lcom/sleepycat/b/i/c/ap;Ljava/lang/String;)V

    .line 371
    iput-object p2, p0, Lcom/sleepycat/b/i/c/ab;->a:Lcom/sleepycat/b/i/c/ac;

    .line 372
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ab;->b:Lcom/sleepycat/b/i/c/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/x;->f:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/c/aq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ab;->a:Lcom/sleepycat/b/i/c/ac;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/ac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sleepycat/b/i/c/ae;
.super Lcom/sleepycat/b/i/c/az;
.source "RepGroupProtocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/t;

.field final synthetic b:Lcom/sleepycat/b/i/c/x;


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ae;->b:Lcom/sleepycat/b/i/c/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/x;->e:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ae;->a:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ae;->j:Ljava/lang/String;

    return-object v0
.end method

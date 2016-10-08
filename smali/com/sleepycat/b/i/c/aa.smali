.class public Lcom/sleepycat/b/i/c/aa;
.super Lcom/sleepycat/b/i/c/aw;
.source "RepGroupProtocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/x;

.field private final c:Lcom/sleepycat/b/i/c/b/x;


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aa;->a:Lcom/sleepycat/b/i/c/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/x;->b:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aa;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 1087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aa;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 1099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

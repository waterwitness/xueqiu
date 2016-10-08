.class public final Lcom/sleepycat/b/i/e/k;
.super Lcom/sleepycat/b/i/e/bc;
.source "InputWireRecord.java"


# instance fields
.field public final a:Lcom/sleepycat/b/g/a/m;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/ae;->a(Ljava/lang/StringBuilder;)V

    .line 83
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v1, v0}, Lcom/sleepycat/b/g/a/m;->a(Ljava/lang/StringBuilder;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

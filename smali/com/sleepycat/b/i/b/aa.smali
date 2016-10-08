.class public Lcom/sleepycat/b/i/b/aa;
.super Lcom/sleepycat/b/i/c/ay;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/b/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/x;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/sleepycat/b/i/b/aa;->a:Lcom/sleepycat/b/i/b/x;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/ay;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sleepycat/b/i/b/aa;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->d:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/aa;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sleepycat/b/i/b/aa;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1660
    iget-object v1, p0, Lcom/sleepycat/b/i/b/aa;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/x;->d:Lcom/sleepycat/b/i/c/av;

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1665
    iget-object v1, p0, Lcom/sleepycat/b/i/b/aa;->j:Ljava/lang/String;

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1669
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/aa;->e()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

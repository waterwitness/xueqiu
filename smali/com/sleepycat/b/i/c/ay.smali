.class public abstract Lcom/sleepycat/b/i/c/ay;
.super Lcom/sleepycat/b/i/c/as;
.source "TextProtocol.java"


# instance fields
.field final synthetic f:Lcom/sleepycat/b/i/c/ap;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ay;->f:Lcom/sleepycat/b/i/c/ap;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/as;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ay;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    .line 1216
    iget-object v1, v1, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 747
    if-ne p0, p1, :cond_1

    .line 748
    const/4 v0, 0x1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    if-eqz p1, :cond_0

    .line 753
    instance-of v1, p1, Lcom/sleepycat/b/i/c/ay;

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    check-cast p1, Lcom/sleepycat/b/i/c/ay;

    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    .line 1230
    iget-object v0, v0, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 761
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

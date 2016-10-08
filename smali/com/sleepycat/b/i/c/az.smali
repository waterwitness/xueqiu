.class public abstract Lcom/sleepycat/b/i/c/az;
.super Lcom/sleepycat/b/i/c/as;
.source "TextProtocol.java"


# instance fields
.field final synthetic l:Lcom/sleepycat/b/i/c/ap;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/sleepycat/b/i/c/az;->l:Lcom/sleepycat/b/i/c/ap;

    .line 505
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/as;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 506
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/az;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    .line 1216
    iget-object v1, v1, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 519
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

    .line 524
    if-ne p0, p1, :cond_1

    .line 525
    const/4 v0, 0x1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    if-eqz p1, :cond_0

    .line 530
    instance-of v1, p1, Lcom/sleepycat/b/i/c/az;

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    check-cast p1, Lcom/sleepycat/b/i/c/az;

    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    .line 1230
    iget-object v0, v0, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 538
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

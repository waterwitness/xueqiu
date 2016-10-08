.class public Lcom/sleepycat/b/i/b/ah;
.super Lcom/sleepycat/b/i/c/ba;
.source "Protocol.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/ai;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/ba;-><init>(Ljava/lang/String;)V

    .line 706
    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Lcom/sleepycat/b/i/c/ba;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 698
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/ba;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Lcom/sleepycat/b/i/c/ba;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/b/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

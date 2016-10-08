.class public Lcom/sleepycat/b/i/c/a/m;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field protected final c:Ljava/lang/String;

.field final synthetic d:Lcom/sleepycat/b/i/c/a/d;


# virtual methods
.method public a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/m;->d:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->e:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/m;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/m;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/m;->c:Ljava/lang/String;

    return-object v0
.end method

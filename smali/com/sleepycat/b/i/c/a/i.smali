.class public Lcom/sleepycat/b/i/c/a/i;
.super Lcom/sleepycat/b/i/c/a/m;
.source "Protocol.java"


# instance fields
.field final a:Z

.field final synthetic b:Lcom/sleepycat/b/i/c/a/d;


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/i;->b:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->h:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/i;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sleepycat/b/i/c/a/i;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Lcom/sleepycat/b/i/c/a/m;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

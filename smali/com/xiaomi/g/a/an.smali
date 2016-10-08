.class public final Lcom/xiaomi/g/a/an;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/apache/a/b;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/a/g;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/a/f;

    new-instance v0, Lorg/apache/a/b/o;

    array-length v2, p1

    invoke-direct {v0, v2}, Lorg/apache/a/b/o;-><init>(I)V

    invoke-direct {v1, v0}, Lorg/apache/a/f;-><init>(Lorg/apache/a/b/j;)V

    .line 1000
    :try_start_0
    iget-object v0, v1, Lorg/apache/a/f;->b:Lorg/apache/a/c/c;

    .line 2000
    array-length v2, p1

    .line 3000
    iput-object p1, v0, Lorg/apache/a/c/c;->a:[B

    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/a/c/c;->b:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Lorg/apache/a/c/c;->c:I

    .line 1000
    iget-object v0, v1, Lorg/apache/a/f;->a:Lorg/apache/a/b/h;

    invoke-interface {p0, v0}, Lorg/apache/a/b;->a(Lorg/apache/a/b/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/apache/a/f;->a:Lorg/apache/a/b/h;

    invoke-virtual {v0}, Lorg/apache/a/b/h;->r()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lorg/apache/a/f;->a:Lorg/apache/a/b/h;

    invoke-virtual {v1}, Lorg/apache/a/b/h;->r()V

    throw v0
.end method

.method public static a(Lorg/apache/a/b;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/a/b",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/a/h;

    new-instance v2, Lorg/apache/a/b/b;

    invoke-direct {v2}, Lorg/apache/a/b/b;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/a/h;-><init>(Lorg/apache/a/b/j;)V

    invoke-virtual {v1, p0}, Lorg/apache/a/h;->a(Lorg/apache/a/b;)[B
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

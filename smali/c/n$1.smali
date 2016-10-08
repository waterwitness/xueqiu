.class final Lc/n$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/n;->b()Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic a:Lc/n;


# direct methods
.method constructor <init>(Lc/n;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lc/n$1;->a:Lc/n;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    invoke-virtual {v0}, Lc/n;->close()V

    .line 190
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    .line 3023
    iget-boolean v0, v0, Lc/n;->c:Z

    .line 183
    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    invoke-virtual {v0}, Lc/n;->flush()V

    .line 186
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/n$1;->a:Lc/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    .line 1023
    iget-boolean v0, v0, Lc/n;->c:Z

    .line 170
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    iget-object v0, v0, Lc/n;->a:Lc/d;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lc/d;->a(I)Lc/d;

    .line 172
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    invoke-virtual {v0}, Lc/n;->q()Lc/e;

    .line 173
    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    .line 2023
    iget-boolean v0, v0, Lc/n;->c:Z

    .line 176
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    iget-object v0, v0, Lc/n;->a:Lc/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d;->b([BII)Lc/d;

    .line 178
    iget-object v0, p0, Lc/n$1;->a:Lc/n;

    invoke-virtual {v0}, Lc/n;->q()Lc/e;

    .line 179
    return-void
.end method

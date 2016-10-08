.class Lorg/apache/http/impl/conn/LoggingOutputStream;
.super Ljava/io/OutputStream;
.source "LoggingOutputStream.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/http/impl/conn/Wire;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    .line 49
    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[close] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->output(Ljava/lang/String;)V

    .line 100
    throw v0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[flush] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->output(Ljava/lang/String;)V

    .line 90
    throw v0
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/Wire;->output(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[write] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->output(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public write([B)V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/Wire;->output([B)V

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[write] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->output(Ljava/lang/String;)V

    .line 69
    throw v0
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/Wire;->output([BII)V

    .line 77
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingOutputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[write] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->output(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

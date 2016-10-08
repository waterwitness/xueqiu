.class Lorg/apache/http/impl/conn/LoggingInputStream;
.super Ljava/io/InputStream;
.source "LoggingInputStream.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/impl/conn/Wire;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    .line 50
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[available] I/O error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[close] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 141
    throw v0
.end method

.method public mark(I)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 123
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 56
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    const-string v2, "end of stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 61
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/Wire;->input(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[read] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 64
    throw v0
.end method

.method public read([B)I
    .locals 4

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 72
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    const-string v2, "end of stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-lez v0, :cond_0

    .line 75
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[read] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

.method public read([BII)I
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 88
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    const-string v2, "end of stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-lez v0, :cond_0

    .line 91
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[read] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 96
    throw v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Ljava/io/InputStream;->reset()V

    .line 128
    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingInputStream;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[skip] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 106
    throw v0
.end method

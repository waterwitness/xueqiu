.class public Lorg/apache/http/client/entity/DeflateInputStream;
.super Ljava/io/InputStream;
.source "DeflateInputStream.java"


# instance fields
.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    new-array v0, v2, [B

    .line 74
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 78
    if-ne v2, v7, :cond_0

    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to read the response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-array v3, v3, [B

    .line 85
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 89
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v5

    if-nez v5, :cond_3

    .line 90
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unable to read the response"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 122
    new-instance v0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 125
    :goto_1
    return-void

    .line 96
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-nez v6, :cond_3

    .line 102
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {v4, v0}, Ljava/util/zip/Inflater;->setInput([B)V
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    throw v0

    .line 107
    :cond_3
    if-ne v5, v7, :cond_4

    .line 108
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unable to read the response"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 116
    new-instance v3, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    new-instance v5, Ljava/util/zip/Inflater;

    invoke-direct {v5}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v3, v1, v5}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v3, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 206
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 180
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 189
    return-void
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

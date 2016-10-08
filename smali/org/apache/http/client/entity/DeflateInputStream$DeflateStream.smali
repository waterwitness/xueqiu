.class Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;
.super Ljava/util/zip/InflaterInputStream;
.source "DeflateInputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;->closed:Z

    .line 214
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;->closed:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;->closed:Z

    .line 222
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 223
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    goto :goto_0
.end method

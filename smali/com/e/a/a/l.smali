.class public final Lcom/e/a/a/l;
.super Ljava/lang/Object;
.source "MultipartFormEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final a:Lcom/e/a/a/a;

.field private final b:Lorg/apache/http/Header;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/e/a/a/a;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/e/a/a/l;->a:Lcom/e/a/a/a;

    .line 34
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/e/a/a/l;->b:Lorg/apache/http/Header;

    .line 35
    iput-wide p3, p0, Lcom/e/a/a/l;->c:J

    .line 36
    return-void
.end method


# virtual methods
.method public final consumeContent()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/e/a/a/l;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/e/a/a/l;->c:J

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/e/a/a/l;->b:Lorg/apache/http/Header;

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/e/a/a/l;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRepeatable()Z
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/e/a/a/l;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/e/a/a/l;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/e/a/a/l;->a:Lcom/e/a/a/a;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a;->a(Ljava/io/OutputStream;)V

    .line 81
    return-void
.end method

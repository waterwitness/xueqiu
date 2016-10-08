.class public final Lcom/xueqiu/android/base/b/k;
.super Ljava/lang/Object;
.source "ProgressiveEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private a:Lorg/apache/http/HttpEntity;

.field private b:Lcom/xueqiu/android/base/b/l;

.field private c:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/base/b/k;->c:I

    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/b/k;->b:Lcom/xueqiu/android/base/b/l;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->b:Lcom/xueqiu/android/base/b/l;

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/xueqiu/android/base/b/k;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xueqiu/android/base/b/k;->c:I

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b/k;->getContentLength()J

    .line 113
    :cond_0
    return-void
.end method

.method public final consumeContent()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 33
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k;->a:Lorg/apache/http/HttpEntity;

    new-instance v1, Lcom/xueqiu/android/base/b/k$a;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/b/k$a;-><init>(Lcom/xueqiu/android/base/b/k;Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 104
    return-void
.end method

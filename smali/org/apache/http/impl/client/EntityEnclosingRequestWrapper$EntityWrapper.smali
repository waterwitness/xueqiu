.class Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    .line 94
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 95
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 100
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 101
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 106
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    # setter for: Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 112
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 113
    return-void
.end method

.class Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/http/AsyncHttpClient;-><init>()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/paphone/extension/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    .prologue
    .line 149
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    # getter for: Lcom/pingan/paphone/extension/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->access$000(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/AsyncHttpClient;

    # getter for: Lcom/pingan/paphone/extension/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->access$000(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

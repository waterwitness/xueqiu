.class final Lcom/squareup/okhttp/RequestBody$2;
.super Lcom/squareup/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput-object p2, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public final writeTo(Lc/e;)V
    .locals 2

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$file:Ljava/io/File;

    invoke-static {v0}, Lc/m;->a(Ljava/io/File;)Lc/s;

    move-result-object v1

    .line 100
    invoke-interface {p1, v1}, Lc/e;->a(Lc/s;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

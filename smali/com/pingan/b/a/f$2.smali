.class final Lcom/pingan/b/a/f$2;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/pingan/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URI;

.field final synthetic b:Lcom/pingan/b/a/e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/pingan/b/a/j;

.field final synthetic e:[Lorg/apache/http/Header;

.field final synthetic f:Lorg/apache/http/HttpEntity;

.field final synthetic g:Lcom/pingan/b/a/f;


# direct methods
.method constructor <init>(Lcom/pingan/b/a/f;Ljava/net/URI;Lcom/pingan/b/a/e;Ljava/lang/String;Lcom/pingan/b/a/j;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/pingan/b/a/f$2;->g:Lcom/pingan/b/a/f;

    iput-object p2, p0, Lcom/pingan/b/a/f$2;->a:Ljava/net/URI;

    iput-object p3, p0, Lcom/pingan/b/a/f$2;->b:Lcom/pingan/b/a/e;

    iput-object p4, p0, Lcom/pingan/b/a/f$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/pingan/b/a/f$2;->d:Lcom/pingan/b/a/j;

    iput-object p6, p0, Lcom/pingan/b/a/f$2;->e:[Lorg/apache/http/Header;

    iput-object p7, p0, Lcom/pingan/b/a/f$2;->f:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/16 v1, 0x50

    const/4 v8, 0x0

    .line 153
    iget-object v0, p0, Lcom/pingan/b/a/f$2;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/pingan/b/a/m;->a:I

    const/16 v1, -0x3ec

    if-eq v0, v1, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/a/f$2;->b:Lcom/pingan/b/a/e;

    invoke-interface {v0, p1, p2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/pingan/b/a/f$2;->a:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pingan/b/a/f$2;->c:Ljava/lang/String;

    const/16 v4, 0x50

    iget-object v5, p0, Lcom/pingan/b/a/f$2;->a:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/pingan/b/a/f$2;->a:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    new-instance v6, Lcom/pingan/b/a/l;

    iget-object v0, p0, Lcom/pingan/b/a/f$2;->b:Lcom/pingan/b/a/e;

    iget-object v1, p0, Lcom/pingan/b/a/f$2;->d:Lcom/pingan/b/a/j;

    invoke-direct {v6, v2, v0, v1}, Lcom/pingan/b/a/l;-><init>(Ljava/lang/String;Lcom/pingan/b/a/e;Lcom/pingan/b/a/j;)V

    .line 164
    iget-object v0, p0, Lcom/pingan/b/a/f$2;->g:Lcom/pingan/b/a/f;

    .line 1023
    iget-object v0, v0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    .line 164
    iget-object v3, p0, Lcom/pingan/b/a/f$2;->e:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/pingan/b/a/f$2;->f:Lorg/apache/http/HttpEntity;

    move-object v1, v8

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/b/a/a;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

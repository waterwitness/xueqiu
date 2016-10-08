.class final Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;
.super Ljava/lang/Thread;
.source "AsyncHttpPostRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tauth/http/AsyncHttpPostRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/http/AsyncHttpPostRunner;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Bundle;

.field private final synthetic e:Lcom/tencent/tauth/http/IRequestListener;

.field private final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/http/AsyncHttpPostRunner;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->a:Lcom/tencent/tauth/http/AsyncHttpPostRunner;

    iput-object p2, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->e:Lcom/tencent/tauth/http/IRequestListener;

    iput-object p6, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->f:Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->d:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/tencent/tauth/http/ClientHttpRequest;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->e:Lcom/tencent/tauth/http/IRequestListener;

    iget-object v2, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/http/IRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->e:Lcom/tencent/tauth/http/IRequestListener;

    iget-object v2, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/http/IRequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->e:Lcom/tencent/tauth/http/IRequestListener;

    iget-object v2, p0, Lcom/tencent/tauth/http/AsyncHttpPostRunner$1;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/http/IRequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0
.end method

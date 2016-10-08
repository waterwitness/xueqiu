.class public Lcom/tencent/tauth/http/AsyncHttpRequestRunner;
.super Ljava/lang/Object;
.source "AsyncHttpRequestRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V
    .locals 6

    .prologue
    .line 11
    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tauth/http/AsyncHttpRequestRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/tauth/http/AsyncHttpRequestRunner$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tauth/http/AsyncHttpRequestRunner$1;-><init>(Lcom/tencent/tauth/http/AsyncHttpRequestRunner;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lcom/tencent/tauth/http/AsyncHttpRequestRunner$1;->start()V

    .line 62
    return-void
.end method

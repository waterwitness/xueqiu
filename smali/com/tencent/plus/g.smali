.class final Lcom/tencent/plus/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->m(Lcom/tencent/plus/ImageActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->n(Lcom/tencent/plus/ImageActivity;)V

    .line 783
    :cond_0
    return-void
.end method


# virtual methods
.method public final onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 754
    const/4 v1, -0x1

    .line 756
    :try_start_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 757
    if-nez v1, :cond_1

    .line 758
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    iget-object v2, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/plus/a;

    invoke-direct {v3, p0, v0}, Lcom/tencent/plus/a;-><init>(Lcom/tencent/plus/g;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    iget-object v0, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "10659"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    if-eqz v1, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 775
    :cond_0
    return-void

    .line 767
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/plus/g;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "10661"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 789
    return-void
.end method

.method public final onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 811
    return-void
.end method

.method public final onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 750
    return-void
.end method

.method public final onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 745
    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 740
    return-void
.end method

.method public final onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 806
    return-void
.end method

.method public final onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 795
    return-void
.end method

.method public final onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/tencent/plus/g;->a()V

    .line 800
    return-void
.end method

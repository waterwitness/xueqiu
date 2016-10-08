.class public final Lcom/xueqiu/android/base/b/j;
.super Lcom/android/volley/toolbox/h;
.source "OkHttpHurlStack.java"


# instance fields
.field private final a:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/b/j;-><init>(Lcom/squareup/okhttp/OkUrlFactory;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/OkUrlFactory;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/volley/toolbox/h;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/base/b/j;->a:Lcom/squareup/okhttp/OkUrlFactory;

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/base/b/j;->a:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkUrlFactory;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/b/j$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/j$1;-><init>(Lcom/xueqiu/android/base/b/j;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/j;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/base/b/j;->a:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkUrlFactory;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/base/b/j;->a:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkUrlFactory;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/base/b/j;->a:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 66
    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

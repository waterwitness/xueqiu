.class public final Lcom/xueqiu/android/base/b/w;
.super Lcom/xueqiu/android/base/b/v;
.source "SNBHttpURLConnectionApiForWebView.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/base/b/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final varargs a(Ljava/net/HttpURLConnection;[Lorg/apache/http/NameValuePair;)V
    .locals 5

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/b/v;->a(Ljava/net/HttpURLConnection;[Lorg/apache/http/NameValuePair;)V

    .line 21
    const-string v0, "Cookie"

    const-string v1, "domain=%s;xq_a_token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "xueqiu.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v4

    .line 1182
    iget-object v4, v4, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 21
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

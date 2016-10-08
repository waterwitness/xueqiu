.class final Lcom/xueqiu/android/base/b/j$1;
.super Ljava/lang/Object;
.source "OkHttpHurlStack.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/j;-><init>(Lcom/squareup/okhttp/OkUrlFactory;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/j;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/base/b/j$1;->a:Lcom/xueqiu/android/base/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/xueqiu/android/base/util/ac;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    sget-object v1, Lcom/xueqiu/android/base/b/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "xueqiu.yun.pingan.com"

    .line 45
    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    goto :goto_0
.end method

.class final Lcom/xueqiu/android/base/b/v$1;
.super Ljava/lang/Object;
.source "SNBHttpURLConnectionApi.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/v;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/v;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/v;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/xueqiu/android/base/b/v$1;->a:Lcom/xueqiu/android/base/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/xueqiu/android/base/util/ac;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    goto :goto_0
.end method

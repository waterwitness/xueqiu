.class Lcom/pingan/paphone/extension/http/MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "MySSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/paphone/extension/http/MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/pingan/paphone/extension/http/MySSLSocketFactory;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/pingan/paphone/extension/http/MySSLSocketFactory$1;->this$0:Lcom/pingan/paphone/extension/http/MySSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    const-string v0, "SSL"

    const-string v1, "checkClientTrusted----1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    const-string v0, "SSL"

    const-string v1, "checkServerTrusted----2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 45
    const-string v0, "SSL"

    const-string v1, "getAcceptedIssuers----3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lorg/apache/cordova/CordovaWebView$2;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaWebView;
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/CordovaWebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$2;->c:Lorg/apache/cordova/CordovaWebView;

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebView$2;->a:Lorg/apache/cordova/CordovaWebView;

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$2;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->stopLoading()V

    .line 458
    const-string v0, "CordovaWebView"

    const-string v1, "CordovaWebView: TIMEOUT ERROR!"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$2;->c:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->b:Lorg/apache/cordova/l;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$2;->c:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->b:Lorg/apache/cordova/l;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$2;->a:Lorg/apache/cordova/CordovaWebView;

    const/4 v2, -0x6

    const-string v3, "The connection to the server was unsuccessful."

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebView$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/cordova/l;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    return-void
.end method

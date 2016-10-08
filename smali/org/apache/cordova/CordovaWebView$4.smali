.class final Lorg/apache/cordova/CordovaWebView$4;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaWebView;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/apache/cordova/CordovaWebView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/Runnable;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$4;->d:Lorg/apache/cordova/CordovaWebView;

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebView$4;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$4;->b:Lorg/apache/cordova/CordovaWebView;

    iput-object p4, p0, Lorg/apache/cordova/CordovaWebView$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$4;->d:Lorg/apache/cordova/CordovaWebView;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebView;->b(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$4;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 487
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$4;->b:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;)V

    .line 488
    return-void
.end method

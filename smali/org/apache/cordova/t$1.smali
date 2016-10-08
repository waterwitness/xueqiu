.class final Lorg/apache/cordova/t$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/t;
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/t;


# direct methods
.method constructor <init>(Lorg/apache/cordova/t;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/apache/cordova/t$1;->a:Lorg/apache/cordova/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/cordova/t$1;->a:Lorg/apache/cordova/t;

    iget-object v0, v0, Lorg/apache/cordova/t;->d:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->d(Lorg/apache/cordova/p;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/apache/cordova/t$1;->a:Lorg/apache/cordova/t;

    iget-object v0, v0, Lorg/apache/cordova/t;->d:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/t$1;->a:Lorg/apache/cordova/t;

    .line 1309
    iget-boolean v1, v1, Lorg/apache/cordova/t;->b:Z

    .line 314
    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setNetworkAvailable(Z)V

    .line 316
    :cond_0
    return-void
.end method

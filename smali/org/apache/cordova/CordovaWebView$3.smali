.class final Lorg/apache/cordova/CordovaWebView$3;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaWebView;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/apache/cordova/CordovaWebView;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;ILorg/apache/cordova/CordovaWebView;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$3;->e:Lorg/apache/cordova/CordovaWebView;

    iput p2, p0, Lorg/apache/cordova/CordovaWebView$3;->a:I

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$3;->b:Lorg/apache/cordova/CordovaWebView;

    iput p4, p0, Lorg/apache/cordova/CordovaWebView$3;->c:I

    iput-object p5, p0, Lorg/apache/cordova/CordovaWebView$3;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 469
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    iget v0, p0, Lorg/apache/cordova/CordovaWebView$3;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 471
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$3;->b:Lorg/apache/cordova/CordovaWebView;

    iget v0, v0, Lorg/apache/cordova/CordovaWebView;->c:I

    iget v1, p0, Lorg/apache/cordova/CordovaWebView$3;->c:I

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView$3;->b:Lorg/apache/cordova/CordovaWebView;

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebView;->b(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$3;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    :cond_0
    return-void

    .line 471
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 473
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

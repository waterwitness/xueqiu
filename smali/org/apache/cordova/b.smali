.class public final Lorg/apache/cordova/b;
.super Ljava/lang/Object;
.source "CallbackContext.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/cordova/CordovaWebView;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/cordova/b;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/apache/cordova/b;->b:Lorg/apache/cordova/CordovaWebView;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/apache/cordova/z;

    sget v1, Lorg/apache/cordova/aa;->b:I

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/z;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lorg/apache/cordova/z;

    sget v1, Lorg/apache/cordova/aa;->b:I

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/z;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V

    .line 82
    return-void
.end method

.method public final a(Lorg/apache/cordova/z;)V
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/cordova/b;->c:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "CordovaPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to send a second callback for ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/cordova/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nResult was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-exit p0

    .line 64
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-boolean v0, p1, Lorg/apache/cordova/z;->c:Z

    .line 60
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/cordova/b;->c:Z

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lorg/apache/cordova/b;->b:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lorg/apache/cordova/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/apache/cordova/CordovaWebView;->a(Lorg/apache/cordova/z;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class final Lorg/apache/cordova/m;
.super Ljava/lang/Object;
.source "ExposedJsApi.java"


# instance fields
.field private a:Lorg/apache/cordova/x;

.field private b:Lorg/apache/cordova/p;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/x;Lorg/apache/cordova/p;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/cordova/m;->a:Lorg/apache/cordova/x;

    .line 37
    iput-object p2, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    .line 38
    return-void
.end method


# virtual methods
.method public final exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    if-nez p4, :cond_0

    .line 45
    const-string v0, "@Null arguments."

    .line 63
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/p;->b(Z)V

    .line 51
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/h;->a:Ljava/lang/Thread;

    .line 53
    iget-object v0, p0, Lorg/apache/cordova/m;->a:Lorg/apache/cordova/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/cordova/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/cordova/p;->a(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/p;->b(Z)V

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v1, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/p;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/p;->b(Z)V

    throw v0
.end method

.method public final retrieveJsMessages(Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/p;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setNativeToJsBridgeMode(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/cordova/m;->b:Lorg/apache/cordova/p;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/p;->a(I)V

    .line 70
    return-void
.end method

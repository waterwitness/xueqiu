.class final Lorg/apache/cordova/v;
.super Lorg/apache/cordova/q;
.source "NativeToJsMessageQueue.java"


# instance fields
.field b:Ljava/lang/reflect/Method;

.field c:Ljava/lang/Object;

.field d:Z

.field final synthetic e:Lorg/apache/cordova/p;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/p;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lorg/apache/cordova/v;->e:Lorg/apache/cordova/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/q;-><init>(Lorg/apache/cordova/p;B)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/p;B)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/apache/cordova/v;-><init>(Lorg/apache/cordova/p;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 376
    iget-object v0, p0, Lorg/apache/cordova/v;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/cordova/v;->d:Z

    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lorg/apache/cordova/v;->e:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    .line 1350
    const-class v1, Landroid/webkit/WebView;

    .line 1352
    :try_start_0
    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1353
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1354
    iget-object v3, p0, Lorg/apache/cordova/v;->e:Lorg/apache/cordova/p;

    invoke-static {v3}, Lorg/apache/cordova/p;->b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1361
    :goto_0
    :try_start_1
    const-string v2, "mWebViewCore"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1362
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/v;->c:Ljava/lang/Object;

    .line 1365
    iget-object v0, p0, Lorg/apache/cordova/v;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lorg/apache/cordova/v;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sendMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Message;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/v;->b:Ljava/lang/reflect/Method;

    .line 1367
    iget-object v0, p0, Lorg/apache/cordova/v;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/v;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lorg/apache/cordova/v;->e:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->a(Lorg/apache/cordova/p;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    const/16 v2, 0xc2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    :try_start_2
    iget-object v1, p0, Lorg/apache/cordova/v;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/cordova/v;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 389
    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 1369
    :catch_1
    move-exception v0

    .line 1370
    iput-boolean v5, p0, Lorg/apache/cordova/v;->d:Z

    .line 1371
    const-string v1, "JsMessageQueue"

    const-string v2, "PrivateApiBridgeMode failed to find the expected APIs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 385
    :catch_2
    move-exception v0

    .line 386
    const-string v1, "JsMessageQueue"

    const-string v2, "Reflection message bridge failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

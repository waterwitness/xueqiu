.class final Lorg/apache/cordova/t;
.super Lorg/apache/cordova/q;
.source "NativeToJsMessageQueue.java"


# instance fields
.field b:Z

.field final c:Ljava/lang/Runnable;

.field final synthetic d:Lorg/apache/cordova/p;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/p;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lorg/apache/cordova/t;->d:Lorg/apache/cordova/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/q;-><init>(Lorg/apache/cordova/p;B)V

    .line 311
    new-instance v0, Lorg/apache/cordova/t$1;

    invoke-direct {v0, p0}, Lorg/apache/cordova/t$1;-><init>(Lorg/apache/cordova/t;)V

    iput-object v0, p0, Lorg/apache/cordova/t;->c:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/p;B)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lorg/apache/cordova/t;-><init>(Lorg/apache/cordova/p;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/cordova/t;->d:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->c(Lorg/apache/cordova/p;)Lorg/apache/cordova/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/t;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-boolean v0, p0, Lorg/apache/cordova/t;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/cordova/t;->b:Z

    .line 330
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/t;->b:Z

    .line 320
    iget-object v0, p0, Lorg/apache/cordova/t;->d:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setNetworkAvailable(Z)V

    .line 321
    return-void
.end method

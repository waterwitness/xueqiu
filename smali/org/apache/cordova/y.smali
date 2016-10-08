.class final Lorg/apache/cordova/y;
.super Lorg/apache/cordova/g;
.source "PluginManager.java"


# instance fields
.field final synthetic d:Lorg/apache/cordova/x;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/x;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lorg/apache/cordova/y;->d:Lorg/apache/cordova/x;

    invoke-direct {p0}, Lorg/apache/cordova/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/x;B)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lorg/apache/cordova/y;-><init>(Lorg/apache/cordova/x;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 443
    const-string v0, "startup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/apache/cordova/y;->d:Lorg/apache/cordova/x;

    invoke-static {v0}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 451
    iget-object v0, p0, Lorg/apache/cordova/y;->d:Lorg/apache/cordova/x;

    invoke-static {v0}, Lorg/apache/cordova/x;->b(Lorg/apache/cordova/x;)Lorg/apache/cordova/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/y$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/y$1;-><init>(Lorg/apache/cordova/y;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

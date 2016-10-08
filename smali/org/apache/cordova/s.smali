.class final Lorg/apache/cordova/s;
.super Lorg/apache/cordova/q;
.source "NativeToJsMessageQueue.java"


# instance fields
.field final b:Ljava/lang/Runnable;

.field final synthetic c:Lorg/apache/cordova/p;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/p;)V
    .locals 1

    .prologue
    .line 293
    iput-object p1, p0, Lorg/apache/cordova/s;->c:Lorg/apache/cordova/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/q;-><init>(Lorg/apache/cordova/p;B)V

    .line 294
    new-instance v0, Lorg/apache/cordova/s$1;

    invoke-direct {v0, p0}, Lorg/apache/cordova/s$1;-><init>(Lorg/apache/cordova/s;)V

    iput-object v0, p0, Lorg/apache/cordova/s;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/p;B)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lorg/apache/cordova/s;-><init>(Lorg/apache/cordova/p;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/cordova/s;->c:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->c(Lorg/apache/cordova/p;)Lorg/apache/cordova/f;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/s;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

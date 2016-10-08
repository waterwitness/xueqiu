.class final Lorg/apache/cordova/s$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/s;
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/s;


# direct methods
.method constructor <init>(Lorg/apache/cordova/s;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lorg/apache/cordova/s$1;->a:Lorg/apache/cordova/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/cordova/s$1;->a:Lorg/apache/cordova/s;

    iget-object v0, v0, Lorg/apache/cordova/s;->c:Lorg/apache/cordova/p;

    invoke-static {v0}, Lorg/apache/cordova/p;->a(Lorg/apache/cordova/p;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lorg/apache/cordova/s$1;->a:Lorg/apache/cordova/s;

    iget-object v1, v1, Lorg/apache/cordova/s;->c:Lorg/apache/cordova/p;

    invoke-static {v1}, Lorg/apache/cordova/p;->b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

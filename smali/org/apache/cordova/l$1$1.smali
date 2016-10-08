.class final Lorg/apache/cordova/l$1$1;
.super Ljava/lang/Object;
.source "CordovaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/l$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/l$1;


# direct methods
.method constructor <init>(Lorg/apache/cordova/l$1;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/cordova/l$1$1;->a:Lorg/apache/cordova/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/cordova/l$1$1;->a:Lorg/apache/cordova/l$1;

    iget-object v0, v0, Lorg/apache/cordova/l$1;->a:Lorg/apache/cordova/l;

    iget-object v0, v0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "spinner"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

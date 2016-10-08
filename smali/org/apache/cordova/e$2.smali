.class final Lorg/apache/cordova/e$2;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/e;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lorg/apache/cordova/e;


# direct methods
.method constructor <init>(Lorg/apache/cordova/e;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/cordova/e$2;->b:Lorg/apache/cordova/e;

    iput-object p2, p0, Lorg/apache/cordova/e$2;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/cordova/e$2;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 128
    return-void
.end method

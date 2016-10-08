.class final Lorg/apache/cordova/e$5;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/e;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lorg/apache/cordova/e;


# direct methods
.method constructor <init>(Lorg/apache/cordova/e;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/cordova/e$5;->b:Lorg/apache/cordova/e;

    iput-object p2, p0, Lorg/apache/cordova/e$5;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/cordova/e$5;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 170
    return-void
.end method
